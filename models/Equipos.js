const { Sequelize, Model, DataTypes } = require('sequelize');
const sequelize = require('../database/db')

class Equipo extends Model { }
Equipo.init({
    nombre: DataTypes.STRING,
    descripción: DataTypes.STRING,
    serial: DataTypes.STRING,
    fecha_inicial_puesta_marcha: DataTypes.STRING,
    ultima_fecha_puesta_marcha: DataTypes.STRING,
    ultima_fecha_mantenimiento: DataTypes.STRING,
    nombre: DataTypes.STRING,
}, { sequelize, modelName: 'Equipo' });

module.exports = Equipo
