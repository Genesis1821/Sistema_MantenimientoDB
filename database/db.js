const { Sequelize } = require('sequelize')
const { database} =  require('../config')

const sequelize = new Sequelize ( 'smao', 'root', '',  {
    host: 'localhost',
    dialect:'mysql'
    }    )

module.exports = sequelize