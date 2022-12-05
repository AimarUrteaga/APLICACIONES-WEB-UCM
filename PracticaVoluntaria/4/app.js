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

app.use(bodyParser.urlencoded({extended:false}))

const ficherosEstaticos = path.join(__dirname, "public");
app.use(express.static(ficherosEstaticos));

app.set("view engine", "ejs")
app.set("views", path.join(__dirname, "views"))

app.get("/tasks",function(request, response){
    //responde.sendFile(ficherosEstaticos+"/views/tasks.ejs")
    daoT.getAllTasks("aitor.tilla@ucm.es",cb_getAllTasks)
    function cb_getAllTasks(err, result){
        if(err){
            console.log(err);   
        } else {
            //result.forEach(a=>console.log(a))
            response.status(200)
            response.render("tasks",{ taskList:result })
        } 
    }
    
})


app.post("/addTask",function(request, response){
    datos=utils.createTask(request.body.Tarea)
    daoT.insertTask("aitor.tilla@ucm.es", datos.text, datos.tags, anadido)
    function anadido(err, result){
        if(err){
            console.log(err)
        }
        response.redirect("/tasks")
    }
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
