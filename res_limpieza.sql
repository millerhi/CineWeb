-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-12-2023 a las 18:13:22
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `res_limpieza`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrolimpieza`
--

DROP TABLE IF EXISTS `registrolimpieza`;
CREATE TABLE IF NOT EXISTS `registrolimpieza` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `Equipo` varchar(255) DEFAULT NULL,
  `DetergenteUtilizado` varchar(255) DEFAULT NULL,
  `RealizadoPor` varchar(50) DEFAULT NULL,
  `AprobadoPor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ;

--
-- Volcado de datos para la tabla `registrolimpieza`
--

INSERT INTO `registrolimpieza` (`ID`, `Fecha`, `Equipo`, `DetergenteUtilizado`, `RealizadoPor`, `AprobadoPor`) VALUES
(13, '2023-12-18', 'Datacenter', 'Limpido', 'auxiliar', 'coordinador'),
(14, '2023-12-18', 'Camara_planta_04', 'escupas', 'auxiliar', 'coordinador'),
(15, '2023-12-18', 'Datacenter', 'PRotector UV', 'auxiliar', 'coordinador'),
(16, '2023-12-18', 'ff', 'Limpido', 'auxiliar', 'coordinador'),
(17, '2023-12-18', 'Pc_claudia', 'EWSWSW', 'auxiliar', 'coordinador');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
