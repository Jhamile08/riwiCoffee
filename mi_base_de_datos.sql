-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: riwi_coffee_development
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2024-10-29 12:53:08.589910','2024-10-29 12:53:08.589913');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `coffee_request` tinyint(1) DEFAULT NULL,
  `water_request` tinyint(1) DEFAULT NULL,
  `paper_request` tinyint(1) DEFAULT NULL,
  `other_request` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_requests_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_8ead8b1e6b` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20241029130215'),('20241029130236'),('20241030030630'),('20241030134429');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jha','22','11','2024-10-29 19:05:00.278518','2024-10-29 19:05:00.278518'),(2,'jha','22','11','2024-10-29 19:05:27.048671','2024-10-29 19:05:27.048671'),(3,'jha','22','1','2024-10-29 19:05:46.994041','2024-10-29 19:05:46.994041'),(4,'jha','22','1','2024-10-29 19:06:24.792158','2024-10-29 19:06:24.792158'),(5,'jha','22','1','2024-10-29 19:08:50.774192','2024-10-29 19:08:50.774192'),(6,'jha','22','1','2024-10-29 19:13:38.691365','2024-10-29 19:13:38.691365'),(7,'jha','22','33','2024-10-29 19:14:51.288650','2024-10-29 19:14:51.288650'),(8,'jha','22','33','2024-10-29 19:15:24.171117','2024-10-29 19:15:24.171117'),(9,'jha','22','33','2024-10-29 19:17:57.345727','2024-10-29 19:17:57.345727'),(10,'jha','545','22','2024-10-29 19:19:09.482983','2024-10-29 19:19:09.482983'),(11,'11','11','11','2024-10-29 19:19:39.882570','2024-10-29 19:19:39.882570'),(12,'11','1122','222','2024-10-29 19:43:20.170347','2024-10-29 19:43:20.170347'),(13,'andre','dfda@hotmail.com','$2a$12$PlburyN0UGoj1vu0xOhm5uOHcY2Ry.ctuTd5SZuH6BXTsdzYs2592','2024-10-30 13:49:23.233732','2024-10-30 13:49:23.233732'),(14,'wqwq','sasa|@lsd.com','$2a$12$GTvpHAA30g9q0NeQP/tH6uM/L8HwhIvXO2qz8QAVo8F2R0wRQ1W1K','2024-10-30 14:00:12.828484','2024-10-30 14:00:12.828484'),(15,'wqwqss','sasa|@lssd.com','$2a$12$usvMDNnLvtZ5dCYmF6DetuReLyKTAmNFmZdEmSfdhF2xXlU9c.FyG','2024-10-30 14:04:57.929172','2024-10-30 14:04:57.929172'),(16,'mile','mile@gmail.com','$2a$12$ILauIZlfCHTMRb4pyNJzR.GBZdX2ULBvp4Cy3TxSqDW4ERDRVvUM.','2024-10-30 16:32:10.887029','2024-10-30 16:32:10.887029'),(17,'caro','ddede@222.com','$2a$12$GSYQCvC/yidd8nvDiqrmhORKdatf2/Tr9Dv2kSTIn86ZUhe0jH8Xa','2024-10-30 17:00:36.857492','2024-10-30 17:00:36.857492'),(18,'manu','ds@gmail.com','$2a$12$EzvQkBDG6y0N/4oiodnreeknZVft.G/eJ7DDZTdaPlgu3Odb1PPaO','2024-11-02 01:04:52.047789','2024-11-02 01:04:52.047789');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-02  8:55:29
