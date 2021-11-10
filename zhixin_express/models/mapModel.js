const path = require('path')
const dataSourcePath = path.join(__rootdir,'dataSource')
const dataSource = require(dataSourcePath)
console.log('dataSource',dataSource)
const mapModel = dataSource.model('Map',{
    from: {
        type: String,
        require: true
    },
    to: String
},'map')
module.exports = mapModel