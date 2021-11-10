var express = require('express');
var router = express.Router();
const messageModel = require(__rootdir+'/models/messageModel')
const sessionModel = require(__rootdir+'/models/sessionModel')

router.get('/messages', function(req, res, next) {
  res.setHeader('Access-Control-Allow-Origin','*')
  const {from,to}=req.query
  
  // messageModel.find({$or:[{from:to},{to:to}]},(err,data)=>{
  //   for(let i in data){
  //     let item = data[i]
  //     if(data[i].from==from && data[i].to==from){}
  //   }
  //   const sdata = [
  //     {
  //       s_id:'fds'
  //     }
  //   ]
  //   res.send(data)
  // })
    messageModel.aggregate([
      {
        $lookup:{
          from:'user',
          localField:'to',
          foreignField:'u_id',
          as:'to_item'
        }
      },
      {
        $lookup:{
          from:'user',
          localField:'from',
          foreignField:'u_id',
          as:'from_item'
        }
      },
      {
        $match:{$or:[{from:to},{to:to}]}
      },
    ],(err,data)=>{
      let ts = []
      var tdata=[]
      // data.sort((a,b)=>{
      //   a.send_time.getTime()>b.send_time.getTime()
      // })
      data.forEach((ditem,index)=>{
        if(ts.indexOf(ditem.s_id)===-1 &&ts.push(ditem.s_id)){
          tdata.push(ditem)
        }
      })
      res.send(tdata)
    })
});
router.get('/session', function(req, res, next) {
  res.setHeader('Access-Control-Allow-Origin','*')
  const {from,to}=req.query
  
  // messageModel.find({$or:[{from:to},{to:to}]},(err,data)=>{
  //   for(let i in data){
  //     let item = data[i]
  //     if(data[i].from==from && data[i].to==from){}
  //   }
  //   const sdata = [
  //     {
  //       s_id:'fds'
  //     }
  //   ]
  //   res.send(data)
  // })
    sessionModel.aggregate([
      {
        $lookup:{
          from:'message',
          localField:'s_id',
          foreignField:'s_id',
          as:'messages'
        }
      },
      {
        $lookup:{
          from:'user',
          localField:'to',
          foreignField:'u_id',
          as:'to_item'
        }
      },{
        $lookup:{
          from:'user',
          localField:'from',
          foreignField:'u_id',
          as:'from_item'
        }
      },
      {
        $match:{to:to}
      },
    ],(err,data)=>{
      // data.forEach(item=>{
      //   item.messages.sort((a,b)=>{
      //     return b.send_time.getTime()-a.send_time.getTime()
      //   })
      // })
      res.send(data)
    })
});
router.post('/addInfo', function(req, res, next) {
    res.setHeader('Access-Control-Allow-Origin','*')
    req.on('data',(data)=>{
      console.log('req.data',data)
      // let from=req.query.from
      // messageModel.findOneAndUpdate({from:from},{$set:{info:JSON.parse(data)}},{},(err,data)=>{
      //   if(err){
      //     res.send('500')
      //   }else{
      //     res.send('200')
      //   }
      // })
      var message = new messageModel(JSON.parse(data))
      message.save((err)=>{
        if(!err){
          res.send('200')
        }else{
          res.send('500')
        }
      })
      // id=messageModel.insertOne(JSON.parse(data))
      // if(id){
      //   res.send('200')
      // }else{
      //   res.send('500')
      // }
    })
  });
module.exports = router;
