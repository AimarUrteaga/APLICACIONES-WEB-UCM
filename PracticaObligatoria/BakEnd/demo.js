
const DAOTasks = require("./DAOTasks")
const config = require("./config")
const mysql = require("mysql")
const daoT = new DAOTasks(mysql.createPool(config.mysqlConfig))
function imprimir(error, buelta){
    if(error){
        console.log(error)
    }else{
        console.log(buelta)
    }
}

async function esperar(funcion, ...parametros){
    funcion(...parametros)
}
/*
console.log("Compruebo usuario inexistente:")
//await esperar(daoT.logIn, "prueba@prueba.es", "123", imprimir)
daoT.logIn("prueba@prueba.es", "123", imprimir)
*/
/*
console.log("Añado usuarios:")
daoT.andirUruario("prueba@prueba.es", "Preuab", "123", "Alumno", null, null,imprimir)
daoT.andirUruario("prueba2@prueba.es", "Preuab2", "234", "Alumno", null, null,imprimir)
*/
/*
console.log("Meto contraseña incorrecta:")
daoT.logIn("prueba@prueba.es", "234", imprimir)

console.log("Meto contraseña correcta:")
daoT.logIn("prueba@prueba.es", "123", imprimir)
*/
/*
console.log("Eliminar usuario:")
daoT.eliminarUruario("prueba2@prueba.es", imprimir)
*/
/*
console.log("Consigo las categorias:")
daoT.getCategorias(imprimir)
*/
/*
console.log("Consigo las categorizaziones:")
daoT.getCategorizaziones("Incidencia" ,imprimir)
daoT.getCategorizaziones("Felicitación" ,imprimir)
*/
/*
console.log("Consigo las categorizaziones:")
daoT.getSubCategorizaziones("prueba@prueba.es", "Administración digital" ,imprimir)
*/
/*
console.log("Añadir Aviso:")
daoT.andirAviso("prueba@prueba.es", "Esto es un mensaje de prueba", "Sugerencia", "Administración digital", "Certificado digital de personal física", imprimir)
daoT.andirAviso("prueba@prueba.es", "Esto es un mensaje de prueba", "Sugerencia", "Archivo Universitario", null, imprimir)
*/
/*
console.log("Ver avisos resueltos Usuario:")
daoT.avisosResueltosPorUsuario("prueba@prueba.es", imprimir)
*/
/*
console.log("Ver avisos no resueltos Usuario:")
daoT.avisosNoResueltosPorUsuario("prueba@prueba.es", imprimir)
*/
/*
console.log("Ver avisos no asignados:")
daoT.avisosNoasignados(imprimir)
*/
/*
console.log("Asignar aviso:")
daoT.asignarAviso(6, "admin@prueba.com", imprimir)
*/
/*
console.log("Ver avisos resueltos Tecnico:")
daoT.avisosResueltosPorTecnico("admin@prueba.com", imprimir)
*/
/*
console.log("Ver avisos no resueltos Tecnico:")
daoT.avisosNoResueltosPorTecnico("admin@prueba.com", imprimir)
*/
/*
console.log("Resolver:")
daoT.reslver(5, "resuelto", imprimir)
*/
/*
console.log("Eliminar:")
daoT.eliminar(5, "eliminado", imprimir)
*/
/*
console.log("Buscar Usuario:")
daoT.buscarUsuario("eu", imprimir)
*/
/*
console.log("Avisos Resueltos Por Usuario:")
daoT.buscarAvisosResueltosPorUsuario("de", "prueba@prueba.es", imprimir)
*/
/*
console.log("Avisos Resueltos Por Usuario:")
daoT.buscarAvisosNoResueltosPorUsuario("de", "prueba@prueba.es", imprimir)
*/

