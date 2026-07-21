/*
SQLyog Community v8.71 
MySQL - 5.5.30 : Database - MJNS09_2025
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`MJNS09_2025` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `MJNS09_2025`;

/*Table structure for table `filea` */

DROP TABLE IF EXISTS `filea`;

CREATE TABLE `filea` (
  `filename` varchar(200) DEFAULT NULL,
  `filesize` double unsigned zerofill DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL,
  `keyy` varchar(115) DEFAULT NULL,
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filea` */

/*Table structure for table `fileb` */

DROP TABLE IF EXISTS `fileb`;

CREATE TABLE `fileb` (
  `filename` varchar(200) DEFAULT NULL,
  `filesize` double unsigned zerofill DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL,
  `keyy` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fileb` */

/*Table structure for table `filec` */

DROP TABLE IF EXISTS `filec`;

CREATE TABLE `filec` (
  `filename` varchar(40) DEFAULT NULL,
  `filesize` double unsigned zerofill DEFAULT NULL,
  `filepath` varchar(500) DEFAULT NULL,
  `keyy` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filec` */

/*Table structure for table `filed` */

DROP TABLE IF EXISTS `filed`;

CREATE TABLE `filed` (
  `filename` varchar(90) DEFAULT NULL,
  `filesize` double unsigned zerofill DEFAULT NULL,
  `filepath` varchar(400) DEFAULT NULL,
  `keyy` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filed` */

/*Table structure for table `keyinsert` */

DROP TABLE IF EXISTS `keyinsert`;

CREATE TABLE `keyinsert` (
  `fileName` varchar(20) DEFAULT NULL,
  `recipient` varchar(20) DEFAULT NULL,
  `fileOwner` varchar(20) DEFAULT NULL,
  `key` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `keyinsert` */

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `username` varchar(320) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `rpassword` varchar(30) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `mailid` varchar(40) DEFAULT NULL,
  `number` varchar(302) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `Dat` varchar(50) DEFAULT NULL,
  `Nat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

/*Table structure for table `reqkey` */

DROP TABLE IF EXISTS `reqkey`;

CREATE TABLE `reqkey` (
  `fromuser` varchar(20) DEFAULT NULL,
  `fileName` varchar(20) DEFAULT NULL,
  `touser` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reqkey` */

/*Table structure for table `sendfiles` */

DROP TABLE IF EXISTS `sendfiles`;

CREATE TABLE `sendfiles` (
  `filename` varchar(40) DEFAULT NULL,
  `filepath` varchar(500) DEFAULT NULL,
  `keyy` varchar(45) DEFAULT NULL,
  `SenderName` varchar(45) NOT NULL,
  `ReciverName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sendfiles` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
