var express = require('express');
var router  = express.Router();
var mysql = require('mysql'); //FUNCIONES DE MYSQL

var database = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',// IMPORTANTE CAMBIA A CONFIGURACION DE EQUIPO
  database : 'estudio'
});

database.connect();

//Post
router.post('/insert-user', function(req, res, next) {

	var E = req.body;//Reneme object
	var nivel = E.nivel || 0;

	//Creacion de sentencia
	var statement = 'CALL insert_user(?,?,?,?,?,?)';
	//Envio de paquetes de remplazo en statement por ?
	var data_set = [E.dni,E.nombre,E.direccion,E.poblacion,E.telefono,nivel];

	database.query(statement, data_set ,(err, rows, fields) => {
		if(!err){
			console.log("Insert was success [ok]");
			console.log( rows );
			res.send( "Datos registrados" );
		}else{
			console.log("Insert was bad [error]");
			res.send( "Error" );
		}
	});
});


//Post
router.post('/insert-report', function(req, res, next) {

	var E = req.body;//Renombramiento
	var nivel = req.body.nivel || 0;

	//Conversion para formato en la base de datos
	var new_date = new Date(req.body.fecha_entrega).toISOString();
	var statement = 'CALL make_report(?,?,?,?,?,?,?,?)';
	var data_set = [E.codigo,E.titulo,E.fotografo,E.num_fotos,nivel,E.tematica,new_date,E.precio]

	database.query(statement,data_set,(err, rows, fields) => {
		if(!err){
			console.log("Insert was success [ok]");
			console.log( rows );
			res.send( "Datos registrados" );
		}else{
			console.log(err);
			console.log("Insert was bad [error]");
			res.send( "Error" );
		}
	});
});

module.exports = router;
