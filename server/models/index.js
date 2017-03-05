//MODELS
//a place to define data structures and methods to interact
// with your data store

var db = require('../db');

module.exports = {
  messages: {
    get: function () {

    }, // a function which produces all the messages
    post: function () {
      // mysql()
      connection.query(`insert into messages (text) values (${req.json.message})`, function (err, res) {
        if (err) {
          console.log('there was an error');
        } 
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (callback) {
      var queryStr = 'select * from users';
      connection.query(queryStr, function (err, results) {
        if (err) { throw err; }
        callback(err, results);
      });
    },
    post: function (params, callback) {
      var queryStr = 'insert into users (username) values (?)';
      connection.query(queryStr, function (err, results) {
        if (err) { throw err; }
        callback(err, results);
      });
    }
  }
};
