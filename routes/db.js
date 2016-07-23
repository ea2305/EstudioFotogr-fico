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

	var nivel = req.body.nivel || 0;
	var statement = 'CALL insert_user("' + req.body.dni +
				'","' + req.body.nombre + 
				'","' + req.body.direccion +
				'","' + req.body.poblacion + 
				'",'  + req.body.telefono + 
				','   + nivel + ')';

	database.query(statement,(err) => {
		if(!err){
			console.log("Insert was success [ok]");
			res.send( "Datos registrados" );
		}else{
			console.log("Insert was bad [error]");
			res.send( "Error" );
		}
	});
	
  	//res.render('index', { title: 'Express' });
});


module.exports = router;
