const { Sequelize, Model, DataTypes } = require('sequelize');
const sequelize = require('../database/db')

class Mantenimiento extends Model { }
Mantenimiento.init({
    id_mantenimiento: DataTypes.STRING,
    id_equipo: DataTypes.STRING,
    fecha_planificada_mantenimiento: DataTypes.STRING,
    fecha_inicio_mantenimiento: DataTypes.STRING,
    fecha_final_mantenimiento: DataTypes.STRING,
    estatus_mantenimiento: DataTypes.STRING,
    tipoMantenimiento: DataTypes.STRING,
}, { sequelize, modelName: 'Mantenimientos' });

module.exports = Mantenimiento
