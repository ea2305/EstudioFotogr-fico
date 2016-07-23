-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: estudio
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.10-MariaDB

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
-- Table structure for table `FOTOGRAFO`
--

DROP TABLE IF EXISTS `FOTOGRAFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOTOGRAFO` (
  `idFotografo` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `poblacion` varchar(45) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFotografo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOTOGRAFO`
--

LOCK TABLES `FOTOGRAFO` WRITE;
/*!40000 ALTER TABLE `FOTOGRAFO` DISABLE KEYS */;
INSERT INTO `FOTOGRAFO` VALUES (1,'asd','Elihu','salle','tuxtla',3),(2,'holamundo','Elihu Alejandro','La Salle','Tuxtla',1),(3,'cuae','Elihu Alejandro','La Salle','Tuxtla',1),(4,'nmnm','bbbb','bvvv','kkkk',0);
/*!40000 ALTER TABLE `FOTOGRAFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TELEFONO_FOTOGRAFO`
--

DROP TABLE IF EXISTS `TELEFONO_FOTOGRAFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TELEFONO_FOTOGRAFO` (
  `idFotografo` int(11) NOT NULL,
  `telefono` int(10) DEFAULT NULL,
  PRIMARY KEY (`idFotografo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TELEFONO_FOTOGRAFO`
--

LOCK TABLES `TELEFONO_FOTOGRAFO` WRITE;
/*!40000 ALTER TABLE `TELEFONO_FOTOGRAFO` DISABLE KEYS */;
INSERT INTO `TELEFONO_FOTOGRAFO` VALUES (1,1234567890),(2,1234567890),(3,1234567890),(4,878787);
/*!40000 ALTER TABLE `TELEFONO_FOTOGRAFO` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-23 17:34:33
