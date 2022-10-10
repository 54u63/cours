-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: localhost    Database: GdL
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ListeLyceen`
--

DROP TABLE IF EXISTS `ListeLyceen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ListeLyceen` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(10) DEFAULT NULL,
  `classe` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListeLyceen`
--

LOCK TABLES `ListeLyceen` WRITE;
/*!40000 ALTER TABLE `ListeLyceen` DISABLE KEYS */;
INSERT INTO `ListeLyceen` VALUES (1,'MARTIN','Yohan','TC1'),(2,'BERNARD','Ablard','TC2'),(3,'THOMAS','Severin','TC3'),(4,'PETIT','Athlee','TC4');
/*!40000 ALTER TABLE `ListeLyceen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avisFrancais`
--

DROP TABLE IF EXISTS `avisFrancais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avisFrancais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avis` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avisFrancais`
--

LOCK TABLES `avisFrancais` WRITE;
/*!40000 ALTER TABLE `avisFrancais` DISABLE KEYS */;
INSERT INTO `avisFrancais` VALUES (1,'favorable'),(189,'Avis favorable');
/*!40000 ALTER TABLE `avisFrancais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avisMath`
--

DROP TABLE IF EXISTS `avisMath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avisMath` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avis` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avisMath`
--

LOCK TABLES `avisMath` WRITE;
/*!40000 ALTER TABLE `avisMath` DISABLE KEYS */;
/*!40000 ALTER TABLE `avisMath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avisPhysique`
--

DROP TABLE IF EXISTS `avisPhysique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avisPhysique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avis` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avisPhysique`
--

LOCK TABLES `avisPhysique` WRITE;
/*!40000 ALTER TABLE `avisPhysique` DISABLE KEYS */;
/*!40000 ALTER TABLE `avisPhysique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poursuiteEtude`
--

DROP TABLE IF EXISTS `poursuiteEtude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poursuiteEtude` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lyceen` int(3) DEFAULT NULL,
  `ecole` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poursuiteEtude`
--

LOCK TABLES `poursuiteEtude` WRITE;
/*!40000 ALTER TABLE `poursuiteEtude` DISABLE KEYS */;
INSERT INTO `poursuiteEtude` VALUES (1,216,'MPSI MTP'),(2,90,'IUT INFO MTP'),(3,216,'MPSI MTP'),(4,90,'IUT INFO MTP'),(5,126,'IUT MMI BZ'),(6,36,'NULL'),(7,189,'BTS SIO MTP'),(8,54,'IUT RT VALENCE'),(9,171,'MPSI MTP');
/*!40000 ALTER TABLE `poursuiteEtude` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-14 15:25:25
