/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - canteen
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`canteen` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `canteen`;

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `reg` varchar(200) DEFAULT NULL,
  `sanme` varchar(200) DEFAULT NULL,
  `times` varchar(200) DEFAULT NULL,
  `dates` varchar(200) DEFAULT NULL,
  `atten` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attendance` */

insert  into `attendance`(`reg`,`sanme`,`times`,`dates`,`atten`) values ('4','niki','09:50 AM','2024-07-17','1');

/*Table structure for table `dregister` */

DROP TABLE IF EXISTS `dregister`;

CREATE TABLE `dregister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `simage` varchar(200) DEFAULT NULL,
  `sno` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `ano` varchar(200) DEFAULT NULL,
  `ifsc` varchar(200) DEFAULT NULL,
  `brach` varchar(200) DEFAULT NULL,
  `micr` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Enable',
  `tcost` varchar(200) DEFAULT NULL,
  `atten` varchar(200) DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `dregister` */

insert  into `dregister`(`id`,`simage`,`sno`,`sname`,`pass`,`mail`,`mobile`,`dob`,`ano`,`ifsc`,`brach`,`micr`,`address`,`status`,`tcost`,`atten`) values (4,'emirates (2).jpg','123','niki','niki','niki@gmail.com','9987654321','12/12/2222','20385728380723','IbIc3478652','chennai','123','chennai','Enable',' 15000','0');

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fno` varchar(200) DEFAULT NULL,
  `fimage` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fdes` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `ready` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Enable',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `food` */

insert  into `food`(`id`,`fno`,`fimage`,`fname`,`fdes`,`cost`,`ready`,`status`) values (5,'123','download.jpg','machine','manual machine','12000','1','Enable');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `fimage` varchar(2000) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fdes` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `ready` varchar(200) DEFAULT NULL,
  `pay` varchar(200) DEFAULT NULL,
  `qan` varchar(200) DEFAULT NULL,
  `totcost` varchar(200) DEFAULT NULL,
  `address` varchar(2000) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

/*Table structure for table `ordertran` */

DROP TABLE IF EXISTS `ordertran`;

CREATE TABLE `ordertran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `fimage` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fdes` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `ready` varchar(200) DEFAULT NULL,
  `pay` varchar(200) DEFAULT NULL,
  `qan` varchar(200) DEFAULT NULL,
  `totcost` varchar(200) DEFAULT NULL,
  `address` varbinary(200) DEFAULT NULL,
  `bank` varchar(200) DEFAULT NULL,
  `brach` varchar(200) DEFAULT NULL,
  `ifsc` varchar(200) DEFAULT NULL,
  `exp` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `ordertran` */

insert  into `ordertran`(`id`,`sid`,`sname`,`fimage`,`fname`,`fdes`,`cost`,`ready`,`pay`,`qan`,`totcost`,`address`,`bank`,`brach`,`ifsc`,`exp`,`status`) values (2,'123','niki','download.jpg','machine','manual machine','12000','1','Online_Payment','2','null','chennai','Indian Bank','chennai','IbIc3478652','12/24','Waiting');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `sno` varchar(200) DEFAULT NULL,
  `simage` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`sno`,`simage`,`sname`,`pass`,`mail`,`mobile`,`dob`,`address`) values (3,'123','emirates (2).jpg','niki','123','niki@gmail.com','9987654321','12/12/2222','chennai');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
