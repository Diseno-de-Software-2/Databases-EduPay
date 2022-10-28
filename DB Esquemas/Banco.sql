-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: banco
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
  `idBanco` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idBanco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` VALUES (1,'East Bank'),(2,'Western Bank');
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta` (
  `idCuenta` int NOT NULL AUTO_INCREMENT,
  `id_persona` int NOT NULL,
  `id_banco` int NOT NULL,
  `Nombre_usuario` varchar(45) NOT NULL,
  `Fecha_Creacion` date NOT NULL,
  `Estado_riesgo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idCuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES (1,1545,1,'Pedro Perez','2015-03-25',NULL),(2,1513,1,'Maria Lopez','2000-05-17',NULL),(3,52,2,'Armando Barrera','1958-01-12',NULL);
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitorieo`
--

DROP TABLE IF EXISTS `monitorieo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitorieo` (
  `id_banco` int NOT NULL,
  `id_oficina` int NOT NULL,
  PRIMARY KEY (`id_banco`,`id_oficina`),
  KEY `id_oficina_idx` (`id_oficina`),
  CONSTRAINT `id_banco` FOREIGN KEY (`id_banco`) REFERENCES `banco` (`idBanco`),
  CONSTRAINT `id_oficina` FOREIGN KEY (`id_oficina`) REFERENCES `oficina` (`idoficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitorieo`
--

LOCK TABLES `monitorieo` WRITE;
/*!40000 ALTER TABLE `monitorieo` DISABLE KEYS */;
/*!40000 ALTER TABLE `monitorieo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficina`
--

DROP TABLE IF EXISTS `oficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oficina` (
  `idoficina` int NOT NULL,
  PRIMARY KEY (`idoficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficina`
--

LOCK TABLES `oficina` WRITE;
/*!40000 ALTER TABLE `oficina` DISABLE KEYS */;
/*!40000 ALTER TABLE `oficina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta`
--

DROP TABLE IF EXISTS `tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjeta` (
  `numero` int NOT NULL,
  `Numero_cuenta` int NOT NULL,
  `Fecha_vencimiento` date NOT NULL,
  `cvc` int NOT NULL,
  `Tipo_Tarjeta` int NOT NULL,
  `credito_Aprobado` int DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `Numero_cuenta_idx` (`Numero_cuenta`),
  CONSTRAINT `Numero_cuenta` FOREIGN KEY (`Numero_cuenta`) REFERENCES `cuenta` (`idCuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta`
--

LOCK TABLES `tarjeta` WRITE;
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
INSERT INTO `tarjeta` VALUES (1,2,'2020-03-25',2525,1,NULL),(2,1,'2022-07-05',1529,2,NULL),(3,3,'2035-09-17',2567,1,NULL);
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaccion`
--

DROP TABLE IF EXISTS `transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaccion` (
  `idTransaccion` int NOT NULL AUTO_INCREMENT,
  `Numero_cuenta_origen` int NOT NULL,
  `Numero_cuenta_destino` int NOT NULL,
  `id_banco_origen` int NOT NULL,
  `id_banco_destino` int NOT NULL,
  `monto` int NOT NULL,
  `motivo` int DEFAULT NULL,
  `Transaccioncol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTransaccion`),
  KEY `Numero_cuenta_origen_idx` (`Numero_cuenta_origen`),
  KEY `Numero_cuenta_destino_idx` (`Numero_cuenta_destino`),
  KEY `id_banco_destino_idx` (`id_banco_destino`),
  KEY `id_banco_origen_idx` (`id_banco_origen`),
  CONSTRAINT `id_banco_destino` FOREIGN KEY (`id_banco_destino`) REFERENCES `banco` (`idBanco`),
  CONSTRAINT `id_banco_origen` FOREIGN KEY (`id_banco_origen`) REFERENCES `banco` (`idBanco`),
  CONSTRAINT `Numero_cuenta_destino` FOREIGN KEY (`Numero_cuenta_destino`) REFERENCES `cuenta` (`idCuenta`),
  CONSTRAINT `Numero_cuenta_origen` FOREIGN KEY (`Numero_cuenta_origen`) REFERENCES `cuenta` (`idCuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaccion`
--

LOCK TABLES `transaccion` WRITE;
/*!40000 ALTER TABLE `transaccion` DISABLE KEYS */;
INSERT INTO `transaccion` VALUES (1,1,2,1,1,15639,NULL,NULL),(2,1,3,1,2,15091,NULL,NULL),(3,3,2,2,1,15361,NULL,NULL);
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

-- Dump completed on 2022-10-27  0:22:52
