-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-12-2022 a las 18:55:19
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `UCM_CAU`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('y-1nzyI-QjSe0-YOR0JZOidliSQ583bG', 1670694755, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"prueba\":\"hafuncionado\",\"Nombre\":\"aimar\",\"Rol\":\"Alumno\",\"Foto\":null,\"NEmpleado\":null,\"Fecha\":\"2022-12-09T17:52:31.000Z\",\"Correo\":\"aimar@ucm.es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UCM_AW_CAU_AVI_Avisos`
--

CREATE TABLE `UCM_AW_CAU_AVI_Avisos` (
  `id` int(11) NOT NULL,
  `Usu_Correo_Usu` varchar(45) NOT NULL,
  `Usu_Correo_Tec` varchar(45) DEFAULT NULL,
  `Observaciones` varchar(250) NOT NULL,
  `Comentario` varchar(250) DEFAULT NULL,
  `Eliminado` tinyint(1) NOT NULL DEFAULT 0,
  `Categoria` tinyint(4) NOT NULL COMMENT 'Sugerencia, Incidencia, Felicitación	',
  `Categorizacion` tinyint(4) NOT NULL COMMENT 'Lo de la tabla',
  `SubCategoriazacion` tinyint(4) DEFAULT NULL,
  `Fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UCM_AW_CAU_CAS_CategoriazacionSeccion`
--

CREATE TABLE `UCM_AW_CAU_CAS_CategoriazacionSeccion` (
  `Id` tinyint(4) NOT NULL,
  `CategoriazacionSeccion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `UCM_AW_CAU_CAS_CategoriazacionSeccion`
--

INSERT INTO `UCM_AW_CAU_CAS_CategoriazacionSeccion` (`Id`, `CategoriazacionSeccion`) VALUES
(1, 'Administración digital'),
(6, 'Archivo Universitario'),
(7, 'Asesoría Jurídica'),
(8, 'Biblioteca'),
(9, 'Centro de Información'),
(2, 'Comunicaciones'),
(3, 'Conectividad'),
(10, 'Departamentos docentes'),
(4, 'Docencia'),
(11, 'Inspección de Servicios'),
(12, 'Oficina de Gestión de Infraestructuras y Mantenimiento'),
(13, 'Servicio de Administración'),
(17, 'Servicio de Cafetería'),
(15, 'Servicio de Documentación'),
(16, 'Servicio de Imprenta'),
(14, 'Servicios Informáticos'),
(18, 'Toda la Universidad'),
(5, 'Web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UCM_AW_CAU_CAT_CAS`
--

CREATE TABLE `UCM_AW_CAU_CAT_CAS` (
  `Id_CAT` tinyint(4) NOT NULL,
  `Id_CAS` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `UCM_AW_CAU_CAT_CAS`
--

INSERT INTO `UCM_AW_CAU_CAT_CAS` (`Id_CAT`, `Id_CAS`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UCM_AW_CAU_CAT_Categoria`
--

CREATE TABLE `UCM_AW_CAU_CAT_Categoria` (
  `Id` tinyint(4) NOT NULL,
  `Nombre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `UCM_AW_CAU_CAT_Categoria`
--

INSERT INTO `UCM_AW_CAU_CAT_Categoria` (`Id`, `Nombre`) VALUES
(3, 'Felicitación'),
(2, 'Incidencia'),
(1, 'Sugerencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UCM_AW_CAU_ROL_Rol`
--

CREATE TABLE `UCM_AW_CAU_ROL_Rol` (
  `Id` tinyint(4) NOT NULL,
  `Rol` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `UCM_AW_CAU_ROL_Rol`
--

INSERT INTO `UCM_AW_CAU_ROL_Rol` (`Id`, `Rol`) VALUES
(1, 'Alumno'),
(4, 'Antiguo Alumno'),
(2, 'Personal de Administración y Servicios (PAS)'),
(3, 'Personal Docente e Investigador (PDI)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UCM_AW_CAU_ROL_SUB`
--

CREATE TABLE `UCM_AW_CAU_ROL_SUB` (
  `Id_ROL` tinyint(4) NOT NULL,
  `Id_SUB` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `UCM_AW_CAU_ROL_SUB`
--

INSERT INTO `UCM_AW_CAU_ROL_SUB` (`Id_ROL`, `Id_SUB`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 6),
(1, 7),
(1, 8),
(1, 13),
(1, 15),
(1, 16),
(1, 18),
(1, 21),
(1, 22),
(1, 26),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 19),
(2, 20),
(2, 21),
(2, 23),
(2, 24),
(2, 25),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 9),
(3, 10),
(3, 12),
(3, 13),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(4, 3),
(4, 4),
(4, 6),
(4, 7),
(4, 8),
(4, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion`
--

CREATE TABLE `UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion` (
  `Id` tinyint(4) NOT NULL,
  `IdCategoriazacionSeccion` tinyint(4) NOT NULL,
  `SubCategoriazacionSeccion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion`
--

INSERT INTO `UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion` (`Id`, `IdCategoriazacionSeccion`, `SubCategoriazacionSeccion`) VALUES
(1, 1, 'Certificado digital de personal física'),
(2, 1, 'Certificado electrónico de empleado público'),
(3, 1, 'Registro electrónico'),
(4, 1, 'Sede electrónica'),
(5, 1, 'Portafirmas'),
(6, 2, 'Correo electrónico'),
(7, 2, 'Google Meet'),
(8, 2, 'Cuenta de Alumno'),
(9, 2, 'Cuenta de personal'),
(10, 2, 'Cuenta genérica'),
(11, 3, 'Cuenta as la Red SARA'),
(12, 3, 'Conexión por cable en despachos'),
(13, 3, 'Cortafuegos corporativo'),
(14, 3, 'Resolución de nombres de dominio (DNS)'),
(15, 3, 'VPN Acceso remoto'),
(16, 3, 'Wifi Eduroam (ssid: eduroam) '),
(17, 3, 'Wifi para visitantes (ssid: UCM-Visitantes)'),
(18, 4, 'Aula Virtual'),
(19, 4, 'Blackboard Collaborate'),
(20, 4, 'Listados de clase'),
(21, 4, 'Moodle: Aula Global'),
(22, 4, 'Plataforma de cursos online Privados'),
(23, 5, 'Analítica Web'),
(24, 5, 'Emisión de certificados SSL'),
(25, 5, 'Hosting: alojamiento de páginas web'),
(26, 5, 'Portal de eventos'),
(27, 5, 'Redirecciones web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UCM_AW_CAU_USU_Usuarios`
--

CREATE TABLE `UCM_AW_CAU_USU_Usuarios` (
  `Correo` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Contrasena` char(64) NOT NULL,
  `Rol` tinyint(4) NOT NULL,
  `Fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `Foto` blob DEFAULT NULL,
  `NEmpleado` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indices de la tabla `UCM_AW_CAU_AVI_Avisos`
--
ALTER TABLE `UCM_AW_CAU_AVI_Avisos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Usu_Correo_Tec` (`Usu_Correo_Tec`),
  ADD KEY `Categoria` (`Categoria`),
  ADD KEY `Categorizacion` (`Categorizacion`),
  ADD KEY `SubCategoriazacion` (`SubCategoriazacion`);

--
-- Indices de la tabla `UCM_AW_CAU_CAS_CategoriazacionSeccion`
--
ALTER TABLE `UCM_AW_CAU_CAS_CategoriazacionSeccion`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `CategoriazacionSeccion` (`CategoriazacionSeccion`);

--
-- Indices de la tabla `UCM_AW_CAU_CAT_CAS`
--
ALTER TABLE `UCM_AW_CAU_CAT_CAS`
  ADD PRIMARY KEY (`Id_CAT`,`Id_CAS`),
  ADD KEY `Id_CAS` (`Id_CAS`);

--
-- Indices de la tabla `UCM_AW_CAU_CAT_Categoria`
--
ALTER TABLE `UCM_AW_CAU_CAT_Categoria`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Nombre` (`Nombre`);

--
-- Indices de la tabla `UCM_AW_CAU_ROL_Rol`
--
ALTER TABLE `UCM_AW_CAU_ROL_Rol`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Rol` (`Rol`);

--
-- Indices de la tabla `UCM_AW_CAU_ROL_SUB`
--
ALTER TABLE `UCM_AW_CAU_ROL_SUB`
  ADD PRIMARY KEY (`Id_ROL`,`Id_SUB`),
  ADD KEY `Id_SUB` (`Id_SUB`);

--
-- Indices de la tabla `UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion`
--
ALTER TABLE `UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `SubCategoriazacionSeccion` (`SubCategoriazacionSeccion`),
  ADD KEY `IdCategoriazacionSeccion` (`IdCategoriazacionSeccion`);

--
-- Indices de la tabla `UCM_AW_CAU_USU_Usuarios`
--
ALTER TABLE `UCM_AW_CAU_USU_Usuarios`
  ADD PRIMARY KEY (`Correo`),
  ADD KEY `Rol` (`Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `UCM_AW_CAU_AVI_Avisos`
--
ALTER TABLE `UCM_AW_CAU_AVI_Avisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `UCM_AW_CAU_CAS_CategoriazacionSeccion`
--
ALTER TABLE `UCM_AW_CAU_CAS_CategoriazacionSeccion`
  MODIFY `Id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `UCM_AW_CAU_CAT_Categoria`
--
ALTER TABLE `UCM_AW_CAU_CAT_Categoria`
  MODIFY `Id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `UCM_AW_CAU_ROL_Rol`
--
ALTER TABLE `UCM_AW_CAU_ROL_Rol`
  MODIFY `Id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion`
--
ALTER TABLE `UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion`
  MODIFY `Id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `UCM_AW_CAU_AVI_Avisos`
--
ALTER TABLE `UCM_AW_CAU_AVI_Avisos`
  ADD CONSTRAINT `UCM_AW_CAU_AVI_Avisos_ibfk_1` FOREIGN KEY (`Usu_Correo_Tec`) REFERENCES `UCM_AW_CAU_USU_Usuarios` (`Correo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `UCM_AW_CAU_AVI_Avisos_ibfk_2` FOREIGN KEY (`Usu_Correo_Tec`) REFERENCES `UCM_AW_CAU_USU_Usuarios` (`Correo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `UCM_AW_CAU_AVI_Avisos_ibfk_3` FOREIGN KEY (`Categoria`) REFERENCES `UCM_AW_CAU_CAT_Categoria` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `UCM_AW_CAU_AVI_Avisos_ibfk_4` FOREIGN KEY (`Categorizacion`) REFERENCES `UCM_AW_CAU_CAS_CategoriazacionSeccion` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `UCM_AW_CAU_AVI_Avisos_ibfk_5` FOREIGN KEY (`SubCategoriazacion`) REFERENCES `UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `UCM_AW_CAU_CAT_CAS`
--
ALTER TABLE `UCM_AW_CAU_CAT_CAS`
  ADD CONSTRAINT `UCM_AW_CAU_CAT_CAS_ibfk_1` FOREIGN KEY (`Id_CAS`) REFERENCES `UCM_AW_CAU_CAS_CategoriazacionSeccion` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `UCM_AW_CAU_CAT_CAS_ibfk_2` FOREIGN KEY (`Id_CAT`) REFERENCES `UCM_AW_CAU_CAT_Categoria` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `UCM_AW_CAU_ROL_SUB`
--
ALTER TABLE `UCM_AW_CAU_ROL_SUB`
  ADD CONSTRAINT `UCM_AW_CAU_ROL_SUB_ibfk_1` FOREIGN KEY (`Id_ROL`) REFERENCES `UCM_AW_CAU_ROL_Rol` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `UCM_AW_CAU_ROL_SUB_ibfk_2` FOREIGN KEY (`Id_SUB`) REFERENCES `UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `UCM_AW_CAU_USU_Usuarios`
--
ALTER TABLE `UCM_AW_CAU_USU_Usuarios`
  ADD CONSTRAINT `UCM_AW_CAU_USU_Usuarios_ibfk_1` FOREIGN KEY (`Rol`) REFERENCES `UCM_AW_CAU_ROL_Rol` (`Id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
