-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-12-2022 a las 23:03:16
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
('0Zc9baKlTmYcq-GNNHrQ1lQiupFcH9cu', 1671066245, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"Correo\":\"admin@prueba.com\",\"Nombre\":\"admin\",\"Rol\":\"Personal de Administración y Servicios (PAS)\",\"Foto\":null,\"NEmpleado\":\"ppppppp\",\"Fecha\":\"2022-12-09T18:05:14.000Z\"}'),
('2Tqn_xRIuNRKvOamW2crKe6E2p1YRz0F', 1671133518, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"Correo\":\"admin@ucm.es\",\"Nombre\":\"admin\",\"Rol\":\"Personal de Administración y Servicios (PAS)\",\"Foto\":null,\"NEmpleado\":\"111-111\",\"Fecha\":\"2022-12-14T19:27:10.000Z\"}'),
('fk7hyqr-DMPs0fM6o4-0PUir4QUne0nq', 1671141431, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"Correo\":\"admin@ucm.es\",\"Nombre\":\"admin\",\"Rol\":\"Alumno\",\"Foto\":{\"type\":\"Buffer\",\"data\":[137,80,78,71,13,10,26,10,0,0,0,13,73,72,68,82,0,0,2,0,0,0,2,0,8,3,0,0,0,195,166,36,200,0,0,0,3,115,66,73,84,8,8,8,219,225,79,224,0,0,0,9,112,72,89,115,0,0,8,243,0,0,8,243,1,123,14,208,178,0,0,0,25,116,69,88,116,83,111,102,116,119,97,114,101,0,119,119,119,46,105,110,107,115,99,97,112,101,46,111,114,103,155,238,60,26,0,0,3,0,80,76,84,69,255,255,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,35,183,225,0,0,0,255,116,82,78,83,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,235,8,217,53,0,0,22,62,73,68,65,84,120,218,237,157,121,116,84,85,158,199,95,37,129,144,132,64,192,176,164,128,102,21,36,24,144,29,89,147,167,50,160,54,9,139,58,136,98,107,183,224,28,167,23,79,211,122,68,250,56,3,99,143,50,10,46,200,232,153,1,5,78,143,54,32,36,208,42,58,112,139,64,128,68,32,2,178,4,8,178,36,84,133,236,251,82,149,170,55,224,120,186,141,38,169,251,94,221,183,221,251,253,28,254,208,115,42,191,247,222,253,126,235,251,187,239,190,170,91,14,9,152,142,99,240,29,67,135,13,27,26,93,91,83,83,91,241,149,235,184,31,67,34,16,195,158,217,90,162,180,160,250,211,101,253,49,46,66,208,255,201,45,133,74,107,248,182,220,137,209,225,156,222,11,255,235,146,210,54,129,221,83,48,70,220,210,125,222,186,51,74,80,62,238,138,145,226,144,216,251,95,207,245,43,84,124,59,1,195,197,23,157,228,127,59,236,83,232,241,254,193,161,251,29,8,84,249,33,125,123,132,223,196,123,169,148,125,233,14,19,100,249,238,72,181,127,181,235,33,47,12,96,8,17,99,71,141,76,74,234,246,253,255,85,92,184,112,238,139,92,102,197,195,70,203,242,180,24,77,127,186,109,33,86,5,116,39,108,244,178,207,106,126,26,192,215,222,185,39,130,65,245,59,127,179,179,66,209,206,6,188,71,245,101,248,179,159,148,181,57,250,165,47,119,11,169,248,144,37,31,223,80,66,100,13,52,210,141,129,191,252,179,39,200,240,87,191,218,83,99,241,126,139,63,188,166,176,224,57,8,165,7,206,69,27,46,83,141,127,253,159,84,79,221,164,158,143,188,127,81,97,69,253,0,168,197,152,219,230,191,123,78,133,2,167,70,169,41,30,151,250,214,55,1,133,37,187,161,24,203,133,152,7,222,248,90,173,62,77,47,134,211,21,143,153,245,218,81,191,194,156,52,220,6,178,33,106,178,44,143,211,52,179,63,152,86,30,236,37,145,119,203,242,132,14,186,156,247,181,196,58,188,115,67,94,136,153,242,71,87,163,246,55,225,105,103,187,171,8,147,150,239,109,80,244,99,57,18,32,52,18,30,154,173,113,33,230,111,92,185,47,191,141,85,132,81,178,60,45,86,223,243,191,56,20,239,96,237,116,95,66,88,244,229,162,145,106,87,17,24,50,9,50,106,94,136,219,225,101,36,130,39,161,101,229,65,193,87,17,152,177,30,66,106,163,255,38,134,147,242,172,191,79,241,156,143,109,188,162,24,72,89,71,104,169,37,252,215,52,50,149,225,237,239,170,198,47,88,159,167,24,205,92,168,169,158,169,5,172,101,120,180,203,207,215,158,8,40,38,176,90,167,49,138,224,87,126,199,11,171,152,95,221,135,97,225,38,93,205,48,24,64,37,241,155,103,235,176,152,96,218,229,232,101,0,110,215,1,122,31,184,157,171,235,241,69,55,235,82,55,140,215,247,255,94,190,244,151,58,12,148,96,0,122,226,190,28,193,219,37,13,134,1,232,137,249,124,52,119,215,228,135,1,232,89,199,225,202,105,29,12,64,205,195,191,144,96,0,129,13,208,239,125,9,6,16,216,0,97,91,226,96,0,145,13,240,228,12,30,245,247,150,195,0,148,55,204,47,113,57,175,205,105,130,1,232,120,98,32,151,6,112,73,48,0,93,0,44,151,96,0,145,13,240,56,159,1,208,120,4,6,160,227,41,62,3,224,80,19,12,64,133,115,50,159,6,208,237,51,129,188,25,96,62,159,207,183,207,167,195,0,116,44,224,51,0,94,11,232,85,153,179,55,76,47,55,151,15,55,10,7,249,144,0,84,76,224,243,233,230,27,186,233,207,155,1,18,185,212,255,200,58,9,6,160,99,4,143,250,87,45,108,134,1,68,54,192,211,87,117,44,206,215,36,48,172,38,154,63,253,255,251,105,61,171,115,244,189,128,184,25,178,204,161,254,228,183,186,150,231,36,1,98,166,202,242,24,46,239,0,118,46,108,130,1,218,71,199,173,89,204,103,227,18,157,55,10,181,185,1,34,198,167,200,83,58,73,220,242,31,207,235,125,4,27,27,192,136,173,89,204,197,253,187,109,18,12,208,58,137,41,114,114,119,137,107,2,239,174,168,150,96,128,86,24,36,203,41,189,37,222,57,190,244,184,17,135,177,155,1,250,200,41,178,0,63,169,213,144,190,249,203,128,4,3,180,164,71,178,44,139,176,93,154,146,181,105,91,181,81,7,179,139,1,186,206,144,83,146,68,216,212,176,144,184,246,22,26,120,60,59,140,105,244,173,85,158,112,1,196,47,113,17,114,209,224,99,90,221,0,29,239,150,83,38,138,176,69,90,101,38,33,103,20,227,143,107,101,3,132,143,147,229,41,81,2,136,95,151,69,72,110,192,156,99,91,213,0,142,91,171,60,93,4,16,191,233,8,33,95,249,76,28,104,43,14,202,29,178,156,124,155,0,226,55,31,117,145,67,141,38,191,211,172,54,40,3,101,57,37,65,0,241,3,39,9,57,88,99,129,168,181,210,160,56,83,100,121,128,0,226,75,103,137,107,127,185,53,78,197,50,6,136,79,150,229,97,34,136,255,45,33,174,34,11,77,182,172,112,18,93,166,203,242,72,17,86,121,174,223,20,255,170,181,78,201,244,97,143,158,34,203,99,133,88,229,217,79,200,5,11,222,110,153,121,240,142,19,101,121,146,8,171,60,85,153,132,156,86,44,121,106,166,25,32,124,172,44,79,137,22,64,252,186,44,23,201,181,238,15,64,155,98,0,71,146,44,207,16,98,149,39,155,144,28,159,165,79,209,120,3,12,147,229,228,120,1,196,111,62,70,92,135,26,44,127,154,198,26,96,192,205,27,125,167,0,226,43,39,9,57,80,99,139,83,53,208,0,67,22,47,28,34,194,141,254,57,66,172,178,202,99,33,3,196,61,252,196,100,1,196,255,214,69,72,145,173,206,216,24,3,116,89,185,180,19,247,226,187,9,33,87,109,119,214,134,24,224,31,215,240,254,120,167,212,229,34,231,109,121,230,6,24,96,216,187,247,112,45,126,213,1,66,190,81,236,122,246,250,27,96,209,70,142,215,250,234,179,136,235,184,223,206,87,160,187,1,158,125,135,215,167,60,222,91,171,60,94,187,95,133,222,234,172,88,197,165,248,254,99,132,216,96,149,199,116,3,56,222,120,142,63,241,149,147,46,114,160,154,151,171,209,119,135,144,231,184,211,63,143,144,253,101,60,93,144,174,9,48,58,155,171,249,223,101,226,34,30,222,28,173,167,1,98,142,243,243,25,47,183,139,144,43,60,206,102,244,108,1,111,113,162,127,153,139,184,242,120,189,145,213,49,1,30,220,205,193,248,84,31,32,228,148,34,241,139,142,6,56,54,214,230,99,83,127,136,16,123,175,242,152,218,2,238,179,181,254,222,108,23,201,246,74,252,163,159,1,94,180,237,152,248,143,19,114,168,94,18,3,221,90,192,196,108,91,142,135,114,138,184,50,171,37,113,208,45,1,236,184,4,116,158,144,253,165,146,88,232,149,0,142,82,155,109,226,118,133,16,151,91,18,15,189,18,32,201,78,250,123,92,132,92,150,196,68,47,3,216,230,7,156,203,246,19,146,39,137,139,94,6,72,182,195,197,87,31,36,228,164,34,9,141,78,115,0,71,177,213,191,251,209,112,136,144,99,126,73,120,116,50,64,215,74,43,95,180,55,135,184,142,120,33,190,142,45,192,186,95,252,243,231,18,146,85,15,225,117,54,64,87,75,94,172,242,13,33,7,170,32,186,152,9,112,225,230,141,126,41,4,23,211,0,87,111,138,127,29,98,27,104,0,11,237,252,80,228,34,228,91,8,109,176,1,10,172,113,117,229,251,9,57,7,145,77,184,13,140,53,255,129,90,205,1,226,58,161,64,97,115,12,32,93,55,117,31,136,134,195,132,28,107,134,186,230,181,0,41,207,52,3,248,114,8,201,110,130,178,102,27,64,54,227,106,252,95,19,146,85,7,85,45,96,128,175,13,191,18,229,52,33,153,88,229,177,202,28,160,187,199,208,47,5,93,112,17,87,9,212,180,144,1,164,29,115,141,186,132,107,132,16,172,242,88,206,0,105,59,141,56,253,162,155,239,252,75,80,209,138,6,232,224,209,251,55,63,202,51,9,57,11,5,45,203,58,69,71,170,63,253,253,232,48,140,177,149,19,64,234,127,86,167,7,2,141,135,9,57,138,85,30,235,243,130,14,239,124,111,214,202,228,72,12,173,45,18,64,234,112,34,145,105,189,64,174,139,28,196,42,143,125,12,32,77,207,100,86,74,57,67,72,102,37,228,178,25,31,176,201,253,11,239,61,220,19,131,105,71,162,14,132,44,254,181,15,23,247,197,64,218,150,174,185,161,136,95,244,209,211,131,49,134,246,166,231,121,141,226,151,239,252,245,8,12,31,7,252,236,154,122,241,107,62,91,54,6,171,60,188,208,107,143,42,241,27,246,173,152,28,129,81,227,234,70,115,153,151,118,149,231,208,170,148,78,24,48,254,24,159,31,92,124,255,177,213,179,59,99,168,56,37,118,121,81,187,234,159,126,59,173,27,70,137,107,58,45,189,216,134,248,23,223,127,4,171,60,34,16,182,96,123,233,79,86,121,54,61,209,15,35,99,242,20,205,200,99,37,165,200,227,227,162,110,253,103,195,197,243,23,242,178,243,49,254,66,25,224,255,9,239,28,219,185,190,0,95,217,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,21,14,243,79,33,50,193,153,224,236,238,16,110,232,3,229,110,183,199,227,21,217,0,131,231,140,74,112,58,187,139,252,6,84,110,185,224,68,198,21,241,12,224,24,151,154,122,39,18,248,123,78,101,100,28,23,201,0,29,83,210,230,56,33,123,11,10,51,50,246,251,196,48,64,231,101,207,117,129,224,173,80,249,250,90,195,127,211,52,220,240,171,140,88,186,227,1,108,246,217,42,157,228,167,170,141,254,53,115,195,19,96,254,191,223,14,165,219,225,220,139,25,60,27,96,218,234,73,208,56,8,89,207,31,225,213,0,221,54,204,133,190,20,108,93,82,197,165,1,134,239,26,2,113,169,200,155,115,209,168,67,25,184,31,223,253,217,208,159,146,59,114,238,229,239,46,224,15,27,177,5,28,53,81,139,42,115,248,50,64,228,7,203,28,208,85,69,50,207,238,251,133,159,163,57,64,239,244,137,16,85,237,221,192,188,18,110,12,208,45,7,55,255,234,57,123,183,1,191,193,110,200,36,48,252,47,208,95,3,137,255,99,128,58,134,204,1,222,124,20,106,106,97,104,212,94,46,12,240,171,87,160,165,54,166,92,58,197,193,28,96,234,190,142,144,82,35,141,51,190,178,189,1,250,31,237,1,33,53,227,25,231,182,249,36,48,38,3,250,135,64,66,186,206,203,103,186,207,1,254,117,1,84,12,133,62,190,76,93,235,235,221,2,250,92,140,130,136,33,81,59,184,216,206,9,176,118,2,36,12,141,142,209,159,217,56,1,18,79,133,67,194,16,241,37,234,185,173,190,206,147,192,87,161,127,200,116,248,147,125,19,96,122,38,244,99,192,164,28,187,26,32,27,207,0,89,112,96,134,77,91,192,124,232,207,38,72,31,176,169,1,126,9,237,216,240,43,123,182,128,206,165,248,2,8,27,234,227,27,236,152,0,179,160,63,35,162,103,218,178,5,164,65,57,235,15,165,142,45,32,162,24,191,7,203,138,178,94,126,251,37,192,116,232,207,140,219,166,218,176,5,164,66,55,27,244,0,29,91,192,149,254,208,141,221,96,14,180,93,2,12,135,254,12,25,48,220,118,6,24,0,213,236,48,156,250,25,0,123,0,217,98,56,97,0,24,64,39,18,32,154,29,134,19,9,128,4,128,1,96,0,180,0,97,91,128,110,11,65,97,77,17,80,141,33,205,145,1,123,37,64,60,115,253,155,11,61,108,159,136,4,110,20,48,222,155,181,236,138,110,207,237,35,226,117,170,171,215,9,51,221,6,253,74,250,190,66,119,137,34,133,247,116,246,155,153,198,32,13,75,50,246,92,245,220,104,150,28,241,9,125,103,204,101,176,123,65,237,231,187,243,221,183,246,126,143,115,58,39,206,29,171,71,4,216,45,179,26,20,70,20,172,28,221,178,107,77,90,93,18,82,193,138,181,211,91,6,95,226,75,23,67,42,216,184,225,71,155,223,246,251,205,81,133,49,205,182,219,98,233,50,155,11,175,120,190,149,111,71,118,89,85,171,93,173,215,91,249,129,130,136,127,42,210,92,208,191,169,181,167,30,11,206,179,53,192,13,219,205,90,142,176,184,108,239,234,54,62,84,208,251,189,128,182,138,155,126,214,122,193,152,63,214,105,43,184,103,100,27,205,245,153,98,150,6,56,99,59,3,236,100,112,213,37,237,124,32,62,181,70,67,193,134,69,109,23,28,93,160,161,96,96,69,219,5,251,229,50,52,128,253,190,98,243,159,161,95,244,233,118,31,130,39,169,111,50,238,118,191,168,144,144,163,186,96,109,187,155,31,71,111,99,103,128,237,182,51,192,203,33,95,243,158,216,246,143,208,35,91,101,193,83,125,218,47,216,105,187,90,67,141,10,178,202,242,10,51,3,188,103,59,3,44,13,245,146,79,198,4,59,68,15,117,25,112,163,95,176,130,145,135,213,205,39,131,127,243,233,3,86,6,88,101,59,3,164,134,120,197,197,20,159,40,74,82,51,15,104,162,248,96,101,175,107,106,78,113,113,240,130,42,45,213,54,191,181,157,1,38,134,118,193,77,84,159,131,77,85,113,47,64,245,253,170,187,84,220,11,188,78,83,176,119,1,27,3,44,178,157,1,250,135,118,193,255,66,119,148,247,168,11,238,164,43,248,59,250,41,42,221,222,7,255,192,198,0,51,109,103,128,200,208,214,61,58,211,29,165,55,237,138,144,111,24,93,193,142,212,243,138,251,41,7,226,75,38,6,24,99,191,231,87,229,161,92,239,179,180,71,89,69,89,112,61,109,193,69,148,5,9,109,193,187,2,44,12,208,207,126,6,56,27,194,229,230,119,160,61,74,23,186,231,2,53,189,104,11,58,190,166,91,1,162,127,224,179,153,133,1,244,218,108,77,199,111,6,21,133,240,183,235,169,159,211,86,127,64,245,178,143,168,215,210,149,119,168,94,150,69,255,83,175,111,50,24,204,250,6,177,12,144,193,250,165,42,10,238,242,51,46,152,91,16,250,96,234,246,219,17,214,52,192,153,75,42,30,58,209,236,163,88,183,143,190,96,233,65,198,6,144,118,133,62,152,165,98,25,64,205,232,6,254,74,241,162,47,26,85,84,164,185,97,60,155,175,211,229,192,0,183,248,95,214,47,86,85,240,75,214,5,247,135,254,105,30,193,90,64,1,235,23,155,91,208,87,132,4,80,135,155,245,139,85,21,172,171,102,92,80,114,11,153,0,30,205,127,89,217,192,250,56,204,245,242,24,108,0,59,38,64,89,179,49,214,105,172,8,250,146,230,18,214,199,119,27,244,94,176,179,1,2,154,247,185,175,102,253,242,186,0,235,227,87,235,121,65,156,180,0,169,72,2,172,40,133,1,196,6,9,32,54,129,114,24,64,104,42,2,48,0,58,0,12,128,57,160,189,12,224,129,112,72,0,32,112,2,192,0,130,27,160,182,14,202,9,221,2,16,1,130,39,0,12,0,3,0,180,0,128,4,0,72,0,16,10,141,117,246,52,0,150,2,45,223,1,144,0,130,119,0,24,0,9,160,35,197,10,180,19,58,1,124,101,208,78,232,4,64,15,128,1,128,200,45,0,6,64,2,0,161,19,0,43,65,72,0,0,3,128,16,81,202,96,0,161,169,108,134,1,208,1,108,105,128,114,47,212,179,246,77,128,206,6,144,110,64,61,161,19,0,61,64,244,4,128,1,4,79,0,172,4,161,5,0,180,0,128,4,0,72,0,128,4,0,48,0,80,141,183,218,190,6,104,168,134,126,150,14,0,189,13,128,8,176,248,28,16,6,64,2,232,11,150,2,209,2,0,90,0,64,2,0,24,0,160,5,0,36,0,16,42,1,74,2,16,80,232,4,240,151,64,64,161,13,128,149,160,144,169,242,217,218,0,152,4,88,58,0,96,0,193,231,128,48,0,18,0,6,128,1,96,0,180,0,24,0,9,0,3,32,1,96,0,36,0,107,170,26,32,161,208,6,64,4,8,222,2,96,0,36,0,8,133,230,74,24,0,1,0,3,192,0,48,0,230,128,48,0,18,0,6,128,1,96,0,180,0,24,0,9,96,31,3,120,203,33,162,208,9,128,8,16,60,1,96,0,24,0,160,5,0,36,0,208,66,77,19,12,128,0,128,1,96,0,27,27,0,223,14,180,240,28,16,9,128,4,208,157,178,102,200,40,180,1,20,252,114,148,216,45,0,61,64,240,4,128,1,144,0,0,9,0,96,0,128,22,0,84,226,175,224,192,0,88,10,212,78,153,130,4,192,20,0,6,128,1,108,109,128,186,90,8,105,213,57,160,33,6,64,4,8,158,0,48,0,18,0,32,1,0,12,0,4,109,1,88,9,66,2,0,24,0,224,46,0,168,164,190,129,11,3,20,43,144,210,162,1,96,140,1,154,75,33,165,69,167,0,198,24,0,61,0,6,0,34,183,0,24,64,244,4,192,74,16,18,0,96,14,0,96,0,128,22,0,144,0,64,180,4,168,104,130,150,90,8,148,115,98,0,9,91,4,104,123,227,4,120,49,0,122,128,69,59,0,12,32,248,28,208,40,3,96,41,80,112,3,32,1,208,2,0,18,0,32,1,0,18,0,192,0,64,180,22,208,88,5,53,133,78,0,68,128,224,9,128,149,32,77,185,89,135,4,64,7,128,1,208,1,96,0,36,0,12,128,4,128,1,144,0,48,0,12,0,3,160,5,216,210,0,37,126,232,41,116,2,4,138,161,167,208,6,64,15,16,188,5,192,0,72,0,160,18,165,12,6,16,154,202,102,24,0,29,0,6,192,28,16,6,64,2,192,0,72,0,24,0,9,96,107,3,84,215,67,81,161,13,128,8,16,188,5,192,0,72,0,128,4,0,72,0,0,3,0,26,188,213,48,0,2,0,6,128,1,120,49,0,190,29,104,197,155,0,3,13,112,3,191,28,37,118,2,248,202,161,169,208,9,128,73,128,224,9,0,3,192,0,0,45,0,32,1,0,18,0,136,152,0,88,9,66,11,0,244,84,249,96,0,4,0,87,6,40,247,65,85,203,205,1,141,52,128,130,95,142,18,59,1,208,3,96,0,32,114,11,128,1,144,0,0,6,0,226,182,0,44,5,34,1,0,38,129,0,9,0,130,211,92,201,159,1,234,107,160,171,213,2,192,80,3,32,2,96,0,96,177,57,32,12,128,4,128,1,96,0,163,192,74,16,90,0,64,11,0,72,0,128,4,0,2,26,160,56,0,97,133,110,1,254,82,8,43,116,2,160,7,80,83,219,4,3,160,3,192,0,232,0,156,25,0,75,129,72,0,32,114,2,192,0,48,0,64,11,0,72,0,32,102,2,84,54,66,90,161,19,64,194,22,1,130,27,0,61,64,236,22,128,149,32,74,252,21,72,0,161,41,83,96,0,76,1,96,0,24,0,6,192,28,80,68,3,196,169,43,26,252,229,177,225,140,11,170,60,197,56,36,128,42,3,56,85,213,140,238,26,252,42,123,169,170,232,100,125,138,78,24,64,149,1,98,59,179,30,93,167,205,12,192,109,11,104,170,100,63,96,204,13,208,37,6,9,160,27,116,43,65,3,212,148,28,96,249,130,81,61,145,0,234,122,192,108,53,37,103,179,46,248,0,197,107,102,169,41,56,51,28,9,160,206,0,169,42,42,118,160,17,87,142,85,81,113,46,197,107,6,142,84,81,48,85,130,1,212,25,96,96,18,125,197,228,174,20,47,234,168,226,29,219,119,28,99,81,195,30,196,58,128,74,3,72,105,244,21,211,152,23,116,48,46,56,165,135,218,81,170,111,144,120,101,177,66,133,39,134,182,96,175,26,170,130,77,131,168,91,74,62,221,41,222,75,125,205,187,21,181,92,225,86,127,105,38,229,16,172,160,45,184,142,178,224,199,180,5,255,153,178,96,174,131,178,96,178,106,253,149,99,252,26,96,36,229,16,84,199,211,213,27,226,165,44,24,24,79,87,48,246,6,173,74,143,209,21,116,28,85,111,128,61,252,26,160,39,237,24,188,77,87,111,43,245,160,102,210,189,99,87,210,231,116,20,85,193,71,213,235,175,108,225,215,0,97,62,218,119,236,124,154,114,207,168,24,213,151,105,10,222,235,163,47,248,17,77,193,161,21,26,12,176,150,95,3,72,215,105,7,161,110,12,69,123,85,33,151,18,88,16,188,224,237,229,106,116,122,41,120,193,174,121,26,244,87,150,115,108,128,227,212,163,80,144,16,172,214,160,82,85,195,90,55,154,177,92,129,160,247,130,97,159,105,209,95,89,194,177,1,62,165,31,134,83,253,219,47,53,236,162,202,113,117,7,89,226,233,145,165,178,96,237,207,219,47,24,185,89,147,254,202,60,142,13,176,65,197,56,20,79,109,175,210,172,74,213,3,91,255,72,123,5,147,46,171,46,232,127,161,189,130,9,71,180,233,175,76,227,216,0,175,168,25,136,166,167,218,46,180,204,175,101,104,87,182,125,47,144,90,163,165,224,150,200,54,11,142,47,212,168,191,50,156,99,3,252,90,221,80,236,26,209,122,153,9,46,141,99,123,100,122,235,5,7,254,57,160,173,224,249,54,110,87,226,223,108,210,170,191,210,131,99,3,60,164,54,100,55,246,107,229,222,106,155,162,157,191,222,217,74,247,127,75,187,90,74,246,140,159,22,140,94,81,165,189,160,63,140,99,3,76,83,61,28,13,91,23,118,249,97,133,219,126,177,203,167,132,130,255,243,37,45,62,35,24,51,111,75,117,72,5,149,67,191,31,220,226,113,194,125,235,111,132,82,206,200,221,244,28,70,27,224,246,11,26,254,200,75,246,21,186,61,238,240,4,167,179,223,204,233,225,161,159,69,224,240,158,171,30,183,199,155,224,76,232,59,99,102,39,6,215,245,205,238,124,183,219,83,211,251,230,41,78,124,48,46,180,90,121,195,57,54,64,103,252,112,80,80,178,12,188,11,48,188,219,212,214,65,224,96,24,217,2,140,159,110,224,203,65,65,41,129,1,144,0,48,0,18,0,6,64,2,192,0,48,0,12,128,22,0,3,32,1,56,50,0,246,137,66,2,128,118,105,172,227,218,0,197,10,36,182,78,0,152,96,0,31,126,57,202,74,25,105,194,147,103,55,36,182,208,0,193,0,48,0,110,3,44,134,7,9,128,4,128,1,96,0,180,0,180,0,36,0,18,0,6,16,142,102,206,23,130,164,235,232,1,237,114,76,225,220,0,202,110,136,220,30,233,18,231,6,144,50,32,178,117,12,224,48,225,10,35,75,59,67,230,54,201,27,206,125,2,52,237,129,204,86,9,0,83,12,128,30,96,33,3,152,209,2,164,110,197,17,16,186,173,155,228,190,10,255,9,80,113,16,66,183,197,46,131,63,47,99,206,55,209,63,129,208,86,25,26,83,90,128,20,149,239,132,212,173,114,100,178,193,7,12,55,229,50,155,171,230,64,235,86,121,244,154,16,9,32,133,159,74,132,216,173,221,31,165,73,66,36,128,164,20,44,132,218,63,197,63,223,240,79,204,154,181,29,209,110,220,8,180,194,198,115,134,31,210,97,214,181,78,204,134,222,63,166,126,136,241,15,74,77,219,144,44,103,59,4,255,49,107,76,120,80,110,90,2,72,67,78,196,64,242,22,20,38,154,176,129,150,121,91,18,230,63,129,239,136,181,160,33,205,140,13,212,194,205,187,224,115,74,10,84,255,1,143,237,149,196,50,128,148,153,56,2,178,255,141,85,235,76,57,172,195,204,107,142,202,26,3,225,191,103,199,2,69,60,3,72,125,143,246,134,244,223,113,114,138,73,27,104,154,187,47,117,97,90,19,180,191,69,241,28,179,54,80,53,121,99,242,156,69,141,80,95,146,74,231,92,51,235,208,14,179,175,125,66,122,130,240,250,159,158,115,217,180,99,155,254,211,4,95,141,63,46,186,254,187,39,155,167,191,249,6,144,174,79,251,139,216,250,191,150,102,230,14,250,225,230,15,64,243,246,64,178,67,88,249,155,158,92,99,234,138,168,53,70,126,222,102,81,159,11,20,205,53,249,169,168,53,126,158,104,199,93,219,132,148,223,183,126,148,217,79,197,45,147,189,227,87,39,139,38,191,178,237,165,124,211,79,194,66,205,119,246,171,35,133,210,159,188,112,76,2,45,218,209,227,87,20,97,56,49,203,26,131,110,173,233,119,228,227,243,238,233,40,128,213,107,63,223,250,137,2,3,180,74,236,236,180,251,187,114,173,254,141,93,233,251,172,243,8,196,138,55,224,29,146,211,82,251,112,170,126,126,122,250,145,128,149,78,200,162,43,48,142,62,9,78,231,119,255,122,240,176,70,228,47,118,187,61,223,253,179,220,102,249,255,7,175,250,103,169,189,173,7,207,0,0,0,0,73,69,78,68,174,66,96,130]},\"NEmpleado\":null,\"Fecha\":\"2022-12-14T21:56:35.000Z\"}'),
('oFCBK-7t-zU1zcQXMzY4S1mkeq5W7GH0', 1671140356, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"Correo\":\"admin@ucm.es\",\"Nombre\":\"admin\",\"Rol\":\"Personal de Administración y Servicios (PAS)\",\"Foto\":null,\"NEmpleado\":\"111-111\",\"Fecha\":\"2022-12-14T19:27:10.000Z\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UCM_AW_CAU_AVI_Avisos`
--

CREATE TABLE `UCM_AW_CAU_AVI_Avisos` (
  `id` int(11) NOT NULL,
  `Usu_Correo_Usu` varchar(45) DEFAULT NULL,
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
  `NEmpleado` char(8) DEFAULT NULL
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
  ADD KEY `Categoria` (`Categoria`),
  ADD KEY `Categorizacion` (`Categorizacion`),
  ADD KEY `SubCategoriazacion` (`SubCategoriazacion`),
  ADD KEY `UCM_AW_CAU_AVI_Avisos_ibfk_1` (`Usu_Correo_Tec`),
  ADD KEY `Usu_Correo_Usu` (`Usu_Correo_Usu`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
  ADD CONSTRAINT `UCM_AW_CAU_AVI_Avisos_ibfk_1` FOREIGN KEY (`Usu_Correo_Tec`) REFERENCES `UCM_AW_CAU_USU_Usuarios` (`Correo`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `UCM_AW_CAU_AVI_Avisos_ibfk_3` FOREIGN KEY (`Categoria`) REFERENCES `UCM_AW_CAU_CAT_Categoria` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `UCM_AW_CAU_AVI_Avisos_ibfk_4` FOREIGN KEY (`Categorizacion`) REFERENCES `UCM_AW_CAU_CAS_CategoriazacionSeccion` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `UCM_AW_CAU_AVI_Avisos_ibfk_5` FOREIGN KEY (`SubCategoriazacion`) REFERENCES `UCM_AW_CAU_SCS_SUB_SubCategoriazacionSeccion` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `UCM_AW_CAU_AVI_Avisos_ibfk_6` FOREIGN KEY (`Usu_Correo_Usu`) REFERENCES `UCM_AW_CAU_USU_Usuarios` (`Correo`) ON DELETE SET NULL;

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
