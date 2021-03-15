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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `client` */

insert  into `client`(`Id`,`Nombre`,`Apellido`,`Cedula`,`Telefono`,`Fecha_Nacimiento`,`Provincia`) values 
(1,'EIMY CAROLINA','OLIVO GERALDO','40230148948','7896541230','2001-08-06','Maria Trinidad Sanchez'),
(2,'ERIKA SANDRY','OLIVO GERELDO','40226348932','7896547896','1997-07-28','Santo Domingo'),
(8,'BIENVENIDO','OLIVO MORENO','09000099649','7854123690','1962-03-22','La Vega'),
(9,'EINSTEIN BIENVENIDO','OLIVO GERALDO','40222088151','5463210789','1994-06-26','La Romana'),
(10,'ROSANGELA','VICIOSO CARRASCO','40227992555','4567896542','1997-04-04','Monte Plata'),
(13,'JUAN DARIO','GERALDO REYES','09000113689','4563214560','1967-01-06','Monte Cristi'),
(14,'WANDERLEY','DE LA ROSA BIDO','22500908318','1223212310','1995-11-29','La Vega');

/*Table structure for table `provincias` */

DROP TABLE IF EXISTS `provincias`;

CREATE TABLE `provincias` (
  `Id` int(50) NOT NULL AUTO_INCREMENT,
  `Nombre` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `provincias` */

insert  into `provincias`(`Id`,`Nombre`) values 
(1,'Azua'),
(3,'Samana'),
(4,'Bahoruco'),
(5,'Barahona'),
(6,'Dajabon'),
(7,'Distrito Nacional'),
(8,'Duarte'),
(9,'Elias Piña'),
(10,'El Seibo'),
(11,'Espaillat'),
(12,'Hato Mayor'),
(13,'Hermanas Mirabal'),
(14,'Independencia'),
(15,'La Altagracia'),
(16,'La Romana'),
(17,'La Vega'),
(18,'Maria Trinidad Sanchez'),
(19,'Monseñor Nouel'),
(20,'Monte Cristi'),
(21,'Monte Plata'),
(22,'Pedernales'),
(23,'Peravia'),
(24,'Puerto Plata'),
(25,'Sanchez Ramirez'),
(26,'San Cristobal'),
(27,'San Jose de Ocoa'),
(28,'San Juan'),
(29,'San Pedro de Macoris'),
(30,'Santiago'),
(31,'Santiago Rodrigez'),
(32,'Santo Domingo'),
(33,'Valverde');

/*Table structure for table `vacunas` */

DROP TABLE IF EXISTS `vacunas`;

CREATE TABLE `vacunas` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `IdClient` int(10) NOT NULL,
  `type` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `firstDosis` datetime NOT NULL,
  `SecondDosis` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_Id_cliente` (`IdClient`),
  CONSTRAINT `FK_Id_cliente` FOREIGN KEY (`IdClient`) REFERENCES `client` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `vacunas` */

insert  into `vacunas`(`Id`,`IdClient`,`type`,`firstDosis`,`SecondDosis`) values 
(1,1,'Rotavirus','2021-03-11 15:40:16','2021-03-12 20:14:15'),
(2,2,'Gripe','2021-03-11 17:20:16','2021-03-11 19:10:25'),
(3,8,'Polio','2021-03-12 20:32:33','2021-03-12 22:39:25'),
(4,8,'Sarampion','2021-03-12 20:40:09','2021-03-12 20:42:20'),
(5,9,'Rabia','2021-03-12 21:54:34','2021-03-12 22:40:18'),
(6,9,'Hepatitis A','2021-03-12 21:59:04',NULL),
(7,1,'Polio','2021-03-12 22:11:05','2021-03-12 22:36:35'),
(8,1,'Fiebre amarilla','2021-03-12 22:11:05','2021-03-12 22:11:39'),
(9,8,'Hepatitis A','2021-03-12 22:39:09',NULL),
(10,9,'Fiebre amarilla','2021-03-12 22:39:53',NULL),
(11,10,'Gripe','2021-03-15 13:58:22',NULL),
(14,13,'Fiebre amarilla','2021-03-15 14:18:24',NULL),
(15,14,'Polio','2021-03-15 14:19:42',NULL);

/*Table structure for table `vacunas_existentes` */

DROP TABLE IF EXISTS `vacunas_existentes`;

CREATE TABLE `vacunas_existentes` (
  `Id` int(50) NOT NULL AUTO_INCREMENT,
  `Nombre` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `vacunas_existentes` */

insert  into `vacunas_existentes`(`Id`,`Nombre`) values 
(1,'Sarampion'),
(2,'Rotavirus'),
(3,'viruela'),
(4,'Fiebre amarilla'),
(5,'Rabia'),
(6,'Polio'),
(7,'Gripe'),
(8,'Hepatitis A');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
