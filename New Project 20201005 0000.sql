-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.20


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema loanmlm
--

CREATE DATABASE IF NOT EXISTS loanmlm;
USE loanmlm;

--
-- Definition of table `loanmlm`.`enquirymodel`
--

DROP TABLE IF EXISTS `loanmlm`.`enquirymodel`;
CREATE TABLE  `loanmlm`.`enquirymodel` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `City` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `RDate` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanmlm`.`enquirymodel`
--

/*!40000 ALTER TABLE `enquirymodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `enquirymodel` ENABLE KEYS */;


--
-- Definition of table `loanmlm`.`epinmodel`
--

DROP TABLE IF EXISTS `loanmlm`.`epinmodel`;
CREATE TABLE  `loanmlm`.`epinmodel` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `EPinGivenTo` bigint(20) NOT NULL,
  `Pin` varchar(255) DEFAULT NULL,
  `PinGeneratedDate` varchar(255) DEFAULT NULL,
  `PinGivenDate` varchar(255) DEFAULT NULL,
  `PinStatus` tinyint(1) NOT NULL,
  `UserID` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanmlm`.`epinmodel`
--

/*!40000 ALTER TABLE `epinmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `epinmodel` ENABLE KEYS */;


--
-- Definition of table `loanmlm`.`givenepinmodel`
--

DROP TABLE IF EXISTS `loanmlm`.`givenepinmodel`;
CREATE TABLE  `loanmlm`.`givenepinmodel` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `EPinGivenDate` varchar(255) DEFAULT NULL,
  `EPinIDs` varchar(255) DEFAULT NULL,
  `GivenTo` bigint(20) NOT NULL,
  `NoOfPins` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanmlm`.`givenepinmodel`
--

/*!40000 ALTER TABLE `givenepinmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `givenepinmodel` ENABLE KEYS */;


--
-- Definition of table `loanmlm`.`levelmodel`
--

DROP TABLE IF EXISTS `loanmlm`.`levelmodel`;
CREATE TABLE  `loanmlm`.`levelmodel` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Amount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanmlm`.`levelmodel`
--

/*!40000 ALTER TABLE `levelmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelmodel` ENABLE KEYS */;


--
-- Definition of table `loanmlm`.`memberidmodel`
--

DROP TABLE IF EXISTS `loanmlm`.`memberidmodel`;
CREATE TABLE  `loanmlm`.`memberidmodel` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `MCount` int(11) NOT NULL,
  `NodeId` varchar(255) DEFAULT NULL,
  `ParentID` bigint(20) NOT NULL,
  `SponceID` bigint(20) NOT NULL,
  `TCount` int(11) NOT NULL,
  `Tree` varchar(255) DEFAULT NULL,
  `UseriD` bigint(20) NOT NULL,
  `m1` bigint(20) NOT NULL,
  `m2` bigint(20) NOT NULL,
  `m3` bigint(20) NOT NULL,
  `m4` bigint(20) NOT NULL,
  `m5` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanmlm`.`memberidmodel`
--

/*!40000 ALTER TABLE `memberidmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberidmodel` ENABLE KEYS */;


--
-- Definition of table `loanmlm`.`membermodel`
--

DROP TABLE IF EXISTS `loanmlm`.`membermodel`;
CREATE TABLE  `loanmlm`.`membermodel` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Accounttype` varchar(255) DEFAULT NULL,
  `ActivationDate` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Admin` varchar(255) DEFAULT NULL,
  `BlockDate` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Dist` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `GivingID` bigint(20) NOT NULL,
  `GooglePay` varchar(255) DEFAULT NULL,
  `LName` varchar(255) DEFAULT NULL,
  `LinkStatus` tinyint(1) NOT NULL,
  `Mcount` int(11) NOT NULL,
  `MobNO` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `PanNumber` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Paytm` varchar(255) DEFAULT NULL,
  `Phonepay` varchar(255) DEFAULT NULL,
  `RDate` varchar(255) DEFAULT NULL,
  `SponcerId` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `TPassword` varchar(255) DEFAULT NULL,
  `Token` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `acc_no` varchar(255) DEFAULT NULL,
  `bank_holder_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `linkcount` int(11) NOT NULL,
  `links` int(11) NOT NULL,
  `pool` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `Occupation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanmlm`.`membermodel`
--

/*!40000 ALTER TABLE `membermodel` DISABLE KEYS */;
INSERT INTO `loanmlm`.`membermodel` (`Id`,`Accounttype`,`ActivationDate`,`Address`,`Admin`,`BlockDate`,`City`,`Dist`,`Email`,`GivingID`,`GooglePay`,`LName`,`LinkStatus`,`Mcount`,`MobNO`,`Name`,`PanNumber`,`Password`,`Paytm`,`Phonepay`,`RDate`,`SponcerId`,`State`,`TPassword`,`Token`,`Username`,`acc_no`,`bank_holder_name`,`bank_name`,`ifsc_code`,`linkcount`,`links`,`pool`,`status`,`Occupation`) VALUES 
 (3,NULL,NULL,NULL,'Admin',NULL,'g',NULL,'g',0,NULL,NULL,0,0,'g','admin    null',NULL,'a',NULL,NULL,'21-09-2020',NULL,NULL,NULL,NULL,'a',NULL,NULL,NULL,NULL,0,0,1,1,'g'),
 (4,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,'asd',NULL,'TRKR7Y',NULL,NULL,'20-09-2020','a',NULL,NULL,NULL,'DCFA2711',NULL,NULL,NULL,NULL,0,0,0,0,NULL),
 (7,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,'k',NULL,'J6QWEB',NULL,NULL,'21-09-2020','a',NULL,NULL,NULL,'DCFK8173',NULL,NULL,NULL,NULL,0,0,0,1,NULL),
 (8,NULL,NULL,NULL,'',NULL,NULL,NULL,'m',0,NULL,NULL,0,0,'m','m',NULL,'m',NULL,NULL,'21-09-2020','a',NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,0,0,0,0,NULL),
 (9,NULL,NULL,NULL,'',NULL,NULL,NULL,'o',0,NULL,NULL,0,0,'o','o',NULL,'o',NULL,NULL,'21-09-2020','a',NULL,NULL,NULL,'o',NULL,NULL,NULL,NULL,0,0,0,0,NULL);
INSERT INTO `loanmlm`.`membermodel` (`Id`,`Accounttype`,`ActivationDate`,`Address`,`Admin`,`BlockDate`,`City`,`Dist`,`Email`,`GivingID`,`GooglePay`,`LName`,`LinkStatus`,`Mcount`,`MobNO`,`Name`,`PanNumber`,`Password`,`Paytm`,`Phonepay`,`RDate`,`SponcerId`,`State`,`TPassword`,`Token`,`Username`,`acc_no`,`bank_holder_name`,`bank_name`,`ifsc_code`,`linkcount`,`links`,`pool`,`status`,`Occupation`) VALUES 
 (10,NULL,NULL,NULL,'',NULL,NULL,NULL,'j',0,NULL,NULL,0,0,'j','j',NULL,'j',NULL,NULL,'21-09-2020','a',NULL,NULL,NULL,'j',NULL,NULL,NULL,NULL,0,0,0,0,NULL),
 (11,NULL,NULL,NULL,'',NULL,NULL,NULL,'asd',0,NULL,NULL,0,0,'asd','asdf',NULL,'asd',NULL,NULL,'21-09-2020','a',NULL,NULL,NULL,'asd',NULL,NULL,NULL,NULL,0,0,0,0,NULL),
 (12,NULL,NULL,NULL,'',NULL,NULL,NULL,'k',0,NULL,NULL,0,0,'k','k',NULL,'k',NULL,NULL,'22-09-2020','a',NULL,NULL,NULL,'k',NULL,NULL,NULL,NULL,0,0,0,0,NULL),
 (13,NULL,NULL,NULL,'',NULL,NULL,NULL,'adsf',0,NULL,NULL,0,0,'sadf','sfdasd',NULL,'df',NULL,NULL,'22-09-2020','a',NULL,NULL,NULL,'adsf',NULL,NULL,NULL,NULL,0,0,0,0,NULL),
 (14,NULL,NULL,NULL,'',NULL,NULL,NULL,'asdf@gmail.com',0,NULL,NULL,0,0,'9665265111','asdfad',NULL,'password',NULL,NULL,'24-09-2020','asdf',NULL,NULL,NULL,'asdf@gmail.com',NULL,NULL,NULL,NULL,0,0,0,0,NULL);
INSERT INTO `loanmlm`.`membermodel` (`Id`,`Accounttype`,`ActivationDate`,`Address`,`Admin`,`BlockDate`,`City`,`Dist`,`Email`,`GivingID`,`GooglePay`,`LName`,`LinkStatus`,`Mcount`,`MobNO`,`Name`,`PanNumber`,`Password`,`Paytm`,`Phonepay`,`RDate`,`SponcerId`,`State`,`TPassword`,`Token`,`Username`,`acc_no`,`bank_holder_name`,`bank_name`,`ifsc_code`,`linkcount`,`links`,`pool`,`status`,`Occupation`) VALUES 
 (15,NULL,NULL,'ADDRESS','',NULL,'cOTY','DISTRICT','b',0,NULL,NULL,0,0,'B','a    null','PAN','B',NULL,NULL,'24-09-2020','adf','sTATRE',NULL,NULL,'b',NULL,NULL,NULL,NULL,0,0,0,0,NULL),
 (16,NULL,NULL,NULL,'',NULL,NULL,NULL,'ASD',0,NULL,NULL,0,0,'AD','TEST',NULL,'DG',NULL,NULL,'24-09-2020','b',NULL,NULL,NULL,'ASD',NULL,NULL,NULL,NULL,0,0,0,0,NULL),
 (17,NULL,NULL,NULL,'',NULL,NULL,NULL,'z',0,NULL,NULL,0,0,'z','full nam',NULL,'z',NULL,NULL,'24-09-2020','a',NULL,NULL,NULL,'z',NULL,NULL,NULL,NULL,0,0,0,0,NULL),
 (18,NULL,NULL,NULL,'',NULL,NULL,NULL,'email',0,NULL,NULL,0,0,'miob','full name',NULL,'pass',NULL,NULL,'25-09-2020','admin',NULL,NULL,NULL,'email',NULL,NULL,NULL,NULL,0,0,0,0,NULL),
 (19,NULL,NULL,NULL,'',NULL,NULL,NULL,'ss',0,NULL,NULL,0,0,'s','d',NULL,'s',NULL,NULL,'25-09-2020','email',NULL,NULL,NULL,'ss',NULL,NULL,NULL,NULL,0,0,0,0,NULL);
INSERT INTO `loanmlm`.`membermodel` (`Id`,`Accounttype`,`ActivationDate`,`Address`,`Admin`,`BlockDate`,`City`,`Dist`,`Email`,`GivingID`,`GooglePay`,`LName`,`LinkStatus`,`Mcount`,`MobNO`,`Name`,`PanNumber`,`Password`,`Paytm`,`Phonepay`,`RDate`,`SponcerId`,`State`,`TPassword`,`Token`,`Username`,`acc_no`,`bank_holder_name`,`bank_name`,`ifsc_code`,`linkcount`,`links`,`pool`,`status`,`Occupation`) VALUES 
 (20,NULL,NULL,NULL,'',NULL,NULL,NULL,'sd',0,NULL,NULL,0,0,'sdf','te',NULL,'sf',NULL,NULL,'26-09-2020','m',NULL,NULL,NULL,'sd',NULL,NULL,NULL,NULL,0,0,0,0,NULL),
 (21,NULL,NULL,NULL,'',NULL,'city',NULL,'e@h.com',0,NULL,NULL,0,0,'9665265411','fuul name',NULL,'p',NULL,NULL,'02-10-2020','m',NULL,NULL,NULL,'e@h.com',NULL,NULL,NULL,NULL,0,0,0,0,'occ'),
 (22,NULL,NULL,NULL,'',NULL,'city',NULL,'email',0,NULL,NULL,0,0,'9665265','test',NULL,'pass',NULL,NULL,'02-10-2020','m',NULL,NULL,NULL,'email',NULL,NULL,NULL,NULL,0,0,0,0,'oc'),
 (23,NULL,NULL,NULL,'',NULL,'k',NULL,'k',0,NULL,NULL,0,0,'k','adf',NULL,'kk',NULL,NULL,'02-10-2020','m',NULL,NULL,NULL,'k',NULL,NULL,NULL,NULL,0,0,0,0,'k'),
 (24,NULL,NULL,NULL,'',NULL,'ads',NULL,'asd',0,NULL,NULL,0,0,'asd','asd',NULL,'ads',NULL,NULL,'03-10-2020','s',NULL,NULL,NULL,'asd',NULL,NULL,NULL,NULL,0,0,0,0,'ad');
INSERT INTO `loanmlm`.`membermodel` (`Id`,`Accounttype`,`ActivationDate`,`Address`,`Admin`,`BlockDate`,`City`,`Dist`,`Email`,`GivingID`,`GooglePay`,`LName`,`LinkStatus`,`Mcount`,`MobNO`,`Name`,`PanNumber`,`Password`,`Paytm`,`Phonepay`,`RDate`,`SponcerId`,`State`,`TPassword`,`Token`,`Username`,`acc_no`,`bank_holder_name`,`bank_name`,`ifsc_code`,`linkcount`,`links`,`pool`,`status`,`Occupation`) VALUES 
 (25,NULL,NULL,NULL,'',NULL,'city',NULL,'testa',0,NULL,NULL,0,0,'mobile','testa',NULL,'city',NULL,NULL,'03-10-2020','a',NULL,NULL,NULL,'testa',NULL,NULL,NULL,NULL,0,0,0,0,'occ'),
 (26,NULL,NULL,NULL,'',NULL,'city',NULL,'email',0,NULL,NULL,0,0,'mobile','name',NULL,'pass',NULL,NULL,'03-10-2020','a',NULL,NULL,NULL,'email',NULL,NULL,NULL,NULL,0,0,0,0,'occu'),
 (27,NULL,NULL,NULL,'',NULL,'h',NULL,'h',0,NULL,NULL,0,0,'h','h',NULL,'p',NULL,NULL,'03-10-2020','a',NULL,NULL,NULL,'l',NULL,NULL,NULL,NULL,0,0,0,0,'h');
/*!40000 ALTER TABLE `membermodel` ENABLE KEYS */;


--
-- Definition of table `loanmlm`.`rewardstatusmodel`
--

DROP TABLE IF EXISTS `loanmlm`.`rewardstatusmodel`;
CREATE TABLE  `loanmlm`.`rewardstatusmodel` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserId` bigint(20) NOT NULL,
  `level1` tinyint(1) NOT NULL,
  `level10` tinyint(1) NOT NULL,
  `level2` tinyint(1) NOT NULL,
  `level3` tinyint(1) NOT NULL,
  `level4` tinyint(1) NOT NULL,
  `level5` tinyint(1) NOT NULL,
  `level6` tinyint(1) NOT NULL,
  `level7` tinyint(1) NOT NULL,
  `level8` tinyint(1) NOT NULL,
  `level9` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanmlm`.`rewardstatusmodel`
--

/*!40000 ALTER TABLE `rewardstatusmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `rewardstatusmodel` ENABLE KEYS */;


--
-- Definition of table `loanmlm`.`superadminlogin`
--

DROP TABLE IF EXISTS `loanmlm`.`superadminlogin`;
CREATE TABLE  `loanmlm`.`superadminlogin` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Counter` bigint(20) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Mobile` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Wallate` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanmlm`.`superadminlogin`
--

/*!40000 ALTER TABLE `superadminlogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `superadminlogin` ENABLE KEYS */;


--
-- Definition of table `loanmlm`.`transactionmodel`
--

DROP TABLE IF EXISTS `loanmlm`.`transactionmodel`;
CREATE TABLE  `loanmlm`.`transactionmodel` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Amount` bigint(20) NOT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `RecId` bigint(20) NOT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `inProgess` tinyint(1) NOT NULL,
  `senderID` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanmlm`.`transactionmodel`
--

/*!40000 ALTER TABLE `transactionmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactionmodel` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
