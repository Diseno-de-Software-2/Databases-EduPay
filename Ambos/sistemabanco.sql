-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemabancos
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` VALUES (2,'East Bank'),(1,'Western Bank');
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(16) NOT NULL,
  `nombre_titular` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `saldo` float NOT NULL,
  `id_banco` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_banco` (`id_banco`),
  CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`id_banco`) REFERENCES `banco` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES (1,'1234567891011121','Juan David Castillo Sierra','juanchito@gmail.com',335000,1),(2,'1111111111111111','EduPay','edupay@gmail.com',305000,2),(3,'1234567890123456','Sebastian David Ramos Bouchra','sebastech@gmail.com',1000000,1),(4,'1234567891123456','Francis Blanco Blanco','francescoVirgolini@gmail.com',780000,1),(5,'2222222255555555','Jose Daniel Ocoro Lucumi','niche@gmail.com',500000,2),(6,'1548544752026354','Juan David Castillo Sierra','juanchito@gmail.com',500000,2),(7,'2000000000000001','Pedro Alfonso Molina Lara','Pmolineus@gmail.com',250000,1),(8,'3333333333333333','Reinaldo Daniel Mote Prado','Reiprado123@gmail.com',890500,2),(9,'9999999999999999','Camilo Andres Lopez Ruiz','CMLRuiz@gmail.com',700000,1),(10,'1555555555555514','Camilo Andres Lopez Ruiz','CMLRuiz@gmail.com',900000,2);
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta`
--

DROP TABLE IF EXISTS `tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjeta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(16) NOT NULL,
  `fecha_expiracion` date NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `proveedor` varchar(20) NOT NULL,
  `credito` float NOT NULL,
  `id_cuenta` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cuenta` (`id_cuenta`),
  CONSTRAINT `tarjeta_ibfk_1` FOREIGN KEY (`id_cuenta`) REFERENCES `cuenta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta`
--

LOCK TABLES `tarjeta` WRITE;
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
INSERT INTO `tarjeta` VALUES (1,'1234567891011122','2023-11-15','123','Visa',500000,1),(2,'1599999999999999','2022-10-19','123','Visa',750000,2),(3,'2598589654258863','2023-11-15','123','Mastercard',900000,1),(4,'8545671455684525','2020-11-15','123','American Express',1500000,3),(5,'5786214523561581','2022-05-15','123','American Express',2500000,9),(6,'1225344869356215','2021-09-08','123','Mastercard',1850000,8),(7,'1422563254125635','2022-02-02','123','Mastercard',750000,5),(8,'1551545125812154','2025-07-09','123','Visa',755000,4),(9,'2445815135441344','2024-02-12','123','Visa',600000,10),(10,'3485515136472514','2020-12-25','123','American Express',7580000,6);
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaccion`
--

DROP TABLE IF EXISTS `transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaccion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` enum('0','1') NOT NULL,
  `monto` float NOT NULL,
  `id_cuenta` int DEFAULT NULL,
  `id_tarjeta` int DEFAULT NULL,
  `completado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cuenta` (`id_cuenta`),
  KEY `id_tarjeta` (`id_tarjeta`),
  CONSTRAINT `transaccion_ibfk_1` FOREIGN KEY (`id_cuenta`) REFERENCES `cuenta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transaccion_ibfk_2` FOREIGN KEY (`id_tarjeta`) REFERENCES `tarjeta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaccion`
--

LOCK TABLES `transaccion` WRITE;
/*!40000 ALTER TABLE `transaccion` DISABLE KEYS */;
INSERT INTO `transaccion` VALUES (1,'2022-11-23','02:21:20','0',15000,1,NULL,1),(2,'2022-11-23','02:21:20','1',15000,2,NULL,1),(3,'2022-11-23','02:25:27','0',15000,1,NULL,1),(4,'2022-11-23','02:25:27','1',15000,2,NULL,1),(5,'2022-11-23','02:27:14','0',15000,1,NULL,1),(6,'2022-11-23','02:27:14','1',15000,2,NULL,1),(7,'2022-11-23','02:29:10','0',15000,1,NULL,1),(8,'2022-11-23','02:29:10','1',15000,2,NULL,1),(9,'2022-11-23','02:31:27','0',15000,1,NULL,1),(10,'2022-11-23','02:31:27','1',15000,2,NULL,1),(11,'2022-11-23','02:33:18','0',15000,NULL,8,1),(12,'2022-11-23','02:33:18','1',15000,2,NULL,1),(13,'2022-11-23','02:33:47','0',15000,NULL,8,1),(14,'2022-11-23','02:33:47','1',15000,2,NULL,1),(15,'2022-11-23','02:52:15','0',15000,1,NULL,1),(16,'2022-11-23','02:52:15','1',15000,2,NULL,1),(17,'2022-11-23','11:11:40','0',40000,NULL,8,1),(18,'2022-11-23','11:11:40','1',40000,2,NULL,1),(19,'2022-11-23','11:12:05','0',40000,NULL,8,1),(20,'2022-11-23','11:12:05','1',40000,2,NULL,1),(21,'2022-11-23','11:31:09','0',15000,1,NULL,1),(22,'2022-11-23','11:31:09','1',15000,2,NULL,1),(23,'2022-11-23','11:35:04','0',15000,NULL,8,1),(24,'2022-11-23','11:35:04','1',15000,2,NULL,1),(25,'2022-11-23','11:35:40','0',15000,NULL,8,1),(26,'2022-11-23','11:35:40','1',15000,2,NULL,1),(27,'2022-11-23','11:39:11','0',15000,1,NULL,1),(28,'2022-11-23','11:39:11','1',15000,2,NULL,1),(29,'2022-11-23','11:39:50','0',15000,1,NULL,1),(30,'2022-11-23','11:39:50','1',15000,2,NULL,1),(31,'2022-11-23','11:40:38','0',15000,1,NULL,1),(32,'2022-11-23','11:40:38','1',15000,2,NULL,1);
/*!40000 ALTER TABLE `transaccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23 22:25:30
