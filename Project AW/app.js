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

//sesion
const session = require("express-session")
const mysqlSession = require("express-mysql-session")
const mysqlStore = mysqlSession(session)
const conexionStore = new mysqlStore (config.mysqlConfig)
const sessionMidelware = session({
    secret: "123",
    resave: false,
    saveUninitialized: false,
    store: conexionStore
})
app.use(sessionMidelware)


app.get("/",function(req, res){
    res.status(200)
    res.render("PaginaPrincipal")
})

app.post("/procesarIniciarSesion", function(req,res){
    dao.logIn(req.body.correo, req.body.contrasena,
        function (error, buelta){
            if (error){
                console.log(error)
            }else{
                if (buelta){
                    req.session.Correo=req.body.correo
                    req.session.Nombre=buelta.Nombre
                    req.session.Rol=buelta.Rol
                    req.session.Foto=buelta.Foto
                    req.session.NEmpleado=buelta.NEmpleado
                    req.session.Fecha=buelta.Fecha
                    res.redirect("/misavisos")
                }else{
                    res.redirect("/")
                }
            }
        }
    )
})

app.get("/CreacionCuenta",function(req, res){
    dao.getRoles(
        function (error, buelta){
            if (error){
                console.log(error)
            }else{
                res.status(200)
                res.render("CreacionCuenta", {roles: buelta})
            }
        }
    )
})

app.post("/procesarCrearCuenta",
    multerFactory.single('foto'),
    //check(req.body.correo, "Correo Electronico no valido").matches(/^[A-Za-z0-9_.-]+@ucm.es/),
    function(req,res){
        //foto = multerFactory.single('foto');
        NumEmpleado = null
        if (req.body.NumEmpleado!==""){
            NumEmpleado = req.body.NumEmpleado;
        }
        Foto = null
        if (req.file){
            Foto = req.file.buffer
        }
        dao.andirUruario(req.body.correo, req.body.NombreMostrar, req.body.contr1, req.body.Rol, Foto, NumEmpleado, 
            function (error, buelta){
                if (error){
                    console.log(error)
                }else{
                    console.log(buelta)
                    res.redirect("/")
                }
            }
        )
        //res.end('Procesando formulario ' + isCorreo(req.body.correo))
    }
)

app.get("/cerrarsesion",function(req, res){
    req.session.destroy();
    res.redirect("/")
})

app.get("/imagen",function(req, res){
    if (req.session.Foto==null){
        res.redirect("./img/noUser.png")
    }else{
        res.end(Buffer.from(req.session.Foto))
    }
})

app.get('/misavisos', function (req, res) {
    if (req.session.NEmpleado){
        dao.avisosNoResueltosPorTecnico(req.session.Correo,
            function (error, buelta){
                if (error){
                    console.log(error)
                }else{
                    res.status(200)
                    res.render('misavisosAdmin', {session: req.session, avisos: buelta, pagina: "misavisos"})
                }
            }
        )
    }else{
        dao.avisosNoResueltosPorUsuario(req.session.Correo,
            function (error, buelta){
                if (error){
                    console.log(error)
                }else{
                    res.status(200)
                    res.render('misavisos', {session: req.session, avisos: buelta, pagina: "misavisos"})
                }
            }
        )
    }
})

app.get('/historico', function (req, res) {
    if (req.session.NEmpleado){
        dao.avisosResueltosPorUsuario(req.session.Correo,
            function (error, buelta){
                if (error){
                    console.log(error)
                }else{
                    res.status(200)
                    res.render('historico', {session: req.session, avisos: buelta, pagina: "historico"})
                }
            }
        )
    }else{
        dao.avisosResueltosPorTecnico(req.session.Correo,
            function (error, buelta){
                if (error){
                    console.log(error)
                }else{
                    res.status(200)
                    res.render('historico', {session: req.session, avisos: buelta, pagina: "historico"})
                }
            }
        )
    }
})



app.listen(config.port, function(err){
    if(err){
       console.error('No se puede inicializar el servidor : ' + err.message) 
    } else {
        console.log('Servidor arrancado en el Puerto '+config.port);
    }
})