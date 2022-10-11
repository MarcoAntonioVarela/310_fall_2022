-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: marco_varela_module2_byui_catalog
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field` (
  `id` int NOT NULL,
  `field` varchar(45) NOT NULL,
  `program_code` varchar(45) NOT NULL,
  `total_credits` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field`
--

LOCK TABLES `field` WRITE;
/*!40000 ALTER TABLE `field` DISABLE KEYS */;
INSERT INTO `field` VALUES (1,'Applied Technology','379',60),(2,'Applied Technology','679',120),(3,'Computer Information Technology','202',23),(4,'Computer Information Technology','2506',15),(5,'Computer Information Technology','861',120),(6,'Database','C116',15),(7,'System Administration','C115',14),(8,'Web Design','223',24),(9,'Web Design and Development','590',120),(10,'Web Design and Development','390',60),(11,'Web Development','230',24),(12,'Web Development','C175',15),(13,'Web Frontend','C176',15),(14,'Computer Engineering','450',123),(15,'Computer Programming','264',25),(16,'Computer Programming','C145',13),(17,'Computer Science','440',120),(18,'Computer Science','147',25),(19,'Computing Fundamentals','7001',14),(20,'Electrical and Computer Engineering','245',22),(21,'Electrical and Computer Engineering','384',60),(22,'Electrical Engineering','445',120),(23,'Embedded Systems','C168',13),(24,'Functional Programming','C171',15),(25,'Machine Learning Fundamentals','C169',15),(26,'Software Design','C165',15),(27,'Software Development','C178',14),(28,'Software Engineering','443',121),(29,'Software Management','226',24),(30,'Software Quality Assurance','C164',15),(31,'Web and Computer Programming','C129',13);
/*!40000 ALTER TABLE `field` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-10 21:01:53
