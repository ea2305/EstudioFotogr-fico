var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  	res.render('index', { title: 'Express' });
});

/* GET home page. */
router.get('/home', function(req, res, next) {
  res.render('home', { title: 'Home' });
});

//Post
router.post('/', function(req, res, next) {
	var msg = JSON.stringify(req.body)
	console.log( msg );
	res.send( msg );
  	//res.render('index', { title: 'Express' });
});



module.exports = router;
