var express = require('express');
const Equipo = require('../models/Equipos');
const Mantenimiento = require('../models/Mantenimiento');
const Users = require('../models/Users');
var router = express.Router();


/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: 'Express' });
});


// Anadir nuevo equipo a la base de datos y mostrar por pantalla los datos anadidos a la tabla


// router.get('/crearEquipo', function(req, res, next) {
//   Equipo.create({
//     nombre:"genius",
//     descripción:"teclado",
//     serial:"687654",
//     fecha_inicial_puesta_marcha:"20/09/20",
//     ultima_fecha_puesta_marcha:"06/02/16",
//     ultima_fecha_mantenimiento:"12/11/19",
//     id_ultimo_trabajo_mantenimiento:"6876975"
//   }).then (nombre =>  {
//     res.json(nombre )
//   })



// Anadir nuevo equipo a la base de datos y mostrar por pantalla los datos anadidos a la tabla

// router.get('/crearMtto', function (req, res, next) {
//   Mantenimiento.create({
//     id_mantenimineto:"6876975",
//     id_equipo:"687654",
//     fecha_planificada_mantenimiento:"08/11/19",
//     fecha_inicio_mantenimiento:"08/11/19",
//     fecha_final_mantenimiento:"12/11/19",
//     estatus_mantenimiento:"exitoso",
//      tipoMantenimiento:"preventivo"
//   }).then(nombre => {
//     res.json(nombre)
//   })
// });


// Anadir nuevo usuario a la base de datos y mostrar por pantalla los datos anadidos a la tabla

// router.get('/crearUsuario', function (req, res, next) {
//   Users.create({
//     nombre:"Juan",
//     apellido:"Ocanto",
//     usuario:"MagicDonkey",
//     contrasena:"MathIsC00L",
//     rol: 'personal'
//   }).then(nombre => {
//     res.json(nombre)
//   })
// });



// Mostrar lista de equipos en pantalla
router.get('/ListaEquipos', function (req, res, next) {
  Equipo.findAll().then( Equipo => {
    res.json(Equipo)
  })
});

// Mostrar lista de mantenimientos en pantalla
router.get('/ListaMtto', function (req, res, next) {
  Mantenimiento.findAll().then( Mantenimiento => {
    res.json(Mantenimiento)
  })
});

// Mostrar lista de usuarios en pantalla
router.get('/ListaUsuarios', function (req, res, next) {
  Users.findAll().then( Users => {
    res.json(Users)
  })
});





module.exports = router;
