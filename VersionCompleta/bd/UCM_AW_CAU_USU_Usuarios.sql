-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-12-2022 a las 22:40:25
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
-- Indices de la tabla `UCM_AW_CAU_USU_Usuarios`
--
ALTER TABLE `UCM_AW_CAU_USU_Usuarios`
  ADD PRIMARY KEY (`Correo`),
  ADD KEY `Rol` (`Rol`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `UCM_AW_CAU_USU_Usuarios`
--
ALTER TABLE `UCM_AW_CAU_USU_Usuarios`
  ADD CONSTRAINT `UCM_AW_CAU_USU_Usuarios_ibfk_1` FOREIGN KEY (`Rol`) REFERENCES `UCM_AW_CAU_ROL_Rol` (`Id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
