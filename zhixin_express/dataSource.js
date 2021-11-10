const mongoose = require('mongoose')
const dataSource = require('./dbProperty')
//没有密码用户名
//mongoose.connect('mongodb://localhost:27017/zhixin')
mongoose.connect(`mongodb://${dataSource.username}:${dataSource.password}@${dataSource.host}/${dataSource.dbname}`)
module.exports = mongoose