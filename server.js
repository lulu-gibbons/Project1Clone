require("dotenv").config();

var express = require("express");
var exphbs = require("express-handlebars");

var db = require("./models");
var fileUpload = require("express-fileupload");
var app = express();
var PORT = process.env.PORT || 8081;

//image express fileupload
app.use(fileUpload());

// Middleware
app.use(
  express.urlencoded({
    extended: true
  })
);
app.use(express.json());

//Static Directory
app.use(express.static("public"));

// Handlebars
app.engine(
  "handlebars",
  exphbs({
    defaultLayout: "main"
  })
);
app.set("view engine", "handlebars");

// Routes
require("./routes/ingredient-api-routes")(app);
require("./routes/recipe-api-routes")(app);
require("./routes/htmlRoutes")(app);

var syncOptions = {
  force: false
};

// If running a test, set syncOptions.force to true
// clearing the `testdb`
if (process.env.NODE_ENV === "test") {
  syncOptions.force = true;
}

// Starting the server, syncing our models ------------------------------------/
db.sequelize
  .sync({
    syncOptions
  })
  .then(function() {
    app.listen(PORT, function() {
      console.log("App listening on PORT " + PORT);
    });
  });

module.exports = app;
