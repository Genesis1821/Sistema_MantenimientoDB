'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Admin extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Admin.init({
    nombre: DataTypes.STRING,
    descripcion: DataTypes.STRING,
    serial: DataTypes.STRING,
    fechaInicioM: DataTypes.DATE,
    fechaFinLM: DataTypes.DATE,
    fechaFinD: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'Admin',
  });
  return Admin;
};