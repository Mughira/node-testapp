-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: easypanel1.easyshifa.pk    Database: mec
-- ------------------------------------------------------
-- Server version	8.4.5

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competency`
--

DROP TABLE IF EXISTS `competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `competency_name` varchar(200) NOT NULL,
  `competency_details` varchar(200) NOT NULL,
  `weight_distribution` varchar(200) NOT NULL,
  `competency_group_id` int DEFAULT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `employee_number` varchar(200) NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competency`
--

LOCK TABLES `competency` WRITE;
/*!40000 ALTER TABLE `competency` DISABLE KEYS */;
INSERT INTO `competency` VALUES (13,'Competency 2 for CEO','Competency 2 for CEO','5',NULL,'2025-02-16 11:25:39','30018074','49048'),(17,'Competency 3 for CEO','Competency 3 for CEO','5',NULL,'2025-02-16 11:29:13','30018074','49048'),(18,'Competency 4 for CEO','Competency 4 for CEO','3',NULL,'2025-02-16 11:29:30','30018074','49048'),(19,'Competency 5 for CEO','Competency 5 for CEO','2',NULL,'2025-02-16 11:29:48','30018074','49048'),(20,'Management Skills','Managing Team and Project, Project Success Rate','2',NULL,'2025-02-16 13:55:24','30017980','49044'),(21,'1','1','1',NULL,'2025-02-16 13:55:24','30017980','49044'),(22,'4','4','4',NULL,'2025-02-16 13:55:24','30017980','49044'),(23,'3','3','3',NULL,'2025-02-16 13:55:24','30017980','49044'),(24,'5','5','5',NULL,'2025-02-16 13:55:24','30017980','49044'),(25,'6','6','5',NULL,'2025-02-16 13:55:35','30017980','49044'),(26,'5','5','10',NULL,'2025-02-16 14:18:56','30018844','95418'),(27,'1','1','1',NULL,'2025-02-16 14:18:56','30018844','95418'),(28,'2','2','2',NULL,'2025-02-16 14:18:56','30018844','95418'),(29,'3','3','3',NULL,'2025-02-16 14:18:56','30018844','95418'),(30,'4','4','4',NULL,'2025-02-16 14:18:56','30018844','95418'),(37,'21','21','12',NULL,'2025-02-17 20:11:06','30018117','49056'),(38,'jghjg','wa','4',NULL,'2025-02-17 20:11:06','30018117','49056'),(39,'21','21','4',NULL,'2025-02-17 20:11:06','30018117','49056'),(40,'competenciesa','asd','4',NULL,'2025-02-18 12:30:26','30004501','48911'),(41,'4','4','4',NULL,'2025-02-18 12:30:44','30004501','48911'),(42,'4','4','4',NULL,'2025-02-18 12:30:49','30004501','48911'),(43,'4','4','4',NULL,'2025-02-18 12:30:57','30004501','48911'),(44,'4','4','4',NULL,'2025-02-18 12:31:02','30004501','48911'),(45,'Competency 1 for CEO','xxx','5',NULL,'2025-02-25 11:37:32','30018074','49048'),(49,'send','second','8',NULL,'2025-03-16 01:51:06','30018945','96151'),(50,'12','12','4',0,'2025-03-16 01:51:07','30018945','96151'),(51,'Second competency','my Second competency','1',0,'2025-03-16 02:19:30','80000046','96521'),(53,'Third competency','my Third competency. 2','1',NULL,'2025-03-16 02:19:31','80000046','96521'),(54,'first competency','My first competency','18',0,'2025-03-16 02:23:46','80000046','96521'),(55,'Test','test','5',0,'2025-04-23 07:15:57','30018450','49127'),(56,'test 2','test 2','5',0,'2025-04-23 07:16:13','30018450','49127'),(57,'test 3','test 3','10',0,'2025-04-23 07:16:32','30018450','49127'),(58,'test','test','10',0,'2025-04-23 10:26:18','30018945','96151'),(59,'sadsad','sadsad','5',0,'2025-04-23 11:51:01','80000054','96632'),(60,'testing 2','sad','10',0,'2025-04-23 11:51:14','80000054','96632'),(61,'testing 3','dsa','5',0,'2025-04-23 11:51:25','80000054','96632');
/*!40000 ALTER TABLE `competency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competency_group`
--

DROP TABLE IF EXISTS `competency_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competency_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competency_group`
--

LOCK TABLES `competency_group` WRITE;
/*!40000 ALTER TABLE `competency_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `competency_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_group`
--

DROP TABLE IF EXISTS `emp_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_group`
--

LOCK TABLES `emp_group` WRITE;
/*!40000 ALTER TABLE `emp_group` DISABLE KEYS */;
INSERT INTO `emp_group` VALUES (1,'hello','2025-03-11 19:35:20'),(2,'hello','2025-03-11 19:42:22'),(3,'hello','2025-03-11 19:43:11'),(4,'New Group','2025-03-11 20:32:17'),(5,'New Group','2025-03-11 20:36:46'),(6,'New Group','2025-03-11 20:39:13'),(7,'New Group','2025-03-11 20:40:52'),(8,'New Group','2025-03-11 20:43:07'),(9,'New Group','2025-03-11 20:43:45'),(10,'New Group','2025-03-11 20:44:26'),(11,'New Group','2025-03-11 20:50:42'),(12,'New Group','2025-03-11 21:06:21'),(13,'New Group','2025-03-11 21:08:40'),(14,'New Group','2025-03-11 21:11:38'),(15,'New Group','2025-03-11 21:13:07'),(16,'gdfgfd','2025-03-11 21:15:32'),(17,'New Group','2025-03-11 21:28:12'),(18,'New Group','2025-03-11 21:34:44'),(19,'hello','2025-03-11 21:38:35'),(20,'dsadasfgg','2025-03-11 21:46:39'),(21,'dsadasfgg','2025-03-11 21:51:25'),(22,'New Group','2025-03-11 21:55:50'),(23,'dsadasfgg','2025-03-11 22:12:00'),(24,'New Group','2025-03-11 22:14:27'),(25,'WOW','2025-03-11 22:52:08'),(26,'dsadasfgg','2025-03-12 01:56:05');
/*!40000 ALTER TABLE `emp_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_type`
--

DROP TABLE IF EXISTS `employee_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_type`
--

LOCK TABLES `employee_type` WRITE;
/*!40000 ALTER TABLE `employee_type` DISABLE KEYS */;
INSERT INTO `employee_type` VALUES (1,'C-Level','2025-02-13 12:28:17'),(2,'Director','2025-02-13 12:28:25'),(3,'Head of Department','2025-02-13 12:28:33'),(4,'Manager','2025-02-13 12:28:44'),(5,'Employee','2025-02-13 12:29:23');
/*!40000 ALTER TABLE `employee_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_type_timeline`
--

DROP TABLE IF EXISTS `employee_type_timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_type_timeline` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `employee_type` int DEFAULT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_type_timeline`
--

LOCK TABLES `employee_type_timeline` WRITE;
/*!40000 ALTER TABLE `employee_type_timeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_type_timeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goal` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `employee_number` varchar(255) NOT NULL,
  `goal_level` int DEFAULT NULL,
  `goal_type` int DEFAULT NULL,
  `parent` int DEFAULT NULL,
  `group_id` int DEFAULT '0',
  `goal_status` varchar(255) DEFAULT NULL,
  `is_delegated` tinyint DEFAULT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `goal_level` (`goal_level`),
  KEY `goal_type` (`goal_type`),
  CONSTRAINT `goal_ibfk_1` FOREIGN KEY (`goal_level`) REFERENCES `goal_level` (`Id`),
  CONSTRAINT `goal_ibfk_2` FOREIGN KEY (`goal_type`) REFERENCES `goal_type` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
INSERT INTO `goal` VALUES (1,'test1','49048','30018074',1,1,0,NULL,'Draft',0,'2025-04-27 05:50:05'),(10,'NOT A REAL GOAL!!!!!','49056','30018117',1,1,0,NULL,'Draft',1,'2025-04-30 20:42:50'),(12,'Test1','49127','30018450',1,1,0,NULL,'Draft',0,'2025-05-02 20:06:34'),(13,'NOT A REAL GOAL!!!!!','49044','30017980',1,1,0,NULL,'Draft',1,'2025-05-04 07:38:23'),(14,'test1','49044','30017980',1,1,0,NULL,'In Review',0,'2025-05-04 07:41:19'),(15,'Test 2','49044','30017980',2,1,0,NULL,'In Review',0,'2025-05-04 07:46:31'),(16,'Launch DOZN','49044','30017980',1,1,0,NULL,'In Review',0,'2025-05-04 07:46:55');
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_level`
--

DROP TABLE IF EXISTS `goal_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goal_level` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_level`
--

LOCK TABLES `goal_level` WRITE;
/*!40000 ALTER TABLE `goal_level` DISABLE KEYS */;
INSERT INTO `goal_level` VALUES (1,'Corporate','2025-02-12 19:34:06'),(2,'Segmental','2025-02-12 19:34:19'),(3,'Individuals','2025-02-12 19:34:31');
/*!40000 ALTER TABLE `goal_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_type`
--

DROP TABLE IF EXISTS `goal_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goal_type` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_type`
--

LOCK TABLES `goal_type` WRITE;
/*!40000 ALTER TABLE `goal_type` DISABLE KEYS */;
INSERT INTO `goal_type` VALUES (1,'Financial','2025-02-12 19:32:55'),(2,'Operational','2025-02-12 19:33:13');
/*!40000 ALTER TABLE `goal_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi`
--

DROP TABLE IF EXISTS `kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kpi` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` text,
  `Target_kpi_val` int DEFAULT NULL,
  `Target_kpi_type` int DEFAULT NULL,
  `weight_distribution` int DEFAULT NULL,
  `kpi_type` int DEFAULT NULL,
  `kpi_subtype` int DEFAULT NULL,
  `kpi_level` int DEFAULT NULL,
  `segment` int DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `parent_kpi` int DEFAULT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `goal_id` int NOT NULL,
  `is_split` tinyint DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Target_kpi_type` (`Target_kpi_type`),
  KEY `kpi_type` (`kpi_type`),
  KEY `kpi_subtype` (`kpi_subtype`),
  KEY `kpi_level` (`kpi_level`),
  KEY `segment` (`segment`),
  CONSTRAINT `kpi_ibfk_1` FOREIGN KEY (`Target_kpi_type`) REFERENCES `kpi_target_type` (`Id`),
  CONSTRAINT `kpi_ibfk_3` FOREIGN KEY (`kpi_type`) REFERENCES `kpi_type` (`Id`),
  CONSTRAINT `kpi_ibfk_4` FOREIGN KEY (`kpi_subtype`) REFERENCES `kpi_subtype` (`Id`),
  CONSTRAINT `kpi_ibfk_5` FOREIGN KEY (`kpi_level`) REFERENCES `kpi_level` (`Id`),
  CONSTRAINT `kpi_ibfk_6` FOREIGN KEY (`segment`) REFERENCES `segment` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi`
--

LOCK TABLES `kpi` WRITE;
/*!40000 ALTER TABLE `kpi` DISABLE KEYS */;
INSERT INTO `kpi` VALUES (1,'test1','test',20,1,20,1,1,2,5,NULL,0,'2025-04-27 05:50:37',1,1),(2,'test','test',20,1,20,1,1,1,NULL,NULL,1,'2025-05-02 20:07:02',12,NULL),(3,'Home Appliances','xx',100,1,5,1,2,1,NULL,NULL,0,'2025-05-04 07:46:13',14,0),(4,'Organization','xx',5,1,5,1,2,1,NULL,NULL,0,'2025-05-04 07:46:43',15,0),(5,'Competency 1 for CEO','xxx',12,1,12,1,1,1,NULL,NULL,0,'2025-05-04 07:47:14',16,0);
/*!40000 ALTER TABLE `kpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_level`
--

DROP TABLE IF EXISTS `kpi_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kpi_level` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_level`
--

LOCK TABLES `kpi_level` WRITE;
/*!40000 ALTER TABLE `kpi_level` DISABLE KEYS */;
INSERT INTO `kpi_level` VALUES (1,'Corporate','2025-02-12 22:28:22'),(2,'Segmental','2025-02-12 22:28:36'),(3,'Individuals','2025-02-12 22:28:43');
/*!40000 ALTER TABLE `kpi_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_subtype`
--

DROP TABLE IF EXISTS `kpi_subtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kpi_subtype` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `uom` varchar(200) NOT NULL,
  `kpi_type` int NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_subtype`
--

LOCK TABLES `kpi_subtype` WRITE;
/*!40000 ALTER TABLE `kpi_subtype` DISABLE KEYS */;
INSERT INTO `kpi_subtype` VALUES (1,'Revenue','SR M',1,'2025-02-14 15:15:12'),(2,'Gross Profit','SR M',1,'2025-02-14 15:16:12'),(3,'Net Trading Margin','SR M',1,'2025-02-14 15:17:13'),(4,'Gross Margin','%',1,'2025-02-14 15:17:27'),(5,'Net Trading Margin','%',1,'2025-02-14 15:17:37'),(6,'Net Profit Margin','%',1,'2025-02-14 15:18:40'),(7,'Operating Expenses as % of Revenue','%',1,'2025-02-14 15:18:55'),(8,'Net Working Capital as % of Revenue','%',1,'2025-02-14 15:19:05'),(9,'Return on Investment (ROI)','%',1,'2025-02-14 15:19:55'),(10,'Return on Capital Employed (ROCE)','%',1,'2025-02-14 15:20:06'),(11,'Cost Reduction','SR M',1,'2025-02-14 15:20:18'),(12,'Inventory Turnover Ratio','Days',2,'2025-02-14 15:51:36'),(13,'Receivable Turnover Ratio','Days',2,'2025-02-14 15:51:46'),(14,'Payable Turnover Ratio','Days',2,'2025-02-14 15:51:56'),(15,'Cash Conversion Cycle','Days',2,'2025-02-14 15:52:10'),(16,'Sales Volume (Quantity)','Units K',2,'2025-02-14 15:52:19'),(17,'New Brand(s)','Number',2,'2025-02-14 15:53:13'),(18,'New Clients','Number',2,'2025-02-14 15:53:22'),(19,'Market Share (%)','%',2,'2025-02-14 15:53:29'),(20,'Cost Per CBM','Number',2,'2025-02-14 15:53:39'),(21,'Transportation Cost Per Delivery','SAR',2,'2025-02-14 15:53:56'),(22,'Fulfilment Cost Per Unit (DTC)','SAR',2,'2025-02-14 15:54:03'),(23,'Traffic (Sessions)','K/Month',2,'2025-02-14 15:54:11'),(24,'Footfall','K/Month',2,'2025-02-14 15:54:21'),(25,'Conversion Rate (%)','%',2,'2025-02-14 15:54:33'),(26,'Customer Acquisition Cost (CAC)','SAR',2,'2025-02-14 15:54:41'),(27,'Customer Lifetime Value (CLTV)','SAR',2,'2025-02-14 15:54:49'),(28,'Customer Retention Rate','%',2,'2025-02-14 15:54:57'),(29,'Social Media Engagement Rate','%',2,'2025-02-14 15:55:08'),(30,'Net Promoter Score (NPS)','Number',2,'2025-02-14 15:55:15'),(31,'Complaint Resolution Time','Mins',2,'2025-02-14 15:55:22'),(32,'Employee Turnover Rate','%',2,'2025-02-14 17:00:03'),(33,'Employee Satisfaction Score','%',2,'2025-02-14 17:00:11'),(34,'Training Hours Completed','Number',2,'2025-02-14 17:00:18'),(35,'Absenteeism Rate (%)','%',2,'2025-02-14 17:00:26');
/*!40000 ALTER TABLE `kpi_subtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_target_type`
--

DROP TABLE IF EXISTS `kpi_target_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kpi_target_type` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_target_type`
--

LOCK TABLES `kpi_target_type` WRITE;
/*!40000 ALTER TABLE `kpi_target_type` DISABLE KEYS */;
INSERT INTO `kpi_target_type` VALUES (1,'SR M','2025-02-15 11:31:43'),(2,'%','2025-02-15 11:32:35'),(3,'Days','2025-02-15 11:32:42'),(4,'Units K','2025-02-15 11:32:47'),(5,'Number','2025-02-15 11:32:59'),(6,'SAR','2025-02-15 11:33:19'),(7,'K/Month','2025-02-15 11:33:26'),(8,'Mins','2025-02-15 11:33:41');
/*!40000 ALTER TABLE `kpi_target_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_type`
--

DROP TABLE IF EXISTS `kpi_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kpi_type` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_type`
--

LOCK TABLES `kpi_type` WRITE;
/*!40000 ALTER TABLE `kpi_type` DISABLE KEYS */;
INSERT INTO `kpi_type` VALUES (1,'Financial','2025-02-12 22:27:39'),(2,'Operational','2025-02-12 22:27:53');
/*!40000 ALTER TABLE `kpi_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_weight_distribution`
--

DROP TABLE IF EXISTS `kpi_weight_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kpi_weight_distribution` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `value` decimal(10,2) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_weight_distribution`
--

LOCK TABLES `kpi_weight_distribution` WRITE;
/*!40000 ALTER TABLE `kpi_weight_distribution` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpi_weight_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_type`
--

DROP TABLE IF EXISTS `report_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_type`
--

LOCK TABLES `report_type` WRITE;
/*!40000 ALTER TABLE `report_type` DISABLE KEYS */;
INSERT INTO `report_type` VALUES (1,'Financial Report','2025-05-03 21:29:43'),(2,'Operational Report','2025-05-03 21:29:43');
/*!40000 ALTER TABLE `report_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segment`
--

DROP TABLE IF EXISTS `segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `segment` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segment`
--

LOCK TABLES `segment` WRITE;
/*!40000 ALTER TABLE `segment` DISABLE KEYS */;
INSERT INTO `segment` VALUES (1,'Gaming','2025-02-14 17:35:44'),(2,'CAV','2025-02-14 17:35:53'),(3,'HAP','2025-02-14 17:35:59'),(4,'DOZN','2025-02-14 17:36:06'),(5,'DTC','2025-02-14 17:36:18'),(6,'PSX','2025-02-14 17:36:25'),(7,'3P Gaming','2025-02-14 17:36:37'),(8,'Sony','2025-02-14 17:36:46'),(9,'Hitachi','2025-02-14 17:36:53'),(10,'Bissel','2025-02-14 17:37:00'),(11,'Gibson','2025-02-14 17:37:06'),(12,'Ruud','2025-02-14 17:37:13'),(13,'Panasonic','2025-02-14 17:37:20'),(14,'Multibrand','2025-02-14 17:37:27'),(15,'Projects','2025-02-14 17:37:36');
/*!40000 ALTER TABLE `segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(500) NOT NULL,
  `email` varchar(500) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `user_type` int DEFAULT NULL,
  `employee_type` int DEFAULT NULL,
  `designation` varchar(500) DEFAULT NULL,
  `department` varchar(500) DEFAULT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `report_type` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`),
  KEY `user_type_idx` (`user_type`),
  KEY `employee_type_idx` (`employee_type`),
  CONSTRAINT `employee_type` FOREIGN KEY (`employee_type`) REFERENCES `employee_type` (`id`),
  CONSTRAINT `user_type` FOREIGN KEY (`user_type`) REFERENCES `user_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'48932','halubaidan@modern-electronics.com','Hassan AbdulKarem Obaidan',NULL,1,'Chief Operating Officer','Director - Office','2025-02-17 21:41:37',0),(2,'96360','malmasawi@modern-electronics.com','Muhannad Ahmad AlMasawi',NULL,3,'Organization Development Specialist','OE & Recruitment','2025-02-17 22:10:52',0),(10,'96219','wbawazeer@modern-electronics.com','Waleed Abubaker Bawazeer',NULL,1,'OD & TA Lead','OE & Recruitment','2025-02-18 08:05:31',0),(22,'49145','atahir@modern-electronics.com','Arsalan Tahir',5,1,'Strategy Manager','Strategic','2025-04-26 20:16:53',1),(24,'67089','omalik@modern-electronics.com','Osama Adnan Malik',1,NULL,'IT Analyst','Service Management','2025-05-02 16:44:21',0),(26,'49048','wbeiruti@modern-electronics.com','Wajih Mohamad Albayrouti',NULL,1,'Chief Executive Officer','CEO','2025-05-03 21:13:07',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (1,'Super Admin','2025-02-13 12:21:27'),(2,'HR Manager','2025-02-13 12:21:40'),(3,'Strategy','2025-02-13 12:21:51'),(4,'Finance','2025-02-13 12:22:02'),(5,'Set CEO Goals','2025-02-18 06:53:38');
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-11 12:10:34
