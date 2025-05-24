CREATE DATABASE  IF NOT EXISTS `karteikartenfxdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `karteikartenfxdb`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: karteikartenfxdb
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `ergebnisspeicher`
--

DROP TABLE IF EXISTS `ergebnisspeicher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ergebnisspeicher` (
  `idergebnisSpeicher` int(11) NOT NULL,
  `ergebnis` varchar(45) DEFAULT NULL,
  `idkarteikarten` int(11) DEFAULT NULL,
  PRIMARY KEY (`idergebnisSpeicher`),
  KEY `idkarteikarten_idx` (`idkarteikarten`),
  CONSTRAINT `idkarteikarten` FOREIGN KEY (`idkarteikarten`) REFERENCES `karteikarten` (`idkarteikarten`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ergebnisspeicher`
--

LOCK TABLES `ergebnisspeicher` WRITE;
/*!40000 ALTER TABLE `ergebnisspeicher` DISABLE KEYS */;
/*!40000 ALTER TABLE `ergebnisspeicher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `karteikarten`
--

DROP TABLE IF EXISTS `karteikarten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `karteikarten` (
  `idkarteikarten` int(11) NOT NULL,
  `gegeben` varchar(45) DEFAULT NULL,
  `abgefragt` varchar(45) DEFAULT NULL,
  `gewusst` int(11) DEFAULT NULL,
  `teilweise` int(11) DEFAULT NULL,
  `nichtgewusst` int(11) DEFAULT NULL,
  `aktErg` varchar(45) DEFAULT NULL,
  `vorschlag` bit(1) DEFAULT NULL,
  `datum` datetime DEFAULT NULL,
  `favorit` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idkarteikarten`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `karteikarten`
--

LOCK TABLES `karteikarten` WRITE;
/*!40000 ALTER TABLE `karteikarten` DISABLE KEYS */;
INSERT INTO `karteikarten` VALUES (1,'Solution','Lösung',35,3,3,'gewusst','\0','2025-01-23 13:20:28','\0'),(2,'No','Nein',31,3,3,'nichtgewusst','','2025-01-23 12:27:45',''),(3,'Challenge','Herausforderung',27,3,4,'nichtgewusst','','2025-01-23 13:22:32',''),(4,'Laugh','lachen',1,1,0,'teilweise','\0','2025-01-23 12:27:51','\0'),(5,'People','Leute',1,0,1,'nichtgewusst','','2025-01-23 12:27:52','\0');
/*!40000 ALTER TABLE `karteikarten` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-24 18:35:17
