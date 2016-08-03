var express = require('express');
var mysql = require('mysql');
var app = express();
app.listen(3000);
app.use(express.static('public'));
app.get('/', function(req, res) {
  res.sendFile('index.html', {
    root: __dirname_ + '/public/'
  });
});

app.get('/menuPage?*', function(req, res) {
  var perPage = req.query.perPage;
  var currentPage = req.query.currentPage;
  var beginIndex = (currentPage - 1) * currentPage + 1;
  var data = {};
  query(beginIndex, perPage, data, res, queryCount);
});

var query = function(beginIndex, perPage, data, res, queryCount) {
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'shop-admin'
  });
  connection.connect();
  connection.query('SELECT * from sys_menu limit ' + beginIndex + ',' +
    perPage,
    function(err, rows, fields) {
      data['items'] = rows;
      queryCount(data, res);
    });
  connection.end();
}

var queryCount = function(data, res) {
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'shop-admin'
  });
  connection.connect();
  connection.query('SELECT count(id) as "total" from sys_menu',
    function(err, rows, fields) {
      console.log(rows[0]['total']);
      data['total'] = rows[0]['total'];
      res.send(data);
    });
  connection.end();
}
