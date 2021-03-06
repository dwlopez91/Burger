var connection = require("./connection.js");

var orm = {
    all: function(tableInput, cb) {
      var queryString = "SELECT * FROM " + tableInput + ";";
      connection.query(queryString, function(err, result) {
        if (err) {
          throw err;
        }
        cb(result);
      });
    },

    update: function(tableInput, condition, cb) {
      connection.query("UPDATE " + tableInput + "SET devoured = true WHERE id=" + condition +";"), 
      function(err, result) {
        if (err) {
          throw err;
        }
        cb(result);
    }
  }
}

module.exports = orm;
