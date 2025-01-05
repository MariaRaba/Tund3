CREATE DATABASE  IF NOT EXISTS `tund3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tund3`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tund3
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `grupp`
--

DROP TABLE IF EXISTS `grupp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupp` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `grupi nim` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupp`
--

LOCK TABLES `grupp` WRITE;
/*!40000 ALTER TABLE `grupp` DISABLE KEYS */;
INSERT INTO `grupp` VALUES (1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E');
/*!40000 ALTER TABLE `grupp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klassivanem`
--

DROP TABLE IF EXISTS `klassivanem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klassivanem` (
  `õpilase id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Grupp` varchar(255) NOT NULL,
  PRIMARY KEY (`õpilase id`),
  CONSTRAINT `klassivanem_õpilase id_foreign` FOREIGN KEY (`õpilase id`) REFERENCES `grupp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klassivanem`
--

LOCK TABLES `klassivanem` WRITE;
/*!40000 ALTER TABLE `klassivanem` DISABLE KEYS */;
INSERT INTO `klassivanem` VALUES (1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E');
/*!40000 ALTER TABLE `klassivanem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `õpilased`
--

DROP TABLE IF EXISTS `õpilased`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `õpilased` (
  `õpilase id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `eesnimi` varchar(255) NOT NULL,
  `perekonnanimi` varchar(255) NOT NULL,
  `sünniaeg` date NOT NULL,
  `grupp` varchar(255) NOT NULL,
  PRIMARY KEY (`õpilase id`),
  CONSTRAINT `Õpilased_õpilase id_foreign` FOREIGN KEY (`õpilase id`) REFERENCES `grupp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `õpilased`
--

LOCK TABLES `õpilased` WRITE;
/*!40000 ALTER TABLE `õpilased` DISABLE KEYS */;
INSERT INTO `õpilased` VALUES (1,'Taan','Juuni','2000-12-09','A'),(2,'Madis','Mägi','2000-09-07','B'),(3,'Kevin','Suvi','2000-08-05','C'),(4,'Mari','Jõhvikas','2001-07-13','D'),(5,'Leila','Smith','2002-08-24','E');
/*!40000 ALTER TABLE `õpilased` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `õppeained`
--

DROP TABLE IF EXISTS `õppeained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `õppeained` (
  `õppeaine id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `õppeaine nim` varchar(255) NOT NULL,
  `õpetaja nimi` varchar(255) NOT NULL,
  PRIMARY KEY (`õppeaine id`),
  CONSTRAINT `Õppeained_õppeaine id_foreign` FOREIGN KEY (`õppeaine id`) REFERENCES `grupp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `õppeained`
--

LOCK TABLES `õppeained` WRITE;
/*!40000 ALTER TABLE `õppeained` DISABLE KEYS */;
INSERT INTO `õppeained` VALUES (1,'Matemaaatika','Madis Leis'),(2,'Inglise k','Leil Smith'),(3,'Eesti k','Simon Smith'),(4,'Bioloogia','Rookus Fookus'),(5,'Keemia','Leshy Wood');
/*!40000 ALTER TABLE `õppeained` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-05 20:39:12
