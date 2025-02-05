CREATE DATABASE  IF NOT EXISTS `agrotrack` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `agrotrack`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: agrotrack
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `tbl_activities`
--

DROP TABLE IF EXISTS `tbl_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_activities` (
  `activity_id` bigint NOT NULL AUTO_INCREMENT,
  `activity_type` varchar(255) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `duration` time(6) DEFAULT NULL,
  `supplies` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activities`
--

LOCK TABLES `tbl_activities` WRITE;
/*!40000 ALTER TABLE `tbl_activities` DISABLE KEYS */;
INSERT INTO `tbl_activities` VALUES (1,'Siembra','2025-02-05 08:00:00.000000','02:30:00.000000','Semillas de maíz, Fertilizante NPK'),(2,'Riego','2025-02-06 07:30:00.000000','01:45:00.000000','Agua'),(3,'Aplicación de pesticida','2025-02-07 09:15:00.000000','01:00:00.000000','Pesticida orgánico'),(4,'Cosecha','2025-02-08 06:50:00.000000','04:00:00.000000','Guantes, Tijeras de poda'),(6,'Labranza','2025-02-10 08:30:00.000000','03:30:00.000000','Arado mecánico'),(7,'Monitoreo de plagas','2025-02-11 07:00:00.000000','01:20:00.000000','Lupa, Trampas adhesivas'),(8,'Poda','2025-02-12 11:00:00.000000','02:10:00.000000','Tijeras de podar'),(12,'Cosecha','2024-12-29 19:00:00.000000','04:30:00.000000','Machete, Canasta'),(13,'Fertilización','2025-02-14 19:00:00.000000','05:00:00.000000','Manguera, Fertilizador'),(14,'Cosecha','2024-12-21 19:00:00.000000','04:30:00.000000','Machete, Canasta'),(16,'Cosecha','2024-12-21 19:00:00.000000','04:30:00.000000','Machete, Canasta'),(17,'Cosecha','2024-12-29 19:00:00.000000','04:30:00.000000','Machete, Canasta');
/*!40000 ALTER TABLE `tbl_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_field_activities`
--

DROP TABLE IF EXISTS `tbl_field_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_field_activities` (
  `activity_id` bigint NOT NULL AUTO_INCREMENT,
  `activity_type` varchar(255) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `duration` time(6) DEFAULT NULL,
  `supplies` varchar(255) DEFAULT NULL,
  `field_id` bigint NOT NULL,
  PRIMARY KEY (`activity_id`),
  KEY `FKjtkgaow564cjphxmbvwtyt4h4` (`field_id`),
  CONSTRAINT `FKhl640ay3ryoyrk83ryeddp6sd` FOREIGN KEY (`activity_id`) REFERENCES `tbl_activities` (`activity_id`),
  CONSTRAINT `FKjtkgaow564cjphxmbvwtyt4h4` FOREIGN KEY (`field_id`) REFERENCES `tbl_fields` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_field_activities`
--

LOCK TABLES `tbl_field_activities` WRITE;
/*!40000 ALTER TABLE `tbl_field_activities` DISABLE KEYS */;
INSERT INTO `tbl_field_activities` VALUES (1,'Siembra','2025-02-05 08:00:00.000000','02:30:00.000000','Semillas de maíz, Fertilizante NPK',5),(2,'Riego','2025-02-06 07:30:00.000000','01:45:00.000000','Agua',9),(3,'Aplicación de pesticida','2025-02-07 09:15:00.000000','01:00:00.000000','Pesticida orgánico',4),(4,'Cosecha','2025-02-08 06:50:00.000000','04:00:00.000000','Guantes, Tijeras de poda',7),(6,'Labranza','2025-02-10 08:30:00.000000','03:30:00.000000','Arado mecánico',1),(7,'Monitoreo de plagas','2025-02-11 07:00:00.000000','01:20:00.000000','Lupa, Trampas adhesivas',3),(8,'Poda','2025-02-12 11:00:00.000000','02:10:00.000000','Tijeras de podar',6),(12,NULL,NULL,NULL,NULL,5),(13,NULL,NULL,NULL,NULL,4),(14,NULL,NULL,NULL,NULL,5),(16,NULL,NULL,NULL,NULL,5),(17,NULL,NULL,NULL,NULL,5);
/*!40000 ALTER TABLE `tbl_field_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fields`
--

DROP TABLE IF EXISTS `tbl_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_fields` (
  `field_id` bigint NOT NULL AUTO_INCREMENT,
  `crop` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fields`
--

LOCK TABLES `tbl_fields` WRITE;
/*!40000 ALTER TABLE `tbl_fields` DISABLE KEYS */;
INSERT INTO `tbl_fields` VALUES (1,'Maíz','4.6097','-74.0817','2.5 ha'),(2,'Café','4.7109','-74.0721','1.8 ha'),(3,'Caña de azúcar','3.4532','-76.5345','1.8 ha'),(4,'Tomate','3.4578','-76.5284','2.0 ha'),(5,'Plátano','3.4595','-76.5312','1.5 ha'),(6,'Aguacate','3.4520','-76.5290','4.0 ha'),(7,'Yuca','3.4547','-76.5331','2.7 ha'),(8,'Frijol','3.4563','-76.5268','3.5 ha'),(9,'Papaya','3.4589','-76.5303','1.2 ha'),(10,'Tomate','3.4578','-76.52','2.0 ha');
/*!40000 ALTER TABLE `tbl_fields` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-05 18:49:00
