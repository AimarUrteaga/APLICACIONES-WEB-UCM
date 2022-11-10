// app.js
const config = require("./config");
const DAOTasks = require("./DAOTasks");
const utils = require("./utils");
const path = require("path");
const mysql = require("mysql");
const express = require("express");
const bodyParser = require("body-parser");
const fs = require("fs");
const { response } = require("express");
// Crear un servidor Express.js
const app = express();
// Crear un pool de conexiones a la base de datos de MySQL
const pool = mysql.createPool(config.mysqlConfig);
// Crear una instancia de DAOTasks
const daoT = new DAOTasks(pool);

const ficherosEstaticos = path.join(__dirname, "public");
app.use(express.static(ficherosEstaticos));
app.set("view engine", "ejs")
app.set("views", path.join(__dirname, "views"))
//let taskList = getAllTasks("aitor.tilla@ucm.es")
function callBacTarea ()
app.get("/",function(request, response){
    //responde.sendFile(ficherosEstaticos+"/views/tasks.ejs")
    response.status(200)
    response.render("tasks",{  })
})

// Arrancar el servidor
app.listen(config.port, function(err) {
 if (err) {
 console.log("ERROR al iniciar el servidor");
 }
 else {
 console.log(`Servidor arrancado en el puerto ${config.port}`);
 }
});
