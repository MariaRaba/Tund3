CREATE DATABASE  IF NOT EXISTS `hobune` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hobune`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hobune
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
-- Table structure for table `hobune`
--

DROP TABLE IF EXISTS `hobune`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hobune` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nimi` varchar(255) NOT NULL,
  `synniaasta` bigint NOT NULL,
  `omanik` bigint unsigned NOT NULL,
  `tall` varchar(255) NOT NULL,
  `treening` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `horse_ownerid_foreign` (`omanik`),
  KEY `horse_stablecode_foreign` (`tall`),
  KEY `horse_trainingcode_foreign` (`treening`),
  CONSTRAINT `horse_ownerid_foreign` FOREIGN KEY (`omanik`) REFERENCES `omanik` (`id`),
  CONSTRAINT `horse_stablecode_foreign` FOREIGN KEY (`tall`) REFERENCES `tall` (`kood`),
  CONSTRAINT `horse_trainingcode_foreign` FOREIGN KEY (`treening`) REFERENCES `treeningud` (`kood`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobune`
--

LOCK TABLES `hobune` WRITE;
/*!40000 ALTER TABLE `hobune` DISABLE KEYS */;
INSERT INTO `hobune` VALUES (22,'Kaine',2010,178,'7','RACE'),(23,'Kahli',2010,178,'7','RACE'),(24,'Kalina',2011,278,'5','JUMP'),(25,'Kalondra',2012,378,'5','JUMP'),(26,'Kar Kalim',2013,178,'2','JUMP'),(27,'Karisha',2014,478,'2','RACE'),(29,'Katareena',2015,678,'2','RACE'),(30,'Katifa',2016,878,'7A','JUMP'),(31,'Kayleigh',2011,978,'7A','JUMP'),(32,'Keener Than Keen',2012,278,'7A','RACE'),(33,'Kei',2013,378,'7A','JUMP'),(34,'Kellendria',2017,478,'7B','JUMP'),(35,'Kelly Green',2012,576,'7B','PRANCE'),(36,'Kelvin',2009,576,'7B','PRANCE'),(37,'Keno',2011,576,'5A','PRANCE'),(38,'Kentucky Roses',2010,878,'5A','RACE'),(39,'Kermit',2014,978,'5A','RACE'),(40,'Kevah',2012,598,'5','RACE'),(41,'Kiawa',2017,598,'5','PRANCE'),(42,'King',2008,598,'2','PRANCE'),(43,'King Quackers crystal',2007,598,'2','PRANCE'),(44,'Kings ransom',2014,598,'2','PRANCE'),(45,'Kipawa',2017,586,'7B','PRANCE'),(46,'Kirby',2011,586,'5A','PRANCE'),(47,'Kiss',2010,586,'5','PRANCE'),(48,'Kiss Me Clown',2016,586,'5','GALLOP'),(49,'Kissin the Sky',2015,586,'5','GALLOP'),(50,'Kit Kat\'s Chat',2014,586,'2','GALLOP'),(51,'Kitty Hawk',2011,586,'2','GALLOP'),(52,'Kizi',2017,178,'2','GALLOP'),(53,'Knight',2011,178,'7A','GALLOP'),(54,'Kochiese',2019,178,'7','GALLOP'),(55,'Kodiak',2018,178,'7','GALLOP');
/*!40000 ALTER TABLE `hobune` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hobuse_tervis`
--

DROP TABLE IF EXISTS `hobuse_tervis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hobuse_tervis` (
  `id` bigint NOT NULL,
  `hobused` bigint unsigned DEFAULT NULL,
  `kirjeldus` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `horseid` (`hobused`),
  CONSTRAINT `hobuse_tervis_ibfk_1` FOREIGN KEY (`hobused`) REFERENCES `hobune` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobuse_tervis`
--

LOCK TABLES `hobuse_tervis` WRITE;
/*!40000 ALTER TABLE `hobuse_tervis` DISABLE KEYS */;
INSERT INTO `hobuse_tervis` VALUES (587878,24,'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),(687878,25,'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),(786668,32,'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),(787855,23,'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),(787866,23,'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),(787878,23,'Lorem ipsum dolor sit amet, consectetur adipiscing elit');
/*!40000 ALTER TABLE `hobuse_tervis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omanik`
--

DROP TABLE IF EXISTS `omanik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `omanik` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nimi` varchar(255) NOT NULL,
  `aadress` varchar(255) NOT NULL,
  `telefon` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=979 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omanik`
--

LOCK TABLES `omanik` WRITE;
/*!40000 ALTER TABLE `omanik` DISABLE KEYS */;
INSERT INTO `omanik` VALUES (178,'Aadu Laid','Kööbiku 7',96897609),(278,'Ester Treever','Lõuna Park 5',86897609),(378,'Raul Väli','Roosiku tee 2',26897609),(478,'Mihkel Soo','Sõstra 12',66897609),(576,'Oskar Vallik','Põdra tee 14',76897609),(586,'Reet Romanjuk','Sibula 9',46897609),(598,'Paavo Neihaus','Toomingu tee 12',16897609),(678,'Carina Romano Ciaro','Linnutee 8',76897609),(878,'Carin Sepp','Ööbiku 8',76897609),(978,'Karin Hallas','Ööbiku 7',76897609);
/*!40000 ALTER TABLE `omanik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tall`
--

DROP TABLE IF EXISTS `tall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tall` (
  `kood` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `hooldus` bigint unsigned NOT NULL,
  PRIMARY KEY (`kood`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tall`
--

LOCK TABLES `tall` WRITE;
/*!40000 ALTER TABLE `tall` DISABLE KEYS */;
INSERT INTO `tall` VALUES ('2','Vormsi',809),('5','Tallinn',609),('5A','Tallinn',509),('7','Haapsalu',1209),('7A','Haapsalu',1209),('7B','Haapsalu',1809);
/*!40000 ALTER TABLE `tall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treener`
--

DROP TABLE IF EXISTS `treener`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treener` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nimi` varchar(255) NOT NULL,
  `telefon` bigint NOT NULL,
  `aadress` varchar(255) NOT NULL,
  `kulu` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treener`
--

LOCK TABLES `treener` WRITE;
/*!40000 ALTER TABLE `treener` DISABLE KEYS */;
INSERT INTO `treener` VALUES (1111,'Tessa Silm',52078789,'Sibula 6',1103),(7227,'Minos Prime',61078789,'Kööbiku 2',1103),(7777,'Emma Pohl',12078789,'Roosiku tee 3',1103),(8888,'Kevin Must',32078789,'Sõstar 12',1103),(9999,'Sebastian Soo',42078789,'Linnutee 5',1103);
/*!40000 ALTER TABLE `treener` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treeningud`
--

DROP TABLE IF EXISTS `treeningud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treeningud` (
  `kood` varchar(255) NOT NULL,
  `kirjeldus` varchar(255) NOT NULL,
  `treener` bigint unsigned NOT NULL,
  PRIMARY KEY (`kood`),
  KEY `training_trainerid_foreign` (`treener`),
  CONSTRAINT `training_trainerid_foreign` FOREIGN KEY (`treener`) REFERENCES `treener` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treeningud`
--

LOCK TABLES `treeningud` WRITE;
/*!40000 ALTER TABLE `treeningud` DISABLE KEYS */;
INSERT INTO `treeningud` VALUES ('GALLOP','Lorem ipsum dolor sit amet, consectetur adipiscing elit.',9999),('JUMP','Lorem ipsum dolor sit amet, consectetur adipiscing elit.',8888),('PRANCE','Lorem ipsum dolor sit amet, consectetur adipiscing elit.',1111),('RACE','Lorem ipsum dolor sit amet, consectetur adipiscing elit.',7777);
/*!40000 ALTER TABLE `treeningud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `varustus`
--

DROP TABLE IF EXISTS `varustus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `varustus` (
  `id` bigint unsigned NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `kogus` bigint NOT NULL,
  `hind_tk_kohta` bigint NOT NULL,
  `tall` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_stablecode_foreign` (`tall`),
  CONSTRAINT `equipment_stablecode_foreign` FOREIGN KEY (`tall`) REFERENCES `tall` (`kood`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `varustus`
--

LOCK TABLES `varustus` WRITE;
/*!40000 ALTER TABLE `varustus` DISABLE KEYS */;
INSERT INTO `varustus` VALUES (11111,'Sadul',17,64,'5'),(21111,'Sadul',20,64,'2'),(22222,'Vihmatekk',12,34,'5A'),(24444,'Kaitsmed',10,54,'5'),(33333,'Kabja',40,14,'7'),(36663,'Kabjamääre',8,14,'7'),(44444,'Hobuse termometer',16,54,'7A'),(55555,'Puhastushari',20,34,'5A');
/*!40000 ALTER TABLE `varustus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-05 20:54:44
