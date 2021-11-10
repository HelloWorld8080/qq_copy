const { NativeDate } = require('mongoose')
const path = require('path')
const dataSourcePath = path.join(__rootdir,'dataSource')
const dataSource = require(dataSourcePath)
console.log('dataSource',dataSource)
const sessionModel = dataSource.model('Session',{
    s_id:String,
    from:String,
    to:String,
},'session')
module.exports = sessionModel