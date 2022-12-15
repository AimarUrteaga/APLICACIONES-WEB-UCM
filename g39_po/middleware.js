function middLogueado (req, res, next){
    if (req.session.Correo){
        next()
    }else{
        res.redirect("/")
    }
}

function middTecnico (req, res, next){
    middLogueado(req, res,
        function(){
            if (req.session.NEmpleado){
                next()
            }else{
                res.redirect("/misavisos")
            }
        }
    )
}

function middNoLogueado (req, res, next){
    if (req.session.Correo){
        res.redirect("/misavisos")
    }else{
        next()
    }
}

module.exports = {
    middLogueado: middLogueado,
    middTecnico: middTecnico,
    middNoLogueado: middNoLogueado
}