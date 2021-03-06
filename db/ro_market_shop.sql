-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ro_market
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map` int(2) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `character` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `not_found_count` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'Test กบแดง',1,'10,11','เหงาเวอร์',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Test กบแดง',1,'10,11','เหงาเวอร์',NULL,NULL,NULL,NULL,1,1465301687),(3,'gifbd',1,'10,11','เหงาเวอร์',NULL,NULL,1,1465301705,1,1465301705),(4,'Test กบแดง',1,'10,11','เหงาเวอร์c',0,10,1,1465301908,1,1465301916),(5,'Test กบแดง',1,'10,11','',0,10,NULL,1465394267,NULL,1465394267),(6,'4',4,'4','',0,10,NULL,1465394315,NULL,1465394315),(7,'Test กบแดง',3,'3','',0,10,NULL,1465394445,NULL,1465394445),(8,'Test กบแดง',1,'4','',0,10,NULL,1465394500,NULL,1465394500),(9,'5',3,'1','',0,10,NULL,1465448117,NULL,1465448117),(10,'4',4,'4','',0,10,NULL,1465448183,NULL,1465448183),(11,'xxxx',1,'131.5,143','test update',0,10,NULL,1465539815,NULL,1465549573),(12,'รับของร้อน',1,'144.5,177','humsing',0,10,NULL,1465550317,NULL,1465550317),(13,'xxx',1,'66.5,169','',0,10,NULL,1465555994,NULL,1465556053);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-10 17:59:20
