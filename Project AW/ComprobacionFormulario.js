"use strinct"



function isCorreo(Correo) {
    let isValido =  /\b^[A-Za-z0-9_.-]+@ucm.es\b/;
    return isValido.test(Correo)
}

function isContrsena(Contrasena){
    let isValido =  /^(?=.*\d)(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?=.*[a-z])\S{8,16}$/;

    return isValido.test(Contrasena)
}



function matchContrasena(Contrasena1,Contrasena2)
{
    return Contrasena1===Contrasena2;
}

function isNumEmpl(NumEmpl)
{
    let isValido = /^\d{4}\-[a-z]{3}/
    return isValido.test(NumEmpl)
}

//console.log(isNumEmpl('3452-ert'));

module.exports = {
    isCorreo:isCorreo,
    isContrsena:isContrsena,
    matchContrasena:matchContrasena,
    isNumEmpl:isNumEmpl
}