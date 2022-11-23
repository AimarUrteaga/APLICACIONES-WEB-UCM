"use strinct"
const path = require("path")
const express = require("express")
const { dirname } = require("path")

const app = express()
app.set('view engine', 'ejs')
app.set('views',path.join(__dirname, 'views'))

const FicherosEstaticos = path.join(__dirname, 'public')
app.use(express.static(FicherosEstaticos))

app.get("/",function(req, res){
    res.status(200)
    res.render("PaginaPrincipal")
})

app.get("/CreacionCuenta",function(req, res){
    res.status(200)
    res.render("CreacionCuenta")
})

app.listen(3000, function(err){
    if(err){
       console.error('No se puede inicializar el servidor : ' + err.message) 
    } else {
        console.log('Servidor arrancado en el Puerto 3000');
    }
})