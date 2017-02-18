(function() {

'use strict';

var express 	= require('express'),
	bodyParser	= require('body-parser'),
	multer		= require('multer'),
	upload 		= multer({ storage: multer.memoryStorage() }),
	app 		= express(),
	fs 			= require('fs'),
	mysql 		= require('mysql'),
	axios		= require('axios');

require('dotenv').config();

var connection = mysql.createConnection({
	host: process.env.HOST,
	user: process.env.USERNAME,
	password: process.env.PASSWORD,
	database: process.env.DATABASE
});

connection.connect();

app.use(bodyParser.urlencoded({extended: true}));

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

app.post('/form', upload.array('resume', 12), function(req, res){
	connection.query('insert into form(nim, nama) values("' + req.body.nim_hidden + '", "' + req.body.nama_hidden + '");', function(error, result, forms){
		if (error) {
			res.status(500).send(error);
		}

		let results = {
			'status': 'SUCCESS_POST',
			'message': 'OK',
			'data': null
		}

		fs.writeFile('uploads/' + req.body.nim_hidden, req.files[0].buffer, function(err){
			if (err) {
				res.status(500).send(error);
			}
		});

	});
});

app.get('/nim/:nim', function(req, res){
	connection.query('select * from mahasiswa where nim = "' + req.params.nim + '"', function(error, result){
		if (!result.length) {
			res.send({error: "data not found"});
		}else{
			res.send(result[0]);
		}
	});
});

app.listen(4000, function(){
	console.log('jangar apps on port 4000');
});

})();