process.env.NODE_CONFIG_DIR = "config/";
var app_instance = process.argv.NODE_APP_INSTANCE;
process.argv.NODE_APP_INSTANCE = "";
config = require("config");
process.argv.NODE_APP_INSTANCE = app_instance;

var app = require("express")();
global.app = app;
app.set("view engine", "ejs");

require("./middlewares");
require("./modules");

require("./services/startupService").initializer();
