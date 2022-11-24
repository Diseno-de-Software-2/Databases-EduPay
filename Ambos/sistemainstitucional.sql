-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)

--

-- Host: localhost    Database: sistemainstitucional

-- ------------------------------------------------------

-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!50503 SET NAMES utf8 */

;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */

;

/*!40103 SET TIME_ZONE='+00:00' */

;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */

;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */

;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */

;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */

;

--

-- Table structure for table `cuentas`

--

use sistemainstitucional;

DROP TABLE IF EXISTS `cuentas`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!50503 SET character_set_client = utf8mb4 */

;

CREATE TABLE
    `cuentas` (
        `id` int NOT NULL AUTO_INCREMENT,
        `numero` varchar(16) NOT NULL,
        `nombre_titular` varchar(50) NOT NULL,
        `email` varchar(30) NOT NULL,
        `banco` varchar(20) NOT NULL,
        `id_persona` int DEFAULT NULL,
        PRIMARY KEY (`id`),
        KEY `id_persona` (`id_persona`),
        CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
    ) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Dumping data for table `cuentas`

--

LOCK TABLES `cuentas` WRITE;

/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */

;

INSERT INTO `cuentas`
VALUES (
        1,
        '1234567891011121',
        'Juan David Castillo Sierra',
        'juanchito@gmail.com',
        'Western Bank',
        1001885236
    );

/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */

;

UNLOCK TABLES;

--

-- Table structure for table `historial`

--

DROP TABLE IF EXISTS `historial`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!50503 SET character_set_client = utf8mb4 */

;

CREATE TABLE
    `historial` (
        `id` int NOT NULL AUTO_INCREMENT,
        `fecha` date NOT NULL,
        `hora` time NOT NULL,
        `servicio` varchar(20) NOT NULL,
        `precio` decimal(20, 2) NOT NULL,
        `metodo_pago` varchar(80) NOT NULL,
        `cuotas` int DEFAULT NULL,
        `exitoso` tinyint(1) NOT NULL,
        `id_persona` int NOT NULL,
        PRIMARY KEY (`id`),
        KEY `id_persona` (`id_persona`),
        CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
    ) ENGINE = InnoDB AUTO_INCREMENT = 22 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Dumping data for table `historial`

--

LOCK TABLES `historial` WRITE;

/*!40000 ALTER TABLE `historial` DISABLE KEYS */

;

INSERT INTO `historial`
VALUES (
        1,
        '2022-11-23',
        '01:55:22',
        'Préstamo de libro',
        15000.00,
        'Western Bank 1234567891011121',
        NULL,
        0,
        1001885236
    ), (
        2,
        '2022-11-23',
        '02:19:50',
        'Préstamo de libro',
        15000.00,
        'Western Bank 1234567891011121',
        NULL,
        0,
        1001885236
    ), (
        3,
        '2022-11-23',
        '02:20:08',
        'Préstamo de libro',
        15000.00,
        'Western Bank 1234567891011121',
        NULL,
        0,
        1001885236
    ), (
        4,
        '2022-11-23',
        '02:21:20',
        'Préstamo de libro',
        15000.00,
        'Western Bank 1234567891011121',
        NULL,
        0,
        1001885236
    ), (
        5,
        '2022-11-23',
        '02:25:27',
        'Préstamo de libro',
        15000.00,
        'Western Bank 1234567891011121',
        NULL,
        0,
        1001885236
    ), (
        6,
        '2022-11-23',
        '02:27:14',
        'Préstamo de libro',
        15000.00,
        'Western Bank 1234567891011121',
        NULL,
        0,
        1001885236
    ), (
        7,
        '2022-11-23',
        '02:29:10',
        'Préstamo de libro',
        15000.00,
        'Western Bank 1234567891011121',
        NULL,
        1,
        1001885236
    ), (
        8,
        '2022-11-23',
        '02:31:27',
        'Préstamo de libro',
        15000.00,
        'Western Bank 1234567891011121',
        NULL,
        1,
        1001885236
    ), (
        9,
        '2022-11-23',
        '02:33:18',
        'Préstamo de libro',
        15000.00,
        'Visa *2154',
        1,
        1,
        1001885236
    ), (
        10,
        '2022-11-23',
        '02:33:33',
        'Exámen de ETS',
        40000.00,
        'Visa *2154',
        1,
        0,
        1001885236
    ), (
        11,
        '2022-11-23',
        '02:33:47',
        'Préstamo de libro',
        15000.00,
        'Visa *2154',
        1,
        1,
        1001885236
    ), (
        12,
        '2022-11-23',
        '02:52:15',
        'Préstamo de libro',
        15000.00,
        'Western Bank 1234567891011121',
        NULL,
        1,
        1001885236
    ), (
        13,
        '2022-11-23',
        '11:11:40',
        'Exámen de ETS',
        40000.00,
        'Visa *2154',
        5,
        1,
        1001885236
    ), (
        14,
        '2022-11-23',
        '11:12:05',
        'Exámen de ETS',
        40000.00,
        'Visa *2154',
        1,
        1,
        1001885236
    ), (
        15,
        '2022-11-23',
        '11:25:35',
        'Préstamo de libro',
        15000.00,
        'American Express *2514',
        5,
        0,
        1001885236
    ), (
        16,
        '2022-11-23',
        '11:31:09',
        'Préstamo de libro',
        15000.00,
        'Western Bank 1234567891011121',
        NULL,
        1,
        1001885236
    ), (
        17,
        '2022-11-23',
        '11:35:04',
        'Préstamo de libro',
        15000.00,
        'Visa *2154',
        5,
        1,
        1001885236
    ), (
        18,
        '2022-11-23',
        '11:35:40',
        'Préstamo de libro',
        15000.00,
        'Visa *2154',
        5,
        1,
        1001885236
    ), (
        19,
        '2022-11-23',
        '11:39:11',
        'Préstamo de libro',
        15000.00,
        'Western Bank 1234567891011121',
        NULL,
        1,
        1001885236
    ), (
        20,
        '2022-11-23',
        '11:39:50',
        'Préstamo de libro',
        15000.00,
        'East Bank 1234567891011121',
        NULL,
        1,
        1001885236
    ), (
        21,
        '2022-11-23',
        '11:40:38',
        'Préstamo de libro',
        15000.00,
        'Western Bank 1234567891011121',
        NULL,
        1,
        1001885236
    );

/*!40000 ALTER TABLE `historial` ENABLE KEYS */

;

UNLOCK TABLES;

--

-- Table structure for table `oficinas`

--

DROP TABLE IF EXISTS `oficinas`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!50503 SET character_set_client = utf8mb4 */

;

CREATE TABLE
    `oficinas` (
        `id` int NOT NULL AUTO_INCREMENT,
        `nombre` varchar(20) NOT NULL,
        `contacto` varchar(50) NOT NULL,
        `descripcion` varchar(100) DEFAULT NULL,
        `id_sede` int NOT NULL,
        PRIMARY KEY (`id`),
        KEY `id_sede` (`id_sede`),
        CONSTRAINT `oficinas_ibfk_1` FOREIGN KEY (`id_sede`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
    ) ENGINE = InnoDB AUTO_INCREMENT = 21 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Dumping data for table `oficinas`

--

LOCK TABLES `oficinas` WRITE;

/*!40000 ALTER TABLE `oficinas` DISABLE KEYS */

;

INSERT INTO `oficinas`
VALUES (
        1,
        'Biblioteca',
        'bib@uni.edu.co',
        'Servicios de préstamo de libros y reserva de espacios de estudio.',
        1
    ), (
        2,
        'Centro Médico',
        'med_cen@uni.edu.co',
        'Servicios médicos y diagnósticos.',
        1
    ), (
        3,
        'Registro',
        'reg@uni.edu.co',
        'Expedición de certificados y constancias.',
        1
    ), (
        4,
        'Finanzas',
        'money@uni.edu.co',
        'Gestión de presupuesto y pagos.',
        1
    ), (
        5,
        'Biblioteca',
        'bib@uni.edu.co',
        'Servicios de préstamo de libros y reserva de espacios de estudio.',
        2
    ), (
        6,
        'Centro Médico',
        'med_cen@uni.edu.co',
        'Servicios médicos y diagnósticos.',
        2
    ), (
        7,
        'Registro',
        'reg@uni.edu.co',
        'Expedición de certificados y constancias.',
        2
    ), (
        8,
        'Finanzas',
        'money@uni.edu.co',
        'Gestión de presupuesto y pagos.',
        2
    ), (
        9,
        'Biblioteca',
        'bib@uni.edu.co',
        'Servicios de préstamo de libros y reserva de espacios de estudio.',
        3
    ), (
        10,
        'Centro Médico',
        'med_cen@uni.edu.co',
        'Servicios médicos y diagnósticos.',
        3
    ), (
        11,
        'Registro',
        'reg@uni.edu.co',
        'Expedición de certificados y constancias.',
        3
    ), (
        12,
        'Finanzas',
        'money@uni.edu.co',
        'Gestión de presupuesto y pagos.',
        3
    ), (
        13,
        'Biblioteca',
        'bib@uni.edu.co',
        'Servicios de préstamo de libros y reserva de espacios de estudio.',
        4
    ), (
        14,
        'Centro Médico',
        'med_cen@uni.edu.co',
        'Servicios médicos y diagnósticos.',
        4
    ), (
        15,
        'Registro',
        'reg@uni.edu.co',
        'Expedición de certificados y constancias.',
        4
    ), (
        16,
        'Finanzas',
        'money@uni.edu.co',
        'Gestión de presupuesto y pagos.',
        4
    ), (
        17,
        'Biblioteca',
        'bib@uni.edu.co',
        'Servicios de préstamo de libros y reserva de espacios de estudio.',
        5
    ), (
        18,
        'Centro Médico',
        'med_cen@uni.edu.co',
        'Servicios médicos y diagnósticos.',
        5
    ), (
        19,
        'Registro',
        'reg@uni.edu.co',
        'Expedición de certificados y constancias.',
        5
    ), (
        20,
        'Finanzas',
        'money@uni.edu.co',
        'Gestión de presupuesto y pagos.',
        5
    );

/*!40000 ALTER TABLE `oficinas` ENABLE KEYS */

;

UNLOCK TABLES;

--

-- Table structure for table `personas`

--

DROP TABLE IF EXISTS `personas`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!50503 SET character_set_client = utf8mb4 */

;

CREATE TABLE
    `personas` (
        `id` int NOT NULL,
        `nombre` varchar(50) NOT NULL,
        `apellidos` varchar(50) NOT NULL,
        `tipo` enum('0', '1') NOT NULL,
        `email` varchar(30) NOT NULL,
        `contraseña` varchar(40) NOT NULL,
        `fecha_nacimiento` date NOT NULL,
        PRIMARY KEY (`id`),
        CONSTRAINT `person_type` CHECK ( ( (`tipo` = _utf8mb4 '0')
                or (`tipo` = _utf8mb4 '1')
            )
        )
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Dumping data for table `personas`

--

LOCK TABLES `personas` WRITE;

/*!40000 ALTER TABLE `personas` DISABLE KEYS */

;

INSERT INTO `personas`
VALUES (
        1001255625,
        'Daren',
        'Diaz Grau',
        '0',
        'chef_oeuvre@gmail.com',
        '123456',
        '2000-10-15'
    ), (
        1001885236,
        'Juan ',
        'Castillo Sierra',
        '0',
        'juanchito@gmail.com',
        '123456',
        '2001-11-09'
    ), (
        1002548589,
        'Sebastian David',
        'Ramos Bouchra',
        '0',
        'sebastech@gmail.com',
        '123456',
        '2003-01-01'
    ), (
        1011551335,
        'Santiago',
        'Villamizar Gonzalez',
        '0',
        'santi_2c@gmail.com',
        '123456',
        '2004-08-09'
    ), (
        1015150201,
        'Pedro Alfonso',
        'Molina Lara',
        '0',
        'Pmolineus@gmail.com',
        '123456',
        '1978-07-20'
    ), (
        1025455235,
        'Camilo Andres',
        'Lopez Ruiz',
        '0',
        'CMLRuiz@gmail.com',
        '123456',
        '1999-04-15'
    ), (
        1025614155,
        'Reinaldo Daniel',
        'Mote Prado',
        '1',
        'Reiprado123@gmail.com',
        '123456',
        '2000-05-02'
    ), (
        1522054152,
        'Maria Isabel',
        'Diaz Blanco',
        '1',
        'MDiaz@gmail.com',
        '123456',
        '2001-05-10'
    ), (
        1522150234,
        'Francis',
        'Blanco Blanco',
        '1',
        'francescoVirgolini@gmail.com',
        '123456',
        '1978-05-12'
    ), (
        2105151501,
        'Jose Daniel',
        'Ocoro Lucumi',
        '1',
        'niche@gmail.com',
        '123456',
        '1962-09-11'
    );

/*!40000 ALTER TABLE `personas` ENABLE KEYS */

;

UNLOCK TABLES;

--

-- Table structure for table `sedes`

--

DROP TABLE IF EXISTS `sedes`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!50503 SET character_set_client = utf8mb4 */

;

CREATE TABLE
    `sedes` (
        `id` int NOT NULL AUTO_INCREMENT,
        `ciudad` varchar(50) NOT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY `ciudad` (`ciudad`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Dumping data for table `sedes`

--

LOCK TABLES `sedes` WRITE;

/*!40000 ALTER TABLE `sedes` DISABLE KEYS */

;

INSERT INTO `sedes`
VALUES (1, 'Barranquilla'), (2, 'Cartagena'), (5, 'Montería'), (3, 'Santa Marta'), (4, 'Sincelejo');

/*!40000 ALTER TABLE `sedes` ENABLE KEYS */

;

UNLOCK TABLES;

--

-- Table structure for table `servicios`

--

DROP TABLE IF EXISTS `servicios`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!50503 SET character_set_client = utf8mb4 */

;

CREATE TABLE
    `servicios` (
        `id` int NOT NULL AUTO_INCREMENT,
        `nombre` varchar(50) NOT NULL,
        `valor` float DEFAULT NULL,
        `descripcion` varchar(150) NOT NULL,
        `id_oficina` int NOT NULL,
        PRIMARY KEY (`id`),
        KEY `id_oficina` (`id_oficina`),
        CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`id_oficina`) REFERENCES `oficinas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
    ) ENGINE = InnoDB AUTO_INCREMENT = 21 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Dumping data for table `servicios`

--

LOCK TABLES `servicios` WRITE;

/*!40000 ALTER TABLE `servicios` DISABLE KEYS */

;

INSERT INTO `servicios`
VALUES (
        1,
        'Préstamo de libro',
        15000,
        'Préstamo de libro por una semana.',
        1
    ), (
        2,
        'Exámen de ETS',
        40000,
        'Examen de sangre para diagnóstico de ETS.',
        2
    ), (
        3,
        'Certificado de notas',
        17000,
        'Expedición de certificado de notas.',
        3
    ), (
        4,
        'Compra de Crédito',
        300000,
        'Compra de un crédito adicional para el semestre vigente.',
        4
    ), (
        5,
        'Préstamo de libro',
        15000,
        'Préstamo de libro por una semana.',
        5
    ), (
        6,
        'Exámen de ETS',
        40000,
        'Examen de sangre para diagnóstico de ETS.',
        6
    ), (
        7,
        'Certificado de notas',
        17000,
        'Expedición de certificado de notas.',
        7
    ), (
        8,
        'Compra de Crédito',
        300000,
        'Compra de un crédito adicional para el semestre vigente.',
        8
    ), (
        9,
        'Préstamo de libro',
        15000,
        'Préstamo de libro por una semana.',
        9
    ), (
        10,
        'Exámen de ETS',
        40000,
        'Examen de sangre para diagnóstico de ETS.',
        10
    ), (
        11,
        'Certificado de notas',
        17000,
        'Expedición de certificado de notas.',
        11
    ), (
        12,
        'Compra de Crédito',
        300000,
        'Compra de un crédito adicional para el semestre vigente.',
        12
    ), (
        13,
        'Préstamo de libro',
        15000,
        'Préstamo de libro por una semana.',
        13
    ), (
        14,
        'Exámen de ETS',
        40000,
        'Examen de sangre para diagnóstico de ETS.',
        14
    ), (
        15,
        'Certificado de notas',
        17000,
        'Expedición de certificado de notas.',
        15
    ), (
        16,
        'Compra de Crédito',
        300000,
        'Compra de un crédito adicional para el semestre vigente.',
        16
    ), (
        17,
        'Préstamo de libro',
        15000,
        'Préstamo de libro por una semana.',
        17
    ), (
        18,
        'Exámen de ETS',
        40000,
        'Examen de sangre para diagnóstico de ETS.',
        18
    ), (
        19,
        'Certificado de notas',
        17000,
        'Expedición de certificado de notas.',
        19
    ), (
        20,
        'Compra de Crédito',
        300000,
        'Compra de un crédito adicional para el semestre vigente.',
        20
    );

/*!40000 ALTER TABLE `servicios` ENABLE KEYS */

;

UNLOCK TABLES;

--

-- Table structure for table `tarjetas`

--

DROP TABLE IF EXISTS `tarjetas`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!50503 SET character_set_client = utf8mb4 */

;

CREATE TABLE
    `tarjetas` (
        `id` int NOT NULL AUTO_INCREMENT,
        `numero` varchar(16) NOT NULL,
        `nombre_titular` varchar(50) NOT NULL,
        `fecha_expiracion` date NOT NULL,
        `cvv` varchar(3) NOT NULL,
        `proveedor` varchar(20) NOT NULL,
        `id_persona` int NOT NULL,
        PRIMARY KEY (`id`),
        KEY `id_persona` (`id_persona`),
        CONSTRAINT `tarjetas_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
    ) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Dumping data for table `tarjetas`

--

LOCK TABLES `tarjetas` WRITE;

/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */

;

INSERT INTO `tarjetas`
VALUES (
        3,
        '1234567891011122',
        'Juan David Castillo Sierra',
        '2023-11-15',
        '123',
        'Visa',
        1001885236
    ), (
        4,
        '8545671455684525',
        'Sebastian David Ramos Bouchra',
        '2020-11-15',
        '123',
        'American Express',
        1001885236
    );

/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */

;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */

;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */

;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */

;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */

;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */

;

-- Dump completed on 2022-11-23 22:25:15