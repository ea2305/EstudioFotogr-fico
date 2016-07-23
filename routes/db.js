var express = require('express');
var router = express.Router();

//Post
router.post('/insert-user', function(req, res, next) {
	var msg = JSON.stringify(req.body)
	console.log( msg );
	res.send( msg );
  	//res.render('index', { title: 'Express' });
});


module.exports = router;
