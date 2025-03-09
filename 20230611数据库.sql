/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.31 : Database - college_logistics_management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`college_logistics_management` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `college_logistics_management`;

/*Table structure for table `assets` */

DROP TABLE IF EXISTS `assets`;

CREATE TABLE `assets` (
  `assetsId` int NOT NULL AUTO_INCREMENT,
  `assetsOwnerName` varchar(100) DEFAULT NULL,
  `assetsDetailed` text,
  `assetsNum` bigint DEFAULT NULL,
  `assetsPrice` double DEFAULT NULL,
  `isDel` int DEFAULT '1',
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`assetsId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Data for the table `assets` */

insert  into `assets`(`assetsId`,`assetsOwnerName`,`assetsDetailed`,`assetsNum`,`assetsPrice`,`isDel`,`time`) values 
(1,'板凳','铁板凳',1,20,1,'2023-06-11 19:49:30'),
(2,'木板凳','muband',10,20,1,'2023-06-11 19:49:30');

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `carnum` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `isDel` int DEFAULT '1',
  PRIMARY KEY (`carnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `car` */

insert  into `car`(`carnum`,`type`,`time`,`isDel`) values 
('京A·999999','轿车','2022-09-24 20:53:09',1);

/*Table structure for table `dormitory` */

DROP TABLE IF EXISTS `dormitory`;

CREATE TABLE `dormitory` (
  `dormitoryId` varchar(100) NOT NULL,
  `dormitoryRemarks` varchar(100) DEFAULT NULL,
  `isDel` int DEFAULT '1',
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dormitoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `dormitory` */

insert  into `dormitory`(`dormitoryId`,`dormitoryRemarks`,`isDel`,`time`) values 
('1号楼-1层-101','1号楼1层101',1,'2023-06-11 19:48:44'),
('1号楼-1层-102','1号楼-1层-102',1,'2023-06-11 19:48:44');

/*Table structure for table `lh` */

DROP TABLE IF EXISTS `lh`;

CREATE TABLE `lh` (
  `lhId` int NOT NULL AUTO_INCREMENT,
  `lhTitle` varchar(100) DEFAULT NULL,
  `lhContent` varchar(100) DEFAULT NULL,
  `lhTime` varchar(100) DEFAULT NULL,
  `isDel` int DEFAULT '1',
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`lhId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Data for the table `lh` */

insert  into `lh`(`lhId`,`lhTitle`,`lhContent`,`lhTime`,`isDel`,`time`) values 
(1,'操场绿化2','操场绿化：\n1、跑道花坛绿化\n2、散步花坛绿化\n3、看台花坛绿化','2022-09-25 14:47:37',1,'2023-06-11 19:48:25');

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `noticeId` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `noticeTitle` varchar(100) DEFAULT NULL COMMENT '公告标题',
  `noticeContent` varchar(100) DEFAULT NULL COMMENT '公告内容',
  `noticeTime` varchar(100) DEFAULT NULL COMMENT '公告发布时间',
  `isDel` int DEFAULT '1',
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

/*Data for the table `notice` */

insert  into `notice`(`noticeId`,`noticeTitle`,`noticeContent`,`noticeTime`,`isDel`,`time`) values 
(5,'院校管理公告2022年3月8日','尊敬的客户: 为了维护广大师生的安全,2022年3月5日起每日21:00起,对学校南大门进行关闭,在此期间非特殊原因不允许出入','2021-03-05 16:14:57',1,'2023-06-11 19:48:05'),
(6,'院校管理公告2022年3月9日','尊敬的客户: 为了维护广大师生的安全,2022年3月5日起每日19:00起,对学校南大门进行关闭,在此期间非特殊原因不允许出入','2021-03-05 16:14:51',1,'2023-06-11 19:48:05'),
(7,'院校管理公告2022年3月6日','尊敬的客户: 接到市自来水公司通知,今日20:00后进行停水.请广大师生合理安排生活工作','2021-03-05 16:16:12',1,'2023-06-11 19:48:05');

/*Table structure for table `report` */

DROP TABLE IF EXISTS `report`;

CREATE TABLE `report` (
  `reportId` int NOT NULL AUTO_INCREMENT,
  `reportTitle` varchar(100) DEFAULT NULL,
  `reportContent` varchar(100) DEFAULT NULL,
  `reportUser` varchar(100) DEFAULT NULL,
  `reportTime` varchar(100) DEFAULT NULL,
  `reportState` varchar(100) DEFAULT NULL,
  `isDel` int DEFAULT '1',
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reportId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

/*Data for the table `report` */

insert  into `report`(`reportId`,`reportTitle`,`reportContent`,`reportUser`,`reportTime`,`reportState`,`isDel`,`time`) values 
(4,'地热不暖','地热不暖','zhangsan','2022-06-05 20:51:42','修理中',1,'2023-06-11 19:40:53'),
(5,'1','1','zhangsan','2022-06-05 20:57:03','修理中',1,'2023-06-11 19:40:53');

/*Table structure for table `system_information` */

DROP TABLE IF EXISTS `system_information`;

CREATE TABLE `system_information` (
  `informationId` int NOT NULL AUTO_INCREMENT,
  `informationTitle` varchar(100) DEFAULT NULL,
  `informationContent` varchar(100) DEFAULT NULL,
  `informationTime` varchar(100) DEFAULT NULL,
  `isDel` int DEFAULT '1',
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`informationId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

/*Data for the table `system_information` */

insert  into `system_information`(`informationId`,`informationTitle`,`informationContent`,`informationTime`,`isDel`,`time`) values 
(5,'系统维护公告2021年3月6日','尊敬的客户： 为了能够向您提供更加丰富便捷的服务，XXX学校将会对后台管理系统进行维护。','2021-03-05 16:10:30',1,'2023-06-11 19:35:28'),
(6,'系统维护公告2021年3月7日','尊敬的客户： 为了能够向您提供更加丰富便捷的服务，XXX学校将会对后台管理系统进行维护。','2021-03-05 16:10:54',1,'2023-06-11 19:35:28'),
(7,'系统维护公告2021年3月8日','尊敬的客户： 为了能够向您提供更加丰富便捷的服务，XXX学校将会对后台管理系统进行维护。','2021-03-05 16:11:12',1,'2023-06-11 19:35:28');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(100) NOT NULL,
  `userName` varchar(100) NOT NULL DEFAULT '请编辑用户昵称',
  `userPw` varchar(100) NOT NULL,
  `userLevel` int NOT NULL DEFAULT '0',
  `userBalance` int DEFAULT '0',
  `userDormitory` varchar(100) DEFAULT '未分配宿舍信息',
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `isDel` int DEFAULT '1',
  PRIMARY KEY (`id`,`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

/*Data for the table `user` */

insert  into `user`(`id`,`userId`,`userName`,`userPw`,`userLevel`,`userBalance`,`userDormitory`,`time`,`isDel`) values 
(5,'root','超级管理员101000','1234',9,0,'1号楼-1层-101','2023-06-11 19:24:13',1),
(6,'zhangsan','张三10','123',1,11,'1号楼-1层-101','2023-06-11 19:24:13',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
