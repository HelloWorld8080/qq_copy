const path = require('path')
const dataSourcePath = path.join(__rootdir,'dataSource')
const dataSource = require(dataSourcePath)
console.log('dataSource',dataSource)
const pointModel = dataSource.model('Point',{
    p_id: {
        type: String,
        require: true
    },
    p_name: String
},'address_point')
module.exports = pointModel