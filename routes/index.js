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

/* GET home page. */
router.get('/fotografo-form', function(req, res, next) {
  res.render('fotografoForm', { title: 'Formulario Fotografo' });
});

// /* GET home page. */
// router.get('/reportaje-concluido', function(req, res, next) {
//   res.render('reportComplet', { title: 'Formulario Reportajes' });
// });

module.exports = router;