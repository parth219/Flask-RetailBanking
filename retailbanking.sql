-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: retailbanking
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `customerid` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `accounttype` varchar(20) DEFAULT NULL,
  `amt` int(11) DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `fk_id` (`customerid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (113458969,131245875,'savings',1500,'2020-06-15 14:14:43'),(147852371,131245876,'current',13300,'2020-06-15 14:18:56'),(113458969,131245877,'savings',1200,'2020-06-15 16:00:24'),(113458969,131245877,'savings',1200,'2020-06-15 16:01:14'),(147852375,131245879,'savings',700,'2020-06-16 11:16:20'),(113458972,131245878,'savings',1500,'2020-06-16 11:13:39'),(147852375,131245880,'current',4300,'2020-06-16 11:16:37');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountstatement`
--

DROP TABLE IF EXISTS `accountstatement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountstatement` (
  `transid` int(10) NOT NULL AUTO_INCREMENT,
  `des` varchar(10) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transid`)
) ENGINE=MyISAM AUTO_INCREMENT=258971 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountstatement`
--

LOCK TABLES `accountstatement` WRITE;
/*!40000 ALTER TABLE `accountstatement` DISABLE KEYS */;
INSERT INTO `accountstatement` VALUES (258967,'CREDIT',1500,131245877,'2020-06-16 07:49:40'),(258968,'DEBIT',100,131245877,'2020-06-16 07:51:16'),(258969,'DEBIT',100,131245877,'2020-06-16 07:51:21'),(258970,'CREDIT',200,131245877,'2020-06-16 07:53:19');
/*!40000 ALTER TABLE `accountstatement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountstatus`
--

DROP TABLE IF EXISTS `accountstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountstatus` (
  `customerid` int(11) NOT NULL,
  `accountid` int(11) NOT NULL,
  `accounttype` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `message` varchar(20) DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`accountid`),
  KEY `fk_id` (`customerid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountstatus`
--

LOCK TABLES `accountstatus` WRITE;
/*!40000 ALTER TABLE `accountstatus` DISABLE KEYS */;
INSERT INTO `accountstatus` VALUES (113458969,131245878,'savings','Not Active','account deleted','2020-06-15 16:02:21'),(147852375,131245879,'savings','Active','created successfully','2020-06-16 11:16:20'),(147852375,131245880,'current','Active','created successfully','2020-06-16 11:16:37');
/*!40000 ALTER TABLE `accountstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `createaccount`
--

DROP TABLE IF EXISTS `createaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `createaccount` (
  `customerid` int(11) DEFAULT NULL,
  `accounttype` varchar(20) DEFAULT NULL,
  `depositamount` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `createaccount`
--

LOCK TABLES `createaccount` WRITE;
/*!40000 ALTER TABLE `createaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `createaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerdetails`
--

DROP TABLE IF EXISTS `customerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerdetails` (
  `ssnid` int(11) DEFAULT NULL,
  `customername` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state` char(20) DEFAULT NULL,
  `city` char(20) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerdetails`
--

LOCK TABLES `customerdetails` WRITE;
/*!40000 ALTER TABLE `customerdetails` DISABLE KEYS */;
INSERT INTO `customerdetails` VALUES (113458970,'Reddy',45,'37-339/1','telanagana','hyderabad',147852372),(113458969,'rajesh',21,'nce','tm','kodak',147852371),(113458972,'ravi',21,'5689-dsfn','ts','hyd',147852374),(113458971,'Manish G',21,'37-339','ts','hyd',147852373),(113458973,'ramu',22,'ramu colony','ts','hyd',147852375);
/*!40000 ALTER TABLE `customerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerstatus`
--

DROP TABLE IF EXISTS `customerstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerstatus` (
  `ssnid` int(11) DEFAULT NULL,
  `customerid` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `message` varchar(20) DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerstatus`
--

LOCK TABLES `customerstatus` WRITE;
/*!40000 ALTER TABLE `customerstatus` DISABLE KEYS */;
INSERT INTO `customerstatus` VALUES (113458970,147852372,'Active','Created Successfully','2020-06-15 15:18:14'),(113458971,147852373,'Not Active(deleted)','Account deleted','2020-06-15 15:31:22'),(113458972,147852374,'Active','Created Successfully','2020-06-16 11:12:41'),(113458973,147852375,'Active','Created Successfully','2020-06-16 11:16:08');
/*!40000 ALTER TABLE `customerstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstore`
--

DROP TABLE IF EXISTS `userstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userstore` (
  `uname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstore`
--

LOCK TABLES `userstore` WRITE;
/*!40000 ALTER TABLE `userstore` DISABLE KEYS */;
INSERT INTO `userstore` VALUES ('manish','manish','2020-06-14 06:12:03'),('tcs','tcs123','2020-06-14 06:12:03'),('casestudy','casestudy123','2020-06-14 06:12:03'),('admin','admin123','2020-06-14 06:12:03'),('manager','manager123','2020-06-14 06:12:03');
/*!40000 ALTER TABLE `userstore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-18 19:02:57
