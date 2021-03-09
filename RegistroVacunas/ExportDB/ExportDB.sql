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

/*Table structure for table `registro` */

DROP TABLE IF EXISTS `registro`;

CREATE TABLE `registro` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Nombre` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `Apellido` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `Cedula` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `Telefono` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `Fecha_Nacimiento` time NOT NULL,
  `Provincia` text COLLATE utf8mb4_general_ci NOT NULL,
  `Vacuna` tinyint(1) NOT NULL,
  `1era_Dosis` time NOT NULL,
  `2da_Dosis` time DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `registro` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
