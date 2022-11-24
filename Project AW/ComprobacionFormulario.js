"use strinct"

function isCorreo(Correo) {
    let isValido =  /\b^[A-Za-z0-9_.]+@ucm.es\b/;
    return isValido.test(Correo)
}

function isContrsena(Contrasena){
    let isValido =  /\b^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[^a-zA-Z0-9])\S{8,16}$\b/;
    return isValido.test(Contrasena)
}

//console.log(isContrsena('w3Uncodet0d0<')); // no en tiendo por que al poner el alpha numerico al final no funciona

function matchContrasena(Contrasena1,Contrasena2)
{
    return Contrasena1===Contrasena2;
}

function isNumEmpl(NumEmpl)
{
    let isValido = /^\d{4}\-[a-z]{3}/
    return isValido.test(NumEmpl)
}

console.log(isNumEmpl('3452-ert'));