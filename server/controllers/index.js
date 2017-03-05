//CONTROLLER
// a place to take user requests, bring data from the model and
// pass it back to the view

var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
      models.messages.get((err, results) => {
        // if (err) { throw err; }
        res.send(results);
      });
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      models.messages.post((req, results) => {
        var query
        var params = ;


      });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      models.users.get((err, results) => {
        console.log('RESULTS: ', results);
        res.send(results);
      });
    },
    post: function (req, res) {
      var params = [req.body.username];
      console.log('PARAMS of POST: ', params);
      models.users.post(params, (err, results) => {
        // if (err) { throw err; }
        res.sendStatus(201);
      });
    }
  }
};
