var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
// var bodyParser = require('cookie-parser');
var logger = require('morgan');
var sequelize = require('./database/db')


var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
//pp.use(bodyParser.json());
//app.use(bodyParser.urlencoded({ extended : true}));
app.use(express.static(path.join(__dirname, 'public')));

// Rutas
app.use('/', indexRouter);
app.use('/users', usersRouter);


// Conexion a la base de datos
sequelize.sync().then(() => {
  console.log('Confirmando conexion desde la base de datos');

}).catch(error => {
  console.log('No se pudo conectar a la base de datos. Error', error)

})

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
