var express = require('express');
var router = express.Router();
const pointModel = require(__rootdir+'/models/pointModel')
const mapModel = require(__rootdir+'/models/mapModel')
console.log('pointModelandmapModel',pointModel,mapModel)
var g={}
router.get('/points', function(req, res, next) {
  res.setHeader('Access-Control-Allow-Origin','*')
  pointModel.find({},(err,data)=>{
    res.send(data)
  })

});
router.get('/map', function(req, res, next) {
    
    // res.render('index', { title: 'Express' });
});
async function search(qfrom,qto){
  
  var paths=[]
  // console.log('g',g,pdata)
  // var tmapdata= await mapModel.aggregate([
  //   {
  //     $lookup:{
  //       from: 'road',
  //       localField:'type_id',
  //       foreignField:'r_id',
  //       as:'type_items',
  //     }
  //   },{
  //     $match:{

  //     }
  //   }
  // ])
  var mapdata = await mapModel.find({})
  mapdata.forEach((item,index)=>{
    // console.log('item',item.from)
    g[item.from].push({...item._doc})
  })
  console.log('g',g)
  var vis= {}
  vis[qfrom] = true
  var stack=[]
  var dfs=(from)=>{
    // console.log(from,stack,g[from])
    if(from == qto) {
      paths.push({...stack})
      stack.length!=0 && stack.pop()
      vis[from]=false
      return
    }      
    for(let i =0; i< g[from].length;i++){
      let nextnode =g[from][i]
      
      if(!vis[nextnode.to]){
        vis[nextnode.to]=true
        stack.push(nextnode)
        dfs(nextnode.to)
      }
    }
    stack.pop()
    vis[from]=false
  }
  dfs(qfrom)
    // console.log('mapModel',paths)
  return paths
}
router.get('/search',async function(req,res,next){
  var map = {}
  var pdata= await pointModel.find({})
  pdata.forEach(item=>{
    g[item.p_id] = []
    map[item.p_name] = item.p_id
  })
  var paths = await search(map[req.query.from],map[req.query.to])
  res.send(paths) 
})
module.exports = router;
