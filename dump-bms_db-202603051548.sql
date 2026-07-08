-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bms_db
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_admin` (
  `ID` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `FIRST_NM` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `MIDDLE_NM` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LAST_NM` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `GENDER` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `HOME_ADDRESS` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `MOBILE_NO` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `EMAIL_ADDRESS` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `STATUS` int NOT NULL,
  `DATE_ENROLLED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PHASE_KEY` int DEFAULT NULL,
  `SUFFIX` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES ('2f8c4d77a52b4a6e8c82fa922e5b8a3b','RICK',NULL,'GRIMES','M','BLOCK IB9 EXCESS LOT PALIPARAN III DASMARINAS CITY CAVITE','09152130431','admin@example.com',1,'2026-01-13 07:30:32',2,'JR');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_announcement`
--

DROP TABLE IF EXISTS `tbl_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_announcement` (
  `ID` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `REF_NO` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `GRP_ID` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `HEADER` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TYPE` int NOT NULL,
  `ALERT_STATUS` int NOT NULL,
  `CHANNEL` int NOT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `USER_ID` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CREATED_DT` timestamp NULL DEFAULT NULL,
  `STATUS` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_announcement`
--

LOCK TABLES `tbl_announcement` WRITE;
/*!40000 ALTER TABLE `tbl_announcement` DISABLE KEYS */;
INSERT INTO `tbl_announcement` VALUES ('399b11ef37fe4ddc8b9dd2e3a81aa530','BMS-ANT-20260305-75111024','7cd9ebb3b3604ef9be00bd351ea4b983','STREET CLEARING',1,1,0,'Good day,\n\nWe will be having a street clearing operations tomorrow 10:00AM. All residents are expected to park their vehicles on the respected parking lots to give way with the Parada.\nThank you, and have a good day!','71624cc44351404f9cff73c8b5253882','2026-03-05 14:45:50',NULL);
/*!40000 ALTER TABLE `tbl_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_document_request`
--

DROP TABLE IF EXISTS `tbl_document_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_document_request` (
  `ID` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `REF_NO` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `USER_ID` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DOCUMENT_TYPE` int NOT NULL,
  `PURPOSE` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `STATUS` int NOT NULL,
  `DATE_REQUESTED` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `HEADER` text COLLATE utf8mb4_general_ci,
  `BODY` text COLLATE utf8mb4_general_ci,
  `FOOTER` text COLLATE utf8mb4_general_ci,
  `DATE_PROCESSED` timestamp NULL DEFAULT NULL,
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_document_request`
--

LOCK TABLES `tbl_document_request` WRITE;
/*!40000 ALTER TABLE `tbl_document_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_document_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_login_creds`
--

DROP TABLE IF EXISTS `tbl_login_creds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_login_creds` (
  `ID` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `USER_ID` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CD` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PASSWORD` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `SALT` blob,
  `LOGIN_STATUS` int DEFAULT NULL,
  `ROLE` int NOT NULL,
  `UPDATED_DT` timestamp NULL DEFAULT NULL,
  `STATUS` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_login_creds`
--

LOCK TABLES `tbl_login_creds` WRITE;
/*!40000 ALTER TABLE `tbl_login_creds` DISABLE KEYS */;
INSERT INTO `tbl_login_creds` VALUES ('6de9ae38378546c89fb70984d290b64e','005ae026596a4e6897461b69cf3890e2','SVV6H','pY9f03T1iCFrGykR7GNGg3XrI0ODm1WD9v9SPuowSSk=',_binary '!h\ÈañXé\Á}˚ üÜVX',5,3,'2026-03-05 15:05:59',NULL),('83cf0adf6fab4ab5ba0c2b32629ffd25','71624cc44351404f9cff73c8b5253882','jason','fygqzLXrHI00J0xLiEfsm50bOIT8dlYH+MOU3Dqu40E=',_binary '\ l\…\˜lò•\Ìçv≥Íå±q',5,3,'2026-03-05 14:43:01',NULL),('9e8e76be1d3348f49aa4e64c21c78e2c','2f8c4d77a52b4a6e8c82fa922e5b8a3b','admin','gnsUWTOIJ53TjjxvYWPNaRL9mRLyE4YKzFmN9ZSWA/U=',_binary ')\Õ|´ªD6ô€Æ^ôÉ\Ù\»',1,2,'2026-03-05 15:39:33',NULL);
/*!40000 ALTER TABLE `tbl_login_creds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notif_logs`
--

DROP TABLE IF EXISTS `tbl_notif_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_notif_logs` (
  `ID` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `REF_NO` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `USER_ID` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RECIPIENT` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IS_SMS_EMAIL` int NOT NULL,
  `TYPE` int NOT NULL,
  `SENT_DT` timestamp NULL DEFAULT NULL,
  `STATUS` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notif_logs`
--

LOCK TABLES `tbl_notif_logs` WRITE;
/*!40000 ALTER TABLE `tbl_notif_logs` DISABLE KEYS */;
INSERT INTO `tbl_notif_logs` VALUES ('697b71d253a34ded97a378881435b45b','BMS-20260305-23251274','005ae026596a4e6897461b69cf3890e2','Hi, A! User ID: XFE4Q, Password: KkKCYaAE','A, A, A A',0,0,'2026-03-05 15:06:57',0),('80a99c3c0b7d46a299891d538754d777','BMS-20260305-11278423','005ae026596a4e6897461b69cf3890e2','Hi, A! Your account was successfully reset. User ID: SVV6H, Password: DQcNqdJA','A, A, A A',0,3,'2026-03-05 15:40:36',0),('ad252648ad2846b38c9934fce4819316','BMS-20260305-35245547',NULL,'Good day,\n\nWe will be having a street clearing operations tomorrow 10:00AM. All residents are expected to park their vehicles on the respected parking lots to give way with the Parada.\nThank you, and have a good day!','TADEOS, JASON, CANTOS',0,1,'2026-03-05 14:45:50',NULL),('bfc9784ff0f1430697befe38cb57870d','BMS-20260305-66658000','71624cc44351404f9cff73c8b5253882','Hi, JASON! User ID: JHFPX, Password: 5VQDwu5F','TADEOS, JASON, CANTOS',0,0,'2026-03-05 14:42:19',0);
/*!40000 ALTER TABLE `tbl_notif_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `ID` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `REF_NO` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `FIRST_NM` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MIDDLE_NM` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LAST_NM` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `SUFFIX` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BIRTH_DT` timestamp NULL DEFAULT NULL,
  `BIRTH_PLACE` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `GENDER` varchar(8) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CIVIL_STATUS_KEY` int DEFAULT NULL,
  `MOBILE_NO` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PHASE_KEY` int DEFAULT NULL,
  `HOME_ADDRESS` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `HOUSEHOLD_KEY` int DEFAULT NULL,
  `OCCUPATION` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RELIGION` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IS_REGISTERED_VOTER` int DEFAULT NULL,
  `CLASSIFICATION_KEY` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `STATUS` int NOT NULL,
  `DATE_ENROLLED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES ('005ae026596a4e6897461b69cf3890e2','BMS-USER-20260305-40575004','A','A','A','A','2000-11-11 08:00:00','A','M',0,'09384072633','a@a.a',1,'A',NULL,'A','A',0,'1|11',1,'2026-03-05 15:05:58'),('71624cc44351404f9cff73c8b5253882','BMS-USER-20260305-47724926','JASON','CANTOS','TADEOS',NULL,'1999-12-01 08:00:00','DASMARINAS CITY, CAVITE','M',0,'09152130431','tadeosjason@gmail.com',1,'BLOCK B9 EXCESS LOT PALIPARAN 3 DASMARINAS CITY CAVITE',NULL,NULL,'ROMAN CATHOLIC',0,'4',1,'2026-03-05 14:42:13');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bms_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-05 15:48:15
