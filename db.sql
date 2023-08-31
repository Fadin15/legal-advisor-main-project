/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 5.5.20-log : Database - legal advisor
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`legal advisor` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `legal advisor`;

/*Table structure for table `advocate` */

DROP TABLE IF EXISTS `advocate`;

CREATE TABLE `advocate` (
  `adv id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `login id` varchar(60) NOT NULL,
  `first name` varchar(60) NOT NULL,
  `last name` varchar(60) NOT NULL,
  `gender` varchar(60) NOT NULL,
  `place` varchar(60) NOT NULL,
  `post` varchar(60) NOT NULL,
  `pin` int(6) NOT NULL,
  `phone` int(12) NOT NULL,
  `email` varchar(60) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `type` varchar(500) NOT NULL,
  PRIMARY KEY (`adv id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `advocate` */

insert  into `advocate`(`adv id`,`login id`,`first name`,`last name`,`gender`,`place`,`post`,`pin`,`phone`,`email`,`Image`,`type`) values 
(4,'6','aa','ss','male','abcdefg','123456',122324,2147483647,'aa@gmail.com','JPG-ios-BUhQoG4DRpAUZAg2.JPG','asfti'),
(5,'2','asd','fgh','female','arkjafddh','gadjha',987766,2147483647,'aa@gmail.com','JPG-ios-IlVL9ClbOBDUDl6c.JPG','asd'),
(6,'9','2223','','female','','',0,0,'','receipt.pdf','');

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `currentdate` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

/*Table structure for table `case` */

DROP TABLE IF EXISTS `case`;

CREATE TABLE `case` (
  `case id` int(30) NOT NULL AUTO_INCREMENT,
  `Case name` varchar(60) NOT NULL,
  `user id` int(60) NOT NULL,
  `Report` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `Date` varchar(20) NOT NULL,
  PRIMARY KEY (`case id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `case` */

insert  into `case`(`case id`,`Case name`,`user id`,`Report`,`type`,`Date`) values 
(1,'qwer',3,'uygjhb','gbjh','2020-09-02'),
(2,'asdggj',14,'abcdef','1','2023-02-12');

/*Table structure for table `case allocate` */

DROP TABLE IF EXISTS `case allocate`;

CREATE TABLE `case allocate` (
  `allocate_id` int(11) NOT NULL AUTO_INCREMENT,
  `allo_date` varchar(60) NOT NULL,
  `adv` varchar(60) NOT NULL,
  `case_id` int(200) NOT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`allocate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `case allocate` */

insert  into `case allocate`(`allocate_id`,`allo_date`,`adv`,`case_id`,`status`) values 
(1,'05/10/2022','6',1,NULL);

/*Table structure for table `case report` */

DROP TABLE IF EXISTS `case report`;

CREATE TABLE `case report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) NOT NULL,
  `date` varchar(60) NOT NULL,
  `report` varchar(100) NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `case report` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `message` varchar(60) NOT NULL,
  `date` varchar(200) NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`chat_id`,`from_id`,`to_id`,`message`,`date`) values 
(1,6,3,'qwer','2022-11-27'),
(2,3,6,'k','2022-11-27'),
(3,6,3,'dfgh','2022-11-27'),
(4,6,3,'asdf','2022-11-28'),
(5,6,3,'abc','2022-12-17');

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `adv_id` int(11) DEFAULT NULL,
  `complaint` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `reply` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`complaint_id`,`user_id`,`adv_id`,`complaint`,`date`,`reply`) values 
(1,3,2,'qwert','2002-10-23','ok\r\n'),
(2,3,2,'asdfg','2020-11-31','pending'),
(3,14,14,'full FM um','2023-02-12',NULL),
(4,14,14,'the man','2023-02-12',NULL),
(5,14,14,'all UCO was to tough','2023-02-12',NULL),
(6,14,14,'all govi','2023-02-12',NULL),
(7,14,14,'stick to','2023-02-12',NULL),
(8,14,14,'din tub','2023-02-12',NULL),
(9,14,14,'su ok if s','2023-02-12',NULL),
(10,14,14,'techi only er','2023-02-12',NULL),
(11,14,14,'TN j TM GM di','2023-02-12',NULL),
(12,14,14,'DJ TK TK tu fun DH','2023-02-12',NULL),
(13,14,14,'hello','2023-02-12',NULL),
(14,14,14,'what','2023-02-12',NULL),
(15,14,14,'so ho gi tu','2023-02-12',NULL),
(16,14,6,'DJ TV','2023-02-12',NULL),
(17,14,2,'DJ um enn','2023-02-12',NULL);

/*Table structure for table `daily report` */

DROP TABLE IF EXISTS `daily report`;

CREATE TABLE `daily report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `adv` varchar(60) NOT NULL,
  `report` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `daily report` */

insert  into `daily report`(`report_id`,`adv`,`report`,`date`) values 
(3,'6','qwerty','2022-11-01'),
(4,'6','asdfghjkl','2022-11-08');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `feedback` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`fid`,`user_id`,`feedback`,`date`) values 
(1,3,'qwertyu','2022-10-10'),
(2,14,'gajskkddlsse','2023-02-12'),
(3,14,'all to do go finish ','2023-02-12'),
(4,14,'din ei ek to','2023-02-12');

/*Table structure for table `law` */

DROP TABLE IF EXISTS `law`;

CREATE TABLE `law` (
  `law_id` int(11) NOT NULL AUTO_INCREMENT,
  `adv_id` varchar(60) NOT NULL,
  `type` varchar(60) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`law_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `law` */

insert  into `law`(`law_id`,`adv_id`,`type`,`description`) values 
(8,'6','2','asdfghj'),
(9,'6','tyu','fghjkl');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`username`,`password`,`type`) values 
(1,'admin','admin','admin'),
(3,'user','user','user'),
(6,'advocate','123','advocate'),
(7,'123','123','advocate'),
(8,'asdfg','asdfg','advocate'),
(9,'','','advocate'),
(10,'nvd ','nvd@8',''),
(11,'nvd','nvd@8',''),
(12,'user','1234',''),
(13,'user','123',''),
(14,'user','12345','user');

/*Table structure for table `next hearing date` */

DROP TABLE IF EXISTS `next hearing date`;

CREATE TABLE `next hearing date` (
  `heid` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) NOT NULL,
  `date` varchar(60) NOT NULL,
  `time` varchar(60) NOT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`heid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `next hearing date` */

insert  into `next hearing date`(`heid`,`case_id`,`date`,`time`,`status`) values 
(15,1,'2022-11-30','10:19','pending'),
(16,1,'2022-12-14','09:27','pending'),
(17,1,'2022-12-14','09:09','pending'),
(18,1,'2022-11-29','00:07','pending'),
(21,1,'2022-12-06','01:56','pending');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(60) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `gender` varchar(60) NOT NULL,
  `place` varchar(60) NOT NULL,
  `post` varchar(60) NOT NULL,
  `pin` int(6) NOT NULL,
  `phone` int(12) NOT NULL,
  `email` varchar(60) NOT NULL,
  `Image` text,
  PRIMARY KEY (`user id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user id`,`login_id`,`first_name`,`last_name`,`gender`,`place`,`post`,`pin`,`phone`,`email`,`Image`) values 
(1,'3','aaa','sss','male','qwe','asdf',12345,876543,'bvf@gmail.com',NULL),
(2,'14','naveed','abubacker','male','clt','arakinar',673028,2147483647,'nvd@gmail.com','<FileStorage: \'/storage/emulated/0/Android/media/com.whatsapp/whatsapp/media/WhatsApp Images/IMG-20230210-WA0065.jpg\' (None)>');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
