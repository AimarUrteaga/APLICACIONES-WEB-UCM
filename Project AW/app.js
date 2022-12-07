"use strinct"
const path = require("path")
const express = require("express")
const { dirname } = require("path")
const bodyParser = require("body-parser");

//vase de datos
const DAO_UCM_CAU = require("./DAO_UCM_CAU")
const config = require("./config")
const mysql = require("mysql")
const dao = new DAO_UCM_CAU(mysql.createPool(config.mysqlConfig))

//Renderizar pajina
const app = express()
app.set('view engine', 'ejs')
app.set('views',path.join(__dirname, 'views'))

//req.body
app.use(bodyParser.urlencoded({extended:false}))

//fichero estaticos
const FicherosEstaticos = path.join(__dirname, 'public')
app.use(express.static(FicherosEstaticos))

//validatos
//const expressValidator = require("express-validator");
//app.use(expressValidator());
//const { body, validationResult } = require('express-validator');

//imajenes
const multer = require("multer");
const multerFactory = multer({storage:multer.memoryStorage()});

app.get("/",function(req, res){
    res.status(200)
    res.render("PaginaPrincipal")
})

app.get("/CreacionCuenta",function(req, res){
    res.status(200)
    res.render("CreacionCuenta")
})

app.get("/Tecnico", function(req, res){
    res.status(200)
    res.render('PerfilTecnico')
})

app.get('/Usuario', function (req, res) {
  res.status(200)
  res.render('PerfilUsuario')
})

app.post("/procesarCrearCuenta",
multerFactory.single('foto'),
//check(req.body.correo, "Correo Electronico no valido").matches(/^[A-Za-z0-9_.-]+@ucm.es/),
function(req,res){
    
    NumEmpleado = null
    if (req.body.NumEmpleado!==""){
        NumEmpleado = req.body.NumEmpleado;
    }
    if (req.file){
        foto=req.file.buffer
    }

    dao.andirUruario(req.body.correo, req.body.NombreMostrar, req.body.contr1, req.body.Rol, null, NumEmpleado, 
        function (error, buelta){
            if (error){
                console.log(error)
            }else{
                console.log(buelta)
                res.redirect("/")
            }
        }
    )
    
    //res.end(req.file.buffer)
    //res.end('Procesando formulario ' + isCorreo(req.body.correo))
})

app.listen(config.port, function(err){
    if(err){
       console.error('No se puede inicializar el servidor : ' + err.message) 
    } else {
        console.log('Servidor arrancado en el Puerto '+config.port);
    }
})