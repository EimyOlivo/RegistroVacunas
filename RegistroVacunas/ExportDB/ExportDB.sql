/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.18 : Database - registro_vacunas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`registro_vacunas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `registro_vacunas`;

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Nombre` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Apellido` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Cedula` text COLLATE utf8mb4_general_ci NOT NULL,
  `Telefono` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Fecha_Nacimiento` text COLLATE utf8mb4_general_ci NOT NULL,
  `Provincia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `client` */

/*Table structure for table `vacunas` */

DROP TABLE IF EXISTS `vacunas`;

CREATE TABLE `vacunas` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `IdClient` int(10) NOT NULL,
  `type` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `firstDosis` datetime NOT NULL,
  `SecondDosis` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_Id_cliente` (`IdClient`),
  CONSTRAINT `FK_Id_cliente` FOREIGN KEY (`IdClient`) REFERENCES `client` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `vacunas` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
