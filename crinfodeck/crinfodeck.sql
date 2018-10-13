-- MySQL dump 10.16  Distrib 10.1.33-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: crinfodeck
-- ------------------------------------------------------
-- Server version	10.1.33-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `decks`
--

DROP TABLE IF EXISTS `decks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `decks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deck` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carta_1` int(11) DEFAULT NULL,
  `carta_2` int(11) DEFAULT NULL,
  `carta_3` int(11) DEFAULT NULL,
  `carta_4` int(11) DEFAULT NULL,
  `carta_5` int(11) DEFAULT NULL,
  `carta_6` int(11) DEFAULT NULL,
  `carta_7` int(11) DEFAULT NULL,
  `carta_8` int(11) DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decks`
--

LOCK TABLES `decks` WRITE;
/*!40000 ALTER TABLE `decks` DISABLE KEYS */;
INSERT INTO `decks` VALUES (12,'3',8,9,11,NULL,NULL,NULL,NULL,NULL,'A'),(13,'2',38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A'),(14,'4',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A'),(15,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A'),(16,'123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A');
/*!40000 ALTER TABLE `decks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-01 15:35:50