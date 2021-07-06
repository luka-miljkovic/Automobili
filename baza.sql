/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.11-MariaDB : Database - automobili
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`automobili` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `automobili`;


/*Table structure for table `drzava` */

DROP TABLE IF EXISTS `drzava`;

CREATE TABLE `drzava` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `drzava` */

insert  into `drzava`(`id`,`naziv`) values 
(1,'srbija'),
(2,'US'),
(3,'nemacka');

/*Table structure for table `marka` */

DROP TABLE IF EXISTS `marka`;

CREATE TABLE `marka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(30) DEFAULT NULL,
  `drzava` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `drzava` (`drzava`),
  CONSTRAINT `marka_ibfk_1` FOREIGN KEY (`drzava`) REFERENCES `drzava` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `marka` */

insert  into `marka`(`id`,`naziv`,`drzava`) values 
(1,'BMW',3),
(2,'AUDI',3),
(9,'opel',3),
(10,'ford',2);

/*Table structure for table `model` */

DROP TABLE IF EXISTS `model`;

CREATE TABLE `model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `marka` bigint(20) NOT NULL,
  `naziv` varchar(30) DEFAULT NULL,
  `karoserija` varchar(20) DEFAULT NULL,
  `kubikaza` int(11) DEFAULT NULL,
  `snaga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`marka`),
  KEY `marka` (`marka`),
  CONSTRAINT `model_ibfk_1` FOREIGN KEY (`marka`) REFERENCES `marka` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `model` */

insert  into `model`(`id`,`marka`,`naziv`,`karoserija`,`kubikaza`,`snaga`) values 
(3,2,'A4','limuzina',1900,115),
(4,2,'A6','limuzina',3000,140),
(5,1,'x3','suv',1600,110),
(6,1,'x5','suv',2000,125),
(7,2,'Q5','SUV',2000,110);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
