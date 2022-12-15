'use strict'

const crypto = require('crypto')

class DAO_UCM_CAU {
	constructor(pool) {
		this.pool = pool
	}

	andirUruario(Correo, Nombre, Contrasena, Rol, Foto, NEmpleado, callback) {
		if (NEmpleado!=null && Rol!="Personal de Administración y Servicios (PAS)"){
			callback(new Error('Solo el pas puede tener numero de empleado'))
		}
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"INSERT INTO UCM_AW_CAU_USU_Usuarios (Correo, Nombre, Contrasena, Rol, Foto, NEmpleado) VALUES (?, ?, ?, (SELECT Id FROM UCM_AW_CAU_ROL_Rol WHERE Rol = ?), ?, ?);",
						[Correo, Nombre, crypto.createHash('sha256').update(Contrasena).digest('hex'), Rol, Foto, NEmpleado],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								//callback(new Error('Error de acceso a la base de datos'))
								callback(err)
							} else {
								callback(null, true)
							}
						}
					)
				}
			}
		)
	}

	eliminarUruario(Correo, callback) {
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"DELETE FROM UCM_AW_CAU_USU_Usuarios WHERE UCM_AW_CAU_USU_Usuarios.Correo = ?;",
						[Correo],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, true)
							}
						}
					)
				}
			}
		)
	}

	logIn(Correo, Contrasena, callback) {
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_USU_Usuarios.Nombre, UCM_AW_CAU_ROL_Rol.Rol, UCM_AW_CAU_USU_Usuarios.Foto, UCM_AW_CAU_USU_Usuarios.NEmpleado, UCM_AW_CAU_USU_Usuarios.Fecha FROM UCM_AW_CAU_USU_Usuarios JOIN UCM_AW_CAU_ROL_Rol ON UCM_AW_CAU_ROL_Rol.Id=UCM_AW_CAU_USU_Usuarios.Rol WHERE UCM_AW_CAU_USU_Usuarios.Correo = ? AND UCM_AW_CAU_USU_Usuarios.Contrasena = ?;",
						[Correo, crypto.createHash('sha256').update(Contrasena).digest('hex')],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								if (rows.length === 0) {
									callback(null, false)
								}else{
									callback(null, rows[0])
								}
							}
						}
					)
				}
			}
		)
	}

	getUsuarios(callback) {
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_USU_Usuarios.Nombre, UCM_AW_CAU_USU_Usuarios.Correo, UCM_AW_CAU_ROL_Rol.Rol, UCM_AW_CAU_USU_Usuarios.Foto, UCM_AW_CAU_USU_Usuarios.NEmpleado, UCM_AW_CAU_USU_Usuarios.Fecha FROM UCM_AW_CAU_USU_Usuarios JOIN UCM_AW_CAU_ROL_Rol ON UCM_AW_CAU_ROL_Rol.Id=UCM_AW_CAU_USU_Usuarios.Rol;",
						[],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	getRoles(callback) {//Sugerencia Incidencia Felicitación
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT Rol FROM UCM_AW_CAU_ROL_Rol;",
						[],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	getCategorias(callback) {//Sugerencia Incidencia Felicitación
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_CAT_Categoria.Nombre FROM UCM_AW_CAU_CAT_Categoria;",
						[],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	getCategorizaziones(categoria, callback) {//Comunicaciones, Conectividad, Archivo Universitario, Asesoría Jurídica, Biblioteca
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_CAS_CategoriazacionSeccion.CategoriazacionSeccion FROM UCM_AW_CAU_CAS_CategoriazacionSeccion JOIN UCM_AW_CAU_CAT_CAS ON UCM_AW_CAU_CAT_CAS.Id_CAS = UCM_AW_CAU_CAS_CategoriazacionSeccion.Id JOIN UCM_AW_CAU_CAT_Categoria ON UCM_AW_CAU_CAT_CAS.Id_CAT = UCM_AW_CAU_CAT_Categoria.Id WHERE UCM_AW_CAU_CAT_Categoria.Nombre = ?;",
						[categoria],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	getSubCategorizaziones(correo, categorizacion, callback) {
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.SubCategoriazacionSeccion FROM UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion JOIN UCM_AW_CAU_ROL_SUB ON UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.Id = UCM_AW_CAU_ROL_SUB.Id_SUB JOIN UCM_AW_CAU_ROL_Rol ON UCM_AW_CAU_ROL_SUB.Id_ROL = UCM_AW_CAU_ROL_Rol.Id JOIN UCM_AW_CAU_USU_Usuarios ON UCM_AW_CAU_ROL_Rol.Id = UCM_AW_CAU_USU_Usuarios.Rol JOIN UCM_AW_CAU_CAS_CategoriazacionSeccion ON UCM_AW_CAU_CAS_CategoriazacionSeccion.Id = UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.IdCategoriazacionSeccion WHERE UCM_AW_CAU_USU_Usuarios.Correo = ? AND UCM_AW_CAU_CAS_CategoriazacionSeccion.CategoriazacionSeccion = ?;",
						[correo, categorizacion],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	andirAviso(CorreoUsuario, Observaciones, Categoria, Categorizacion, SubCategoriazacion, callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"INSERT INTO UCM_AW_CAU_AVI_Avisos (Usu_Correo_Usu, Observaciones, Categoria, Categorizacion, SubCategoriazacion) VALUES (?, ?, (SELECT Id FROM UCM_AW_CAU_CAT_Categoria WHERE Nombre = ?), (SELECT Id FROM UCM_AW_CAU_CAS_CategoriazacionSeccion WHERE CategoriazacionSeccion = ?), (SELECT Id FROM UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion WHERE SubCategoriazacionSeccion = ?));",
						[CorreoUsuario, Observaciones, Categoria, Categorizacion, SubCategoriazacion],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, true)
							}
						}
					)
				}
			}
		)
	}

	avisosResueltosPorUsuario(CorreoUsuario, callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_AVI_Avisos.id, UCM_AW_CAU_AVI_Avisos.Usu_Correo_Usu, UCM_AW_CAU_AVI_Avisos.Usu_Correo_Tec, UCM_AW_CAU_AVI_Avisos.Observaciones ,UCM_AW_CAU_AVI_Avisos.Comentario, UCM_AW_CAU_AVI_Avisos.Eliminado, UCM_AW_CAU_AVI_Avisos.Fecha, UCM_AW_CAU_CAT_Categoria.Nombre, UCM_AW_CAU_CAS_CategoriazacionSeccion.CategoriazacionSeccion, UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.SubCategoriazacionSeccion FROM UCM_AW_CAU_AVI_Avisos JOIN UCM_AW_CAU_CAT_Categoria ON UCM_AW_CAU_CAT_Categoria.Id = UCM_AW_CAU_AVI_Avisos.Categoria JOIN UCM_AW_CAU_CAS_CategoriazacionSeccion ON UCM_AW_CAU_CAS_CategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.Categorizacion LEFT JOIN UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion ON UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.SubCategoriazacion WHERE UCM_AW_CAU_AVI_Avisos.Usu_Correo_Usu = ? AND UCM_AW_CAU_AVI_Avisos.Comentario IS NOT NULL;",
						[CorreoUsuario],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	avisosNoResueltosPorUsuario(CorreoUsuario, callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_AVI_Avisos.id, UCM_AW_CAU_AVI_Avisos.Usu_Correo_Tec, UCM_AW_CAU_AVI_Avisos.Observaciones, UCM_AW_CAU_AVI_Avisos.Fecha, UCM_AW_CAU_CAT_Categoria.Nombre, UCM_AW_CAU_CAS_CategoriazacionSeccion.CategoriazacionSeccion, UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.SubCategoriazacionSeccion FROM UCM_AW_CAU_AVI_Avisos JOIN UCM_AW_CAU_CAT_Categoria ON UCM_AW_CAU_CAT_Categoria.Id = UCM_AW_CAU_AVI_Avisos.Categoria JOIN UCM_AW_CAU_CAS_CategoriazacionSeccion ON UCM_AW_CAU_CAS_CategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.Categorizacion LEFT JOIN UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion ON UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.SubCategoriazacion WHERE UCM_AW_CAU_AVI_Avisos.Usu_Correo_Usu = ?  AND UCM_AW_CAU_AVI_Avisos.Comentario IS NULL;",
						[CorreoUsuario],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	/*
	avisosNoasignados(callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_AVI_Avisos.id, UCM_AW_CAU_AVI_Avisos.Usu_Correo_Usu, UCM_AW_CAU_AVI_Avisos.Observaciones, UCM_AW_CAU_AVI_Avisos.Fecha, UCM_AW_CAU_CAT_Categoria.Nombre, UCM_AW_CAU_CAS_CategoriazacionSeccion.CategoriazacionSeccion, UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.SubCategoriazacionSeccion FROM UCM_AW_CAU_AVI_Avisos JOIN UCM_AW_CAU_CAT_Categoria ON UCM_AW_CAU_CAT_Categoria.Id = UCM_AW_CAU_AVI_Avisos.Categoria JOIN UCM_AW_CAU_CAS_CategoriazacionSeccion ON UCM_AW_CAU_CAS_CategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.Categorizacion LEFT JOIN UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion ON UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.SubCategoriazacion WHERE UCM_AW_CAU_AVI_Avisos.Usu_Correo_Tec IS NULL;",
						[],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}
	*/
	avisosEntrantes(callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_AVI_Avisos.id, UCM_AW_CAU_AVI_Avisos.Usu_Correo_Usu, UCM_AW_CAU_AVI_Avisos.Usu_Correo_Tec, UCM_AW_CAU_AVI_Avisos.Observaciones, UCM_AW_CAU_AVI_Avisos.Fecha, UCM_AW_CAU_AVI_Avisos.Eliminado ,UCM_AW_CAU_CAT_Categoria.Nombre, UCM_AW_CAU_CAS_CategoriazacionSeccion.CategoriazacionSeccion, UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.SubCategoriazacionSeccion FROM UCM_AW_CAU_AVI_Avisos JOIN UCM_AW_CAU_CAT_Categoria ON UCM_AW_CAU_CAT_Categoria.Id = UCM_AW_CAU_AVI_Avisos.Categoria JOIN UCM_AW_CAU_CAS_CategoriazacionSeccion ON UCM_AW_CAU_CAS_CategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.Categorizacion LEFT JOIN UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion ON UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.SubCategoriazacion WHERE UCM_AW_CAU_AVI_Avisos.Comentario IS NULL;",
						[],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	getNombresTecnicos(callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_USU_Usuarios.Nombre, UCM_AW_CAU_USU_Usuarios.Correo FROM UCM_AW_CAU_USU_Usuarios WHERE UCM_AW_CAU_USU_Usuarios.NEmpleado IS NOT null;",
						[],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	
	asignarAviso(IdAviso, CorreoAdmin, callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"UPDATE UCM_AW_CAU_AVI_Avisos SET Usu_Correo_Tec = ? WHERE UCM_AW_CAU_AVI_Avisos.id = ? AND (SELECT UCM_AW_CAU_USU_Usuarios.NEmpleado FROM UCM_AW_CAU_USU_Usuarios WHERE UCM_AW_CAU_USU_Usuarios.Correo = ?) IS NOT NULL;",
						[CorreoAdmin, IdAviso, CorreoAdmin],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, true)
							}
						}
					)
				}
			}
		)
	}

	avisosNoResueltosPorTecnico(CorreoTecnico, callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_AVI_Avisos.id, UCM_AW_CAU_AVI_Avisos.Usu_Correo_Usu, UCM_AW_CAU_AVI_Avisos.Observaciones, UCM_AW_CAU_AVI_Avisos.Fecha, UCM_AW_CAU_CAT_Categoria.Nombre, UCM_AW_CAU_CAS_CategoriazacionSeccion.CategoriazacionSeccion, UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.SubCategoriazacionSeccion FROM UCM_AW_CAU_AVI_Avisos JOIN UCM_AW_CAU_CAT_Categoria ON UCM_AW_CAU_CAT_Categoria.Id = UCM_AW_CAU_AVI_Avisos.Categoria JOIN UCM_AW_CAU_CAS_CategoriazacionSeccion ON UCM_AW_CAU_CAS_CategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.Categorizacion LEFT JOIN UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion ON UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.SubCategoriazacion WHERE UCM_AW_CAU_AVI_Avisos.Usu_Correo_Tec = ?  AND UCM_AW_CAU_AVI_Avisos.Comentario IS NULL;",
						[CorreoTecnico],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	avisosResueltosPorTecnico(CorreoTecnico, callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_AVI_Avisos.id, UCM_AW_CAU_AVI_Avisos.Usu_Correo_Usu, UCM_AW_CAU_AVI_Avisos.Observaciones ,UCM_AW_CAU_AVI_Avisos.Comentario, UCM_AW_CAU_AVI_Avisos.Eliminado, UCM_AW_CAU_AVI_Avisos.Fecha, UCM_AW_CAU_CAT_Categoria.Nombre, UCM_AW_CAU_CAS_CategoriazacionSeccion.CategoriazacionSeccion, UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.SubCategoriazacionSeccion FROM UCM_AW_CAU_AVI_Avisos JOIN UCM_AW_CAU_CAT_Categoria ON UCM_AW_CAU_CAT_Categoria.Id = UCM_AW_CAU_AVI_Avisos.Categoria JOIN UCM_AW_CAU_CAS_CategoriazacionSeccion ON UCM_AW_CAU_CAS_CategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.Categorizacion LEFT JOIN UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion ON UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.SubCategoriazacion WHERE UCM_AW_CAU_AVI_Avisos.Usu_Correo_Tec = ? AND UCM_AW_CAU_AVI_Avisos.Comentario IS NOT NULL;",
						[CorreoTecnico],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	avisosReslver(id, mensaje, callback){
		if (mensaje==null){
			callback(new Error('Tiene que tener un mensaje'))
		}
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"UPDATE UCM_AW_CAU_AVI_Avisos SET Comentario = ? WHERE UCM_AW_CAU_AVI_Avisos.id = ?;",
						[mensaje, id],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, true)
							}
						}
					)
				}
			}
		)
	}

	avisosEliminar(id, mensaje, CorreoTecnico, callback){
		if (mensaje==null){
			callback(new Error('Tiene que tener un mensaje'))
		}
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"UPDATE UCM_AW_CAU_AVI_Avisos SET Comentario = ?, Usu_Correo_Tec = ? , Eliminado = 1 WHERE UCM_AW_CAU_AVI_Avisos.id = ?;",
						[mensaje, CorreoTecnico, id],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, true)
							}
						}
					)
				}
			}
		)
	}

//SELECT UCM_AW_CAU_USU_Usuarios.Nombre, UCM_AW_CAU_ROL_Rol.Rol, UCM_AW_CAU_USU_Usuarios.NEmpleado FROM UCM_AW_CAU_USU_Usuarios JOIN UCM_AW_CAU_ROL_Rol ON UCM_AW_CAU_ROL_Rol.Id=UCM_AW_CAU_USU_Usuarios.Rol WHERE UCM_AW_CAU_USU_Usuarios.Nombre LIKE '%prueva%';
	buscarUsuario(aBuscar, callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_USU_Usuarios.Nombre, UCM_AW_CAU_USU_Usuarios.Correo, UCM_AW_CAU_ROL_Rol.Rol, UCM_AW_CAU_USU_Usuarios.NEmpleado, UCM_AW_CAU_USU_Usuarios.Fecha FROM UCM_AW_CAU_USU_Usuarios JOIN UCM_AW_CAU_ROL_Rol ON UCM_AW_CAU_ROL_Rol.Id=UCM_AW_CAU_USU_Usuarios.Rol WHERE UCM_AW_CAU_USU_Usuarios.Nombre LIKE ?;",						["%"+aBuscar+"%"],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	
	//TODO poner fechas en los avisos
	buscarAvisoTecnico(aBuscar, callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_AVI_Avisos.id, UCM_AW_CAU_AVI_Avisos.Usu_Correo_Usu, UCM_AW_CAU_AVI_Avisos.Observaciones ,UCM_AW_CAU_AVI_Avisos.Comentario, UCM_AW_CAU_AVI_Avisos.Eliminado, UCM_AW_CAU_AVI_Avisos.Fecha, UCM_AW_CAU_CAT_Categoria.Nombre, UCM_AW_CAU_CAS_CategoriazacionSeccion.CategoriazacionSeccion, UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.SubCategoriazacionSeccion FROM UCM_AW_CAU_AVI_Avisos JOIN UCM_AW_CAU_CAT_Categoria ON UCM_AW_CAU_CAT_Categoria.Id = UCM_AW_CAU_AVI_Avisos.Categoria JOIN UCM_AW_CAU_CAS_CategoriazacionSeccion ON UCM_AW_CAU_CAS_CategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.Categorizacion LEFT JOIN UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion ON UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.SubCategoriazacion WHERE UCM_AW_CAU_AVI_Avisos.Observaciones LIKE ?;",
						["%"+aBuscar+"%"],
						function (err, rows){
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	buscarAvisoUsuario(aBuscar, CorreoUsuario, callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_AVI_Avisos.id, UCM_AW_CAU_AVI_Avisos.Usu_Correo_Usu, UCM_AW_CAU_AVI_Avisos.Observaciones ,UCM_AW_CAU_AVI_Avisos.Comentario, UCM_AW_CAU_AVI_Avisos.Eliminado, UCM_AW_CAU_AVI_Avisos.Fecha, UCM_AW_CAU_CAT_Categoria.Nombre, UCM_AW_CAU_CAS_CategoriazacionSeccion.CategoriazacionSeccion, UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.SubCategoriazacionSeccion FROM UCM_AW_CAU_AVI_Avisos JOIN UCM_AW_CAU_CAT_Categoria ON UCM_AW_CAU_CAT_Categoria.Id = UCM_AW_CAU_AVI_Avisos.Categoria JOIN UCM_AW_CAU_CAS_CategoriazacionSeccion ON UCM_AW_CAU_CAS_CategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.Categorizacion LEFT JOIN UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion ON UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.SubCategoriazacion WHERE UCM_AW_CAU_AVI_Avisos.Observaciones LIKE ? AND UCM_AW_CAU_AVI_Avisos.Usu_Correo_Usu = ?;",
						["%"+aBuscar+"%", CorreoUsuario],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	buscarAvisosbyid(id, callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT UCM_AW_CAU_AVI_Avisos.id, UCM_AW_CAU_AVI_Avisos.Observaciones ,UCM_AW_CAU_AVI_Avisos.Comentario, UCM_AW_CAU_AVI_Avisos.Fecha, UCM_AW_CAU_CAT_Categoria.Nombre, UCM_AW_CAU_CAS_CategoriazacionSeccion.CategoriazacionSeccion, UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.SubCategoriazacionSeccion FROM UCM_AW_CAU_AVI_Avisos JOIN UCM_AW_CAU_CAT_Categoria ON UCM_AW_CAU_CAT_Categoria.Id = UCM_AW_CAU_AVI_Avisos.Categoria JOIN UCM_AW_CAU_CAS_CategoriazacionSeccion ON UCM_AW_CAU_CAS_CategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.Categorizacion LEFT JOIN UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion ON UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion.Id = UCM_AW_CAU_AVI_Avisos.SubCategoriazacion WHERE UCM_AW_CAU_AVI_Avisos.id = ? ;",
						[id],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	cuantosUsuari(CorreoUsuario, callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT COUNT(UCM_AW_CAU_AVI_Avisos.id) AS cuantos,  UCM_AW_CAU_CAT_Categoria.Nombre FROM UCM_AW_CAU_AVI_Avisos JOIN UCM_AW_CAU_CAT_Categoria ON UCM_AW_CAU_CAT_Categoria.Id = UCM_AW_CAU_AVI_Avisos.Categoria WHERE UCM_AW_CAU_AVI_Avisos.Usu_Correo_Usu = ? AND UCM_AW_CAU_AVI_Avisos.Comentario IS NOT null GROUP BY UCM_AW_CAU_CAT_Categoria.Nombre;",
						[CorreoUsuario],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}

	cuantosTecnico(CorreoTecnico, callback){
		this.pool.getConnection(
			function (err, connection) {
				if (err) {
					callback(new Error('Error de conexión a la base de datos'))
				} else {
					connection.query(
						"SELECT COUNT(UCM_AW_CAU_AVI_Avisos.id) AS cuantos,  UCM_AW_CAU_CAT_Categoria.Nombre FROM UCM_AW_CAU_AVI_Avisos JOIN UCM_AW_CAU_CAT_Categoria ON UCM_AW_CAU_CAT_Categoria.Id = UCM_AW_CAU_AVI_Avisos.Categoria WHERE UCM_AW_CAU_AVI_Avisos.Usu_Correo_Tec = ? AND UCM_AW_CAU_AVI_Avisos.Comentario IS NOT null GROUP BY UCM_AW_CAU_CAT_Categoria.Nombre;",
						[CorreoTecnico],
						function (err, rows) {
							connection.release() // devolver al pool la conexión
							if (err) {
								callback(new Error('Error de acceso a la base de datos'))
							} else {
								callback(null, rows)
							}
						}
					)
				}
			}
		)
	}
	
}
module.exports = DAO_UCM_CAU