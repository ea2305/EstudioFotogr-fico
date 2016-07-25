CREATE DATABASE  IF NOT EXISTS `estudio` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `estudio`;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOTOGRAFO`
--

LOCK TABLES `FOTOGRAFO` WRITE;
/*!40000 ALTER TABLE `FOTOGRAFO` DISABLE KEYS */;
INSERT INTO `FOTOGRAFO` VALUES (1,'asd','Elihu','salle','tuxtla',3),(2,'holamundo','Elihu Alejandro','La Salle','Tuxtla',1),(3,'cuae','Elihu Alejandro','La Salle','Tuxtla',1),(4,'nmnm','bbbb','bvvv','kkkk',0),(5,'annn','mmm','bbb','pop',9),(6,'mono','mana','nono','klkl',9),(7,'ññ','kl','mora','tux',9);
/*!40000 ALTER TABLE `FOTOGRAFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REPORTAJE`
--

DROP TABLE IF EXISTS `REPORTAJE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REPORTAJE` (
  `idReportaje` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `fotografo` int(11) DEFAULT NULL,
  `num_fotos` int(11) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `tematica` varchar(200) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`idReportaje`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REPORTAJE`
--

LOCK TABLES `REPORTAJE` WRITE;
/*!40000 ALTER TABLE `REPORTAJE` DISABLE KEYS */;
INSERT INTO `REPORTAJE` VALUES (1,'elel','Mono araña',2,1,10,'Nature','0000-00-00',300),(2,'koala','Kola',4,4,1,'Nature','0000-00-00',500),(3,'mm','mm',7,7,7,'mm','0000-00-00',22),(4,'lol','lol',9,9,9,'lol','2016-07-19',6),(5,'asd134','Reportaje nuevo',3,2,1,'Test','2016-07-20',200);
/*!40000 ALTER TABLE `REPORTAJE` ENABLE KEYS */;
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
INSERT INTO `TELEFONO_FOTOGRAFO` VALUES (1,1234567890),(2,1234567890),(3,1234567890),(4,878787),(5,878787),(6,999999),(7,123123);
/*!40000 ALTER TABLE `TELEFONO_FOTOGRAFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'estudio'
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_user`(IN dni VARCHAR(45),IN nombre VARCHAR(45),IN direccion VARCHAR(45),IN poblacion VARCHAR(45),IN telefono INT(10),IN nivel INT)
BEGIN 

	#Insertamos los datos en la tabla fotografos
	INSERT INTO `estudio`.`FOTOGRAFO`
	(`idFotografo`,
	`dni`,
	`nombre`,
	`direccion`,
	`poblacion`,
	`nivel`)
	VALUES
	(NULL,dni,nombre,direccion,poblacion,nivel);
	
    SET @USER = LAST_INSERT_ID();
    
    #Insertamos los datos en la tabla de telefonos de fotografos
    INSERT INTO `estudio`.`TELEFONO_FOTOGRAFO`
	(`idFotografo`,
	`telefono`)
	VALUES
	(@USER,telefono);
    
    SELECT @USER;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `make_report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `make_report`(IN codigo VARCHAR(45),IN titulo VARCHAR(45),IN fotografo INT,IN num_fotos INT,IN nivel INT,IN tematica VARCHAR(200),IN fecha_entrega DATE,IN precio REAL)
BEGIN 

	#Realizamos insercion a la tabla reportaje
    INSERT INTO `estudio`.`REPORTAJE`
	(`idReportaje`,
	`codigo`,
	`titulo`,
	`fotografo`,
	`num_fotos`,
	`nivel`,
	`tematica`,
	`fecha_entrega`,
	`precio`)
	VALUES
	(NULL,codigo,titulo,fotografo,num_fotos,nivel,tematica, fecha_entrega,precio);
    
    SELECT LAST_INSERT_ID();


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-24 13:21:05
