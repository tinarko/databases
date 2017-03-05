//DATABASE
var mysql = require('mysql');

//connects to SQL

// https://www.npmjs.com/package/mysql#introduction

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".

var connection = mysql.createConnection({
  // host: 'localhost',
  user: 'root',
  password: '',
  database: 'chat'
});
 
// module.exports.connection.connect();
connection.connect();


// module.exports.connection.end();
connection.end();