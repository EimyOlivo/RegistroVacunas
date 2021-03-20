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
  `Longitud` tinytext COLLATE utf8mb4_general_ci,
  `latitud` tinytext COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `client` */

insert  into `client`(`Id`,`Nombre`,`Apellido`,`Cedula`,`Telefono`,`Fecha_Nacimiento`,`Provincia`,`Longitud`,`latitud`) values 
(1,'EIMY CAROLINA','OLIVO GERALDO','40230148948','7896541230','2001-08-06','Maria Trinidad Sanchez','-69.92092601193231','18.508955343979594'),
(2,'ERIKA SANDRY','OLIVO GERELDO','40226348932','7896547896','1997-07-28','Santo Domingo','-69.91296389390969','18.512204967989764'),
(8,'BIENVENIDO','OLIVO MORENO','09000099649','7854123690','1962-03-22','La Vega','-69.90812689186842','18.512496187844594'),
(10,'ROSANGELA','VICIOSO CARRASCO','40227992555','4567896542','1997-04-04','Monte Plata','-69.90646619274321','18.528702013115755'),
(13,'JUAN DARIO','GERALDO REYES','09000113689','4563214560','1967-01-06','Monte Cristi','-69.9038340322455','18.53417977315842'),
(14,'WANDERLEY','DE LA ROSA BIDO','22500908318','1223212310','1995-11-29','La Vega','-69.91654901625816','18.544827897282865'),
(15,'JUAN SANTIAGO','CORDERO NUÑEZ','00109459529','78965412321','1947-05-23','Monseñor Nouel','-70.35726813561126','18.274573290698118'),
(16,'DOMINGO ANTONIO','ESTRELLA PEÑA','40242133326','789874565','1996-12-16','El Seibo','-70.64431331368553','18.49699544207721'),
(17,'DAVID JOSE','MATEO ','40240953303','4125632541','1989-10-14','La Altagracia','-70.896798534353449','19.179491687759302'),
(18,'MARTIRES DE JESUS','GOMEZ ALCANTARA','07300181422','7898789858','1989-12-07','San Pedro de Macoris','-70.12448726256083','19.302141713224568'),
(19,'VICTOR RAFAEL','PEÑA SOSA','40225719828','4565466541','1995-12-08','San Jose de Ocoa','-69.6317500684198','19.23486376883013'),
(20,'ALBERTO','JIMENEZ CABRERA','40242191225','4565874588','1999-06-06','Valverde','-69.4202067562449','19.25872001756343'),
(21,'NATIVIDAD','MARTINEZ DE LA CRUZ','00106531304','7896587485','1900-01-04','San Juan','18.513578518465433','-69.90173104024777');

/*Table structure for table `provincias` */

DROP TABLE IF EXISTS `provincias`;

CREATE TABLE `provincias` (
  `Id` int(50) NOT NULL AUTO_INCREMENT,
  `Nombre` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `provincias` */

insert  into `provincias`(`Id`,`Nombre`) values 
(1,'Las Azua'),
(3,'Samana'),
(4,'Bahoruco'),
(5,'Barahona'),
(6,'Los dajabon'),
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
(33,'Valverde'),
(34,'Los Mamelles'),
(38,'Las Samana'),
(39,'macarena'),
(40,'maria');

/*Table structure for table `vacunas` */

DROP TABLE IF EXISTS `vacunas`;

CREATE TABLE `vacunas` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `IdClient` int(10) NOT NULL,
  `type` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `firstDosis` datetime NOT NULL,
  `SecondDosis` datetime DEFAULT NULL,
  `Lon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Lat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_Id_cliente` (`IdClient`),
  CONSTRAINT `FK_Id_cliente` FOREIGN KEY (`IdClient`) REFERENCES `client` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `vacunas` */

insert  into `vacunas`(`Id`,`IdClient`,`type`,`firstDosis`,`SecondDosis`,`Lon`,`Lat`) values 
(1,1,'Rotavirus','2021-03-11 15:40:16','2021-03-12 20:14:15','-69.89829781271479','18.52224620758149'),
(2,2,'Gripe','2021-03-11 17:20:16','2021-03-11 19:10:25','-69.89100220420718','18.51899078899182'),
(3,8,'Polio','2021-03-12 20:32:33','2021-03-12 22:39:25','-69.91338814540687','18.59858327888566'),
(4,8,'Sarampion','2021-03-12 20:40:09','2021-03-12 20:42:20','-70.91256927135572','19.51037310913228'),
(7,1,'Polio','2021-03-12 22:11:05','2021-03-12 22:36:35','-71.00121719778332','19.233373826293914'),
(8,1,'Fiebre amarilla','2021-03-12 22:11:05','2021-03-12 22:11:39','-71.22124919694424','19.191624192688966'),
(9,8,'Hepatitis A','2021-03-12 22:39:09',NULL,'-71.39197583962806','18.0475715227616'),
(11,10,'Gripe','2021-03-15 13:58:22',NULL,'-71.20880734583213','18.11254202593949'),
(14,13,'Fiebre amarilla','2021-03-15 14:18:24',NULL,'-70.83809551113079','18.630157216913176'),
(15,14,'Polio','2021-03-15 14:19:42',NULL,'-70.80116636288899','18.766713685372316'),
(16,15,'Polio','2021-03-15 17:53:35',NULL,'-70.4482089261271','18.91390930070636'),
(17,16,'Rabia','2021-03-15 17:58:08',NULL,'-70.49152965784361','19.05359167755453'),
(18,17,'Sarampion','2021-03-15 17:58:08',NULL,'-70.07678691550201','18.903159661019572'),
(19,18,'Fiebre amarilla','2021-03-15 18:03:58',NULL,'-69.50793599666456','18.954885980468074'),
(20,19,'Hepatitis A','2021-03-15 18:06:24',NULL,'-68.89079311475335','18.675239755563766'),
(21,20,'Polio','2021-03-15 18:06:24',NULL,'-68.71608983604628','18.37289170314088'),
(22,1,'Gripe','2021-03-15 21:30:14',NULL,'-68.47320966887958','18.495511436891608'),
(23,8,'COVID-19','2021-03-15 22:07:05',NULL,'-68.36313239999612','18.618716463831902'),
(24,21,'Tetano','2021-03-19 21:41:22',NULL,'-68.72248141971721','18.919283863217945');

/*Table structure for table `vacunas_existentes` */

DROP TABLE IF EXISTS `vacunas_existentes`;

CREATE TABLE `vacunas_existentes` (
  `Id` int(50) NOT NULL AUTO_INCREMENT,
  `Nombre` text COLLATE utf8mb4_general_ci NOT NULL,
  `cantidad` int(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `vacunas_existentes` */

insert  into `vacunas_existentes`(`Id`,`Nombre`,`cantidad`) values 
(1,'Sarampion',2),
(2,'Rotavirus',5),
(3,'viruela',7),
(4,'Fiebre amarilla',510),
(5,'Rabia',546),
(6,'Polio',4785),
(7,'Gripe',44),
(8,'Hepatitis A',0),
(9,'COVID-19',561),
(10,'Tetano',151),
(11,'Papa',785);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
