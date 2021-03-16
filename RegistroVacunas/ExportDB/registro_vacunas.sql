-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2021 a las 22:27:20
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_vacunas`
--
CREATE DATABASE IF NOT EXISTS `registro_vacunas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `registro_vacunas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `Id` int(10) NOT NULL,
  `Nombre` tinytext NOT NULL,
  `Apellido` tinytext NOT NULL,
  `Cedula` text NOT NULL,
  `Telefono` tinytext NOT NULL,
  `Fecha_Nacimiento` text NOT NULL,
  `Provincia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`Id`, `Nombre`, `Apellido`, `Cedula`, `Telefono`, `Fecha_Nacimiento`, `Provincia`) VALUES
(1, 'EIMY CAROLINA', 'OLIVO GERALDO', '40230148948', '7896541230', '2001-08-06', 'Maria Trinidad Sanchez'),
(2, 'ERIKA SANDRY', 'OLIVO GERELDO', '40226348932', '7896547896', '1997-07-28', 'Santo Domingo'),
(8, 'BIENVENIDO', 'OLIVO MORENO', '09000099649', '7854123690', '1962-03-22', 'La Vega'),
(9, 'EINSTEIN BIENVENIDO', 'OLIVO GERALDO', '40222088151', '5463210789', '1994-06-26', 'La Romana'),
(10, 'ROSANGELA', 'VICIOSO CARRASCO', '40227992555', '4567896542', '1997-04-04', 'Monte Plata'),
(13, 'JUAN DARIO', 'GERALDO REYES', '09000113689', '4563214560', '1967-01-06', 'Monte Cristi'),
(14, 'WANDERLEY', 'DE LA ROSA BIDO', '22500908318', '1223212310', '1995-11-29', 'La Vega');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `Id` int(50) NOT NULL,
  `Nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`Id`, `Nombre`) VALUES
(1, 'Azua'),
(3, 'Samana'),
(4, 'Bahoruco'),
(5, 'Barahona'),
(6, 'Dajabon'),
(7, 'Distrito Nacional'),
(8, 'Duarte'),
(9, 'Elias Piña'),
(10, 'El Seibo'),
(11, 'Espaillat'),
(12, 'Hato Mayor'),
(13, 'Hermanas Mirabal'),
(14, 'Independencia'),
(15, 'La Altagracia'),
(16, 'La Romana'),
(17, 'La Vega'),
(18, 'Maria Trinidad Sanchez'),
(19, 'Monseñor Nouel'),
(20, 'Monte Cristi'),
(21, 'Monte Plata'),
(22, 'Pedernales'),
(23, 'Peravia'),
(24, 'Puerto Plata'),
(25, 'Sanchez Ramirez'),
(26, 'San Cristobal'),
(27, 'San Jose de Ocoa'),
(28, 'San Juan'),
(29, 'San Pedro de Macoris'),
(30, 'Santiago'),
(31, 'Santiago Rodrigez'),
(32, 'Santo Domingo'),
(33, 'Valverde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunas`
--

CREATE TABLE `vacunas` (
  `Id` int(10) NOT NULL,
  `IdClient` int(10) NOT NULL,
  `type` tinytext NOT NULL,
  `firstDosis` datetime NOT NULL,
  `SecondDosis` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacunas`
--

INSERT INTO `vacunas` (`Id`, `IdClient`, `type`, `firstDosis`, `SecondDosis`) VALUES
(1, 1, 'Rotavirus', '2021-03-11 15:40:16', '2021-03-12 20:14:15'),
(2, 2, 'Gripe', '2021-03-11 17:20:16', '2021-03-11 19:10:25'),
(3, 8, 'Polio', '2021-03-12 20:32:33', '2021-03-12 22:39:25'),
(4, 8, 'Sarampion', '2021-03-12 20:40:09', '2021-03-12 20:42:20'),
(5, 9, 'Rabia', '2021-03-12 21:54:34', '2021-03-12 22:40:18'),
(6, 9, 'Hepatitis A', '2021-03-12 21:59:04', NULL),
(7, 1, 'Polio', '2021-03-12 22:11:05', '2021-03-12 22:36:35'),
(8, 1, 'Fiebre amarilla', '2021-03-12 22:11:05', '2021-03-12 22:11:39'),
(9, 8, 'Hepatitis A', '2021-03-12 22:39:09', NULL),
(10, 9, 'Fiebre amarilla', '2021-03-12 22:39:53', NULL),
(11, 10, 'Gripe', '2021-03-15 13:58:22', NULL),
(14, 13, 'Fiebre amarilla', '2021-03-15 14:18:24', NULL),
(15, 14, 'Polio', '2021-03-15 14:19:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunas_existentes`
--

CREATE TABLE `vacunas_existentes` (
  `Id` int(50) NOT NULL,
  `Nombre` text NOT NULL,
  `cantidad` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacunas_existentes`
--

INSERT INTO `vacunas_existentes` (`Id`, `Nombre`, `cantidad`) VALUES
(1, 'Sarampion', 10),
(2, 'Rotavirus', 10),
(3, 'viruela', 10),
(4, 'Fiebre amarilla', 10),
(5, 'Rabia', 10),
(6, 'Polio', 10),
(7, 'Gripe', 10),
(8, 'Hepatitis A', 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `vacunas`
--
ALTER TABLE `vacunas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Id_cliente` (`IdClient`);

--
-- Indices de la tabla `vacunas_existentes`
--
ALTER TABLE `vacunas_existentes`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `vacunas`
--
ALTER TABLE `vacunas`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `vacunas_existentes`
--
ALTER TABLE `vacunas_existentes`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vacunas`
--
ALTER TABLE `vacunas`
  ADD CONSTRAINT `FK_Id_cliente` FOREIGN KEY (`IdClient`) REFERENCES `client` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
