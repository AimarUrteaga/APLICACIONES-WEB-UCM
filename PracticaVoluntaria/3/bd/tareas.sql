-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-10-2022 a las 13:54:02
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
-- Base de datos: `tareas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aw_tareas_etiquetas`
--

CREATE TABLE `aw_tareas_etiquetas` (
  `idEtiqueta` int(11) NOT NULL,
  `texto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aw_tareas_etiquetas`
--

INSERT INTO `aw_tareas_etiquetas` (`idEtiqueta`, `texto`) VALUES
(1, 'Universidad'),
(2, 'AW'),
(3, 'TP'),
(4, 'Práctica'),
(5, 'Personal'),
(6, 'Académico'),
(7, 'Deporte'),
(8, 'Básico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aw_tareas_tareas`
--

CREATE TABLE `aw_tareas_tareas` (
  `idTarea` int(11) NOT NULL,
  `texto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aw_tareas_tareas`
--

INSERT INTO `aw_tareas_tareas` (`idTarea`, `texto`) VALUES
(1, 'Preparar prácticas AW'),
(2, 'Mirar fechas de congreso'),
(3, 'Ir al Supermercado'),
(4, 'Jugar al Fútbol'),
(5, 'Hablar con el profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aw_tareas_tareas_etiquetas`
--

CREATE TABLE `aw_tareas_tareas_etiquetas` (
  `idTarea` int(11) NOT NULL,
  `idEtiqueta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aw_tareas_tareas_etiquetas`
--

INSERT INTO `aw_tareas_tareas_etiquetas` (`idTarea`, `idEtiqueta`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 6),
(3, 5),
(3, 6),
(4, 5),
(4, 7),
(5, 1),
(5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aw_tareas_user_tareas`
--

CREATE TABLE `aw_tareas_user_tareas` (
  `idUser` int(11) NOT NULL,
  `idTarea` int(11) NOT NULL,
  `hecho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aw_tareas_user_tareas`
--

INSERT INTO `aw_tareas_user_tareas` (`idUser`, `idTarea`, `hecho`) VALUES
(1, 1, 0),
(1, 2, 1),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(2, 3, 0),
(2, 4, 0),
(2, 5, 0),
(3, 1, 0),
(3, 2, 0),
(3, 3, 1),
(3, 4, 0),
(4, 1, 1),
(4, 2, 0),
(4, 3, 1),
(4, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aw_tareas_usuarios`
--

CREATE TABLE `aw_tareas_usuarios` (
  `idUser` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aw_tareas_usuarios`
--

INSERT INTO `aw_tareas_usuarios` (`idUser`, `email`, `password`, `img`) VALUES
(1, 'aitor.tilla@ucm.es', 'aitor', 'aitor.jpg'),
(2, 'felipe.lotas@ucm.es', 'felipe', 'felipe.jpg'),
(3, 'steve.curros@ucm.es', 'steve', 'steve.jpg'),
(4, 'bill.puertas@ucm.es', 'bill', 'bill.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aw_tareas_etiquetas`
--
ALTER TABLE `aw_tareas_etiquetas`
  ADD PRIMARY KEY (`idEtiqueta`);

--
-- Indices de la tabla `aw_tareas_tareas`
--
ALTER TABLE `aw_tareas_tareas`
  ADD PRIMARY KEY (`idTarea`);

--
-- Indices de la tabla `aw_tareas_tareas_etiquetas`
--
ALTER TABLE `aw_tareas_tareas_etiquetas`
  ADD PRIMARY KEY (`idTarea`,`idEtiqueta`);

--
-- Indices de la tabla `aw_tareas_user_tareas`
--
ALTER TABLE `aw_tareas_user_tareas`
  ADD PRIMARY KEY (`idUser`,`idTarea`);

--
-- Indices de la tabla `aw_tareas_usuarios`
--
ALTER TABLE `aw_tareas_usuarios`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aw_tareas_etiquetas`
--
ALTER TABLE `aw_tareas_etiquetas`
  MODIFY `idEtiqueta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `aw_tareas_tareas`
--
ALTER TABLE `aw_tareas_tareas`
  MODIFY `idTarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `aw_tareas_usuarios`
--
ALTER TABLE `aw_tareas_usuarios`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
