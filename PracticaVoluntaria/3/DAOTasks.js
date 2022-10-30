'use strict'

class DAOTasks {
  constructor(pool) {
    this.pool = pool
  }
  getAllTasks(email, callback) {
    this.pool.getConnection(function (err, connection) {
      if (err) {
        callback(new Error('Error de conexión a la base de datos'))
      } else {
        connection.query(
          `SELECT aw_tareas_usuarios.idUser id,  aw_tareas_tareas.texto "text",aw_tareas_user_tareas.hecho done, GROUP_CONCAT(concat(aw_tareas_etiquetas.texto)) "Tags"
            from aw_tareas_usuarios
            join aw_tareas_user_tareas on aw_tareas_usuarios.idUser = aw_tareas_user_tareas.idUser
            join aw_tareas_tareas ON aw_tareas_user_tareas.idTarea = aw_tareas_tareas.idTarea
            join aw_tareas_tareas_etiquetas ON aw_tareas_tareas.idTarea = aw_tareas_tareas_etiquetas.idTarea
            join aw_tareas_etiquetas ON aw_tareas_etiquetas.idEtiqueta = aw_tareas_tareas_etiquetas.idEtiqueta
            where aw_tareas_usuarios.email = ?
            GROUP BY aw_tareas_tareas.texto ; `,
          [email],
          function (err, rows) {
            connection.release() // devolver al pool la conexión
            if (err) {
              callback(new Error('Error de acceso a la base de datos'))
            } else {
              if (rows.length === 0) {
                callback(null, '') //no está el usuario con el password proporcionado
              } else {
                rows.map((row) => {
                  tgs = row.Tags.split(',')
                  row.tags = [...tgs]
                })
                callback(null, rows)
              }
            }
          }
        )
      }
    })
  }
  
  #enlazarUsuario(connection,email,task){
    connection.query(
      `INSERT INTO aw_tareas_user_tareas(idUser,idTarea,hecho) values(
                (SELECT idUser 
                from aw_tareas_usuarios
                WHERE email = ?),
                (SELECT idTarea
                from aw_tareas_tareas
                WHERE texto = ?),
                0
                )`,
      [email, task],
      function (err, rows) {
        connection.release() // devolver al pool la conexión
        if (err) {
          callback(new Error('Error de acceso a la base de datos'))
        } else {
          if (rows.length !== 0) {
            console.log('tarea insertada en aw_tareas_user_tareas')
          }
        }
      }
    )
  }
  
  insertTask(email, task, callback) {
    this.pool.getConnection(function (err, connection) {
      if (err) {
        callback(new Error('Error de conexión a la base de datos'))
      } else {
        connection.query(
          `SELECT texto
              FROM aw_tareas_tareas
              where texto = ?`,
          [task],
          function (err, rows) {
            //connection.release() // no se hace aqui el release porque todavia tiene que hacer otro query
            if (err) {
              callback(new Error('Error de acceso a la base de datos'))
            } else {
              if (rows.length === 0) {
                //no está la task
                connection.query(
                  `insert into aw_tareas_tareas(texto) Values(?)`,
                  [task],
                  function (err, rows) {
                    //connection.release() // devolver al pool la conexión porque es el ultimo query por hacer
                    if (err) {
                      callback(new Error('Error de acceso a la base de datos'))
                    } else {
                      this.#enlazarUsuario(connection,email,task)
                      console.log('tarea insertada en aw_tareas_tareas')
                    }
                  }
                )
              }else{
                this.#enlazarUsuario(connection,email,task)
              }
            }
          }
        )
      }
    })
  }

  /*markTaskDone(idTask, callback) {  ...  }  */

  deleteCompleted(email, callback) {
    this.pool.getConnection(function (err, connection) {
      if (err) {
        callback(new Error('Error de conexión a la base de datos'))
      } else {
        connection.query(
          `DELETE
          from aw_tareas_user_tareas
          WHERE aw_tareas_user_tareas.hecho = 1 and aw_tareas_user_tareas.idUser = (
          SELECT idUser from aw_tareas_usuarios WHERE email = ?
          )`,
          [email],
          function (err, rows) {
            connection.release() // devolver al pool la conexión
            if (err) {
              callback(new Error('Error de acceso a la base de datos'))
            } else {
              if (rows.length === 0) {
                callback(null, '') //no está el usuario con el password proporcionado
              } else {
                callback(null, rows)
              }
            }
          }
        )
      }
    })
  }
}
module.exports = DAOTasks
