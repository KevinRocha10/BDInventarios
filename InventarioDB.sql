CREATE DATABASE  IF NOT EXISTS `inventario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventario`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: inventario
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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `ID_Categoria` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(35) NOT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Marca` varchar(20) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`ID_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'aceites editado','Un aceite editado','aceitunnnn editado',NULL,'2022-02-27'),(2,'Carnes','Carnecitaa','Carneria',NULL,NULL),(3,'Salsas','Salsitas','SalsaLand',NULL,NULL),(5,'Salsas','Salsitas','SalsaLand',NULL,NULL),(7,'Salsas','Salsitas','SalsaLand',NULL,NULL),(8,'aceites','Un aceite','aceitunnnn','2022-02-27','2022-02-27');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedido` (
  `ID_Pedido` int NOT NULL,
  `ID_Producto` int NOT NULL,
  `Precio_Unit` int NOT NULL,
  `Cantidad` int NOT NULL,
  `Descuento` int DEFAULT NULL,
  PRIMARY KEY (`ID_Pedido`,`ID_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `correo` varchar(45) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL,
  `fecha` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (2,'f3lip3.3z@hotmail.com','2022-05-24','2022-05-24','10:43:42'),(3,'f3lip3.3z@hotmail.com','2022-05-24','2022-05-24','10:45:32'),(4,'f3lip3.3z@gmail.com','2022-05-24','2022-05-24','12:15:23'),(5,'Kevin@gmail.com','2022-05-25','2022-05-25','22:29:24');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `ID_Pago` int NOT NULL,
  `Forma_Pago` varchar(45) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`ID_Pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `ID_Pedido` int NOT NULL,
  `ID_Persona` int DEFAULT NULL,
  `ID_Pago` int DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `ID_Tipo_Movimiento` int DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`ID_Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `ID_Persona` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Fotografia` blob,
  `ID_Tipo_persona` int DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `Password` varchar(100) NOT NULL,
  `updatedAt` date DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Persona`),
  KEY `FK_persona_tipopersona_idx` (`ID_Tipo_persona`),
  CONSTRAINT `FK_persona_tipopersona` FOREIGN KEY (`ID_Tipo_persona`) REFERENCES `tipo_persona` (`ID_Tipo_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (42,'Felipe','ladino','3002960414','f3lip3.3z@hotmail.com',NULL,2,'2022-05-24','$2a$08$4DLlYzdJnOMyzw5W2HjSk.30K2M8WK4G25tcmbmFV1aPnHWZklgFO','2022-05-25','verified'),(43,'Kevin ','Rocha','3219854676','Kevin@gmail.com',NULL,2,'2022-05-25','$2a$08$sG5BVxcTHynsmexbskWLkO/yRde9GnId0b1kYLTVV35OOZUkYNWGy','2022-05-25','verified');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `ID_Producto` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Precio_Unit` int DEFAULT NULL,
  `Stock` int DEFAULT NULL,
  `Descontinuado` tinyint DEFAULT NULL,
  `ID_Categoria` int DEFAULT NULL,
  `ID_Proveedor` int DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`ID_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `ID_Proveedor` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Direccion` varchar(30) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Empresa` varchar(30) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`ID_Proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_pedido`
--

DROP TABLE IF EXISTS `tipo_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_pedido` (
  `ID_Tipo_pedido` int NOT NULL AUTO_INCREMENT,
  `Tipo_pedido` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_Tipo_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_pedido`
--

LOCK TABLES `tipo_pedido` WRITE;
/*!40000 ALTER TABLE `tipo_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_persona`
--

DROP TABLE IF EXISTS `tipo_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_persona` (
  `ID_Tipo_persona` int NOT NULL AUTO_INCREMENT,
  `Tipo_Persona` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_Tipo_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_persona`
--

LOCK TABLES `tipo_persona` WRITE;
/*!40000 ALTER TABLE `tipo_persona` DISABLE KEYS */;
INSERT INTO `tipo_persona` VALUES (1,'Administrador'),(2,'Cliente');
/*!40000 ALTER TABLE `tipo_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'inventario'
--

--
-- Dumping routines for database 'inventario'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-25 14:49:50
