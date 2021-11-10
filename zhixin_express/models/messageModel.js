const { NativeDate } = require('mongoose')
const path = require('path')
const dataSourcePath = path.join(__rootdir,'dataSource')
const dataSource = require(dataSourcePath)
console.log('dataSource',dataSource)
const messageModel = dataSource.model('Message',{
    id: {
        type: String,
        require: true
    },
    label: String,
    role:String,
    username:String,
    info:Object,
    from:String,
    to:String,
    send_time: Date,
    s_id:String
},'message')
module.exports = messageModel