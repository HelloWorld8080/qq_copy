var express = require('express');
var router = express.Router();
const pointModel = require(__rootdir+'/models/pointModel')

/* GET home page. */
router.get('/points', function(req, res, next) {
  pointModel.find({},(err,data)=>{
    res.send(data)
  })
  // res.render('index', { title: 'Express' });
});

module.exports = router;
