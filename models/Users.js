const { Sequelize, Model, DataTypes } = require('sequelize');
const sequelize = require('../database/db')

class Users extends Model { }
Users.init({
    nombre: DataTypes.STRING,
    apellido: DataTypes.STRING,
    usuario: DataTypes.STRING,
    contrasena: DataTypes.STRING,
    rol: DataTypes.STRING
}, { sequelize, modelName: 'Usuarios' });

module.exports = Users