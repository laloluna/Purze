-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: purze
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Coach',NULL,NULL),(2,'Columbia',NULL,NULL),(3,'Calvin Klein',NULL,NULL),(4,'Guess',NULL,NULL),(5,'Kipling',NULL,NULL),(6,'Levis',NULL,NULL),(7,'Nine West',NULL,NULL),(8,'Nautica',NULL,NULL),(9,'Steve Maiden',NULL,NULL),(10,'Tommy',NULL,NULL),(11,'Timberland',NULL,NULL),(12,'Isabelle','2018-12-19 19:17:35','2018-12-19 19:17:35'),(13,'Kenneth Cole','2018-12-19 19:42:17','2018-12-19 19:42:17'),(14,'Lily Bloom','2018-12-19 19:42:38','2018-12-19 19:42:38'),(15,'Rosetti','2018-12-19 19:42:50','2018-12-19 19:42:50'),(16,'Rampage','2018-12-19 19:43:14','2018-12-19 19:43:14'),(17,'Michael Kors','2019-10-15 19:07:10','2019-10-15 19:07:10'),(18,'BCBG','2019-10-15 21:41:31','2019-10-15 21:41:31'),(19,'Aldo','2019-10-15 21:44:58','2019-10-15 21:44:58'),(20,'Betsey','2019-10-15 21:49:35','2019-10-15 21:49:35'),(21,'Dockers','2019-10-15 22:03:02','2019-10-15 22:03:02');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_debt` double(12,4) NOT NULL,
  `debt` double(12,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Clau','Fiocenter',0.0000,0.0000,'2018-12-20 15:32:13','2019-01-18 14:54:50'),(2,'Susi','González',0.0000,0.0000,'2018-12-21 04:41:36','2019-02-10 19:03:00'),(3,'Luzma','Vecina',0.0000,1500.0000,'2019-01-08 01:25:51','2019-02-20 23:54:58'),(4,'Elvira','Cortés Rojas',650.0000,11000.0000,'2019-01-10 22:11:44','2019-10-16 16:53:40'),(5,'Mary Carmen','García',3500.0000,0.0000,'2019-01-10 22:13:28','2019-10-15 18:31:56'),(6,'Soco','Castillo',16300.0000,5300.0000,'2019-01-10 22:46:07','2019-10-15 18:58:25'),(7,'Fer','Amiga de Ilse',0.0000,0.0000,'2019-01-12 16:55:51','2019-01-13 23:00:50'),(8,'Rosy','Mau',0.0000,5500.0000,'2019-01-21 02:22:00','2019-10-15 22:20:23'),(9,'Xareny','Gutiérrez',0.0000,0.0000,'2019-01-22 22:51:13','2019-10-15 18:32:23'),(10,'Marlen','Arenas',1000.0000,0.0000,'2019-01-22 22:52:22','2019-10-15 18:31:47'),(11,'Lilí','Pérez',0.0000,4800.0000,'2019-01-29 02:49:38','2019-10-16 03:50:49'),(12,'Vicente','Luna',0.0000,0.0000,'2019-02-27 20:23:39','2019-10-15 19:29:53'),(13,'Tere','Gutiérrez',0.0000,0.0000,'2019-10-15 19:25:32','2019-10-15 19:29:29'),(14,'Ilse','Castellanos',0.0000,1500.0000,'2019-10-15 22:12:44','2019-10-16 03:53:23'),(15,'Sury','Ti',0.0000,700.0000,'2019-10-15 22:13:30','2019-10-16 03:41:14'),(16,'Areli','Ti',0.0000,1100.0000,'2019-10-15 22:13:51','2019-10-16 03:48:23'),(17,'Paulet','Ortiz',0.0000,5800.0000,'2019-10-15 22:14:32','2019-10-16 15:18:20'),(18,'Zoraida','Muñoz',0.0000,5200.0000,'2019-10-16 03:45:45','2019-10-16 03:52:05'),(19,'Juan Carlos','Cárcamo',0.0000,4300.0000,'2019-10-16 03:49:07','2019-10-16 03:51:31'),(20,'Rafael','Gutiérrez',0.0000,5200.0000,'2019-10-16 16:48:49','2019-10-16 16:50:42');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Azul',NULL,NULL),(2,'Blanca',NULL,NULL),(3,'Beige',NULL,NULL),(4,'Cafe',NULL,NULL),(5,'Gris',NULL,NULL),(6,'Negra',NULL,NULL),(7,'Naranja',NULL,NULL),(8,'Palo de rosa',NULL,NULL),(9,'Roja',NULL,NULL),(10,'Rosa',NULL,NULL),(11,'Verde',NULL,NULL),(12,'Dorado','2018-12-19 19:14:00','2018-12-19 19:14:00'),(13,'Morado','2018-12-19 19:46:28','2018-12-19 19:46:28'),(14,'Mostaza','2019-10-15 19:13:38','2019-10-15 19:13:38'),(15,'Hueso','2019-10-15 19:40:02','2019-10-15 19:40:02'),(16,'Vino','2019-10-15 20:21:03','2019-10-15 20:21:03');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descriptions`
--

DROP TABLE IF EXISTS `descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `descriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `extra` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_id` int(10) unsigned NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `brand_id` int(10) unsigned NOT NULL,
  `color_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `descriptions_size_id_foreign` (`size_id`),
  KEY `descriptions_type_id_foreign` (`type_id`),
  KEY `descriptions_brand_id_foreign` (`brand_id`),
  KEY `descriptions_color_id_foreign` (`color_id`),
  CONSTRAINT `descriptions_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  CONSTRAINT `descriptions_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `descriptions_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `descriptions_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptions`
--

LOCK TABLES `descriptions` WRITE;
/*!40000 ALTER TABLE `descriptions` DISABLE KEYS */;
INSERT INTO `descriptions` VALUES (1,'Back pack','storage/images/c69MLy8t9ANHRk2TJvrNclczzPBSSEhCn3csf8qH.jpeg',5,2,5,11,'2018-12-19 18:27:18','2018-12-19 18:27:18'),(2,'Bolsas al frente','storage/images/nObdYb4P1rT5bXQs5tfy6nHGzuRDyIJCmYQRUvWH.jpeg',5,2,5,11,'2018-12-19 18:32:28','2018-12-19 18:32:28'),(3,'Back pack','storage/images/lCsv1OeAqokbZa4bFH47wskkutbt7KJ3vBgkrzCE.jpeg',3,2,5,6,'2018-12-19 18:37:02','2018-12-19 18:37:02'),(4,'Bolsas al frente','storage/images/Ttx9VMpbPr8dUh8VrpFh9cLOS7GJgUusV2AnmLVl.jpeg',5,2,5,3,'2018-12-19 18:40:20','2018-12-19 18:40:20'),(5,'Cierre al frente','storage/images/yjM8CjySFX45Vlks9r1ZOn3Lj4h1kMbAouhaVx6i.jpeg',4,2,5,1,'2018-12-19 18:43:54','2018-12-19 18:43:54'),(6,'Asa extra','storage/images/bQvU5SryTeXQCHpoAg6wIU9qL7t50K23oHZwE90F.jpeg',5,2,5,12,'2018-12-19 19:15:57','2018-12-19 19:15:57'),(7,'Con cartera extra','storage/images/dEroZRMYqapSm6thr2dYND9A1LSOaIwkCIuYkLOw.jpeg',5,2,10,4,'2018-12-19 19:19:47','2018-12-19 19:19:47'),(8,'Back pack','storage/images/IkzApyF30EqrwNGVWnDYlwpHGHNVvD7SuLaFHZjt.jpeg',4,2,10,4,'2018-12-19 19:22:33','2018-12-19 19:22:33'),(9,'Logos brillosos','storage/images/ApJ5vLEV576OT7LvtHnztyFUasJ5j3XNhPwf4CLj.jpeg',4,2,10,6,'2018-12-19 19:24:44','2018-12-19 19:24:44'),(10,'Logos brillosos','storage/images/qb2CTWnnorqmOp1wXgqOt424XUWhf0ss8DGrwG5f.jpeg',3,2,10,6,'2018-12-19 19:26:41','2018-12-19 19:26:41'),(11,'Kit','storage/images/2rfoq04Ju0rJdJizY94hGdxOJkH3qNswo7ujkiOQ.jpeg',1,4,10,1,'2018-12-19 19:30:57','2018-12-19 19:30:57'),(12,'Asa','storage/images/vNah3goxwTUm97PheP07bbycwr0gawVSxpAYX3fE.jpeg',1,1,10,6,'2018-12-19 19:32:56','2018-12-19 19:32:56'),(13,'Kit rayas verdes','storage/images/M630rx3nB50dwhTY2L5hezsHSjoqYVX7rbFJn6Nt.jpeg',1,4,8,1,'2018-12-19 19:36:19','2018-12-19 19:36:19'),(14,'Kit flores','storage/images/C0ucOovf1ElFFxqzQPWhfUtO0hZAoXSEnIy9DBj8.jpeg',1,4,8,1,'2018-12-19 19:38:28','2018-12-19 19:38:28'),(15,'Kit transparente','storage/images/NQlTeZVxMKjGeFvnGLjeKJ4c7gwaicPOFaK2DO9Q.jpeg',1,4,8,1,'2018-12-19 19:40:43','2018-12-19 19:40:43'),(16,'Back pack','storage/images/9gIFIljxFoKtXaa5kO8XZzdiRBhKI5ctEujEfoUN.jpeg',1,2,15,6,'2018-12-19 19:45:03','2018-12-19 19:45:03'),(17,'Back pack unicornios','storage/images/ml0PHC6TidIGSs3Rp1iYYIc692fcWp7HBqYH5u7P.jpeg',4,2,14,13,'2018-12-19 19:53:05','2018-12-19 19:53:05'),(18,'Back pack','storage/images/Wr8VSkUhDLUzxu4LiQDiLdN24EVs93ukNYkCyDQN.jpeg',4,2,12,11,'2018-12-19 19:54:58','2018-12-19 19:54:58'),(19,'Flores','storage/images/yxlo5WAhQsCw0c91d4WgwBB26As9TCAQWvu0krUt.jpeg',1,1,16,3,'2018-12-19 19:56:29','2018-12-19 19:56:29'),(20,'Cierre plata','storage/images/sYq4nhG3qGjwd0kkaJTncpoVsRM4RXk3bqNGMKhp.jpeg',1,1,13,6,'2018-12-19 19:58:08','2018-12-19 19:58:08'),(21,'Lisa con broche','storage/images/dOcECGzHi57HHCw3bCijLtUtx7LzsEiAd1mYR2H6.jpeg',1,1,7,6,'2018-12-19 19:59:58','2018-12-19 19:59:58'),(22,'Moño y corazón','storage/images/90LcQ1B9Lcl0WqggtqtCdTb1IpthEdpfaPWTFYqP.jpeg',1,1,7,3,'2018-12-19 20:01:27','2018-12-19 20:01:27'),(23,'Moño al frente','storage/images/oKe1ronzP43hNuLYoknqBvnDqvXUsD3XwYEh4wGU.jpeg',2,1,7,6,'2018-12-19 20:04:35','2018-12-19 20:04:35'),(24,'Moño al frente','storage/images/NVz2CWGbb6zMrZWlL4QIYJ5Be4SQRY5fMqhtrSDx.jpeg',2,1,7,5,'2018-12-19 20:07:00','2018-12-19 20:07:00'),(25,'Cierre y broche','storage/images/Qh9YOocgglKx7q7uDWSLV5RkPVqPNIC98yCjPMpv.jpeg',2,1,3,6,'2018-12-19 20:08:19','2018-12-19 20:08:19'),(26,'Back pack','storage/images/UJXoT116IH3QvtnAQfHwzWoJcPUoIMgTdIe4y89y.jpeg',4,2,9,9,'2019-01-08 04:24:15','2019-01-08 04:24:15'),(27,'Caballero','storage/images/ZJHnj182S77R3vkBBCNsC6Loq7ALPEkQLtKxp5Jm.jpeg',1,1,3,6,'2019-01-21 19:06:17','2019-01-21 19:06:17'),(28,'Asa larga','storage/images/Pu4l62yCWWacEd2Uw8uOXZNwyAZpMt5eLjt1sZOV.jpeg',3,2,17,6,'2019-10-15 19:11:24','2019-10-15 19:11:24'),(29,'Asa larga','storage/images/v6urCUNw401gFR030hLMnT0QnhgyHuOAQsJ8eDxg.jpeg',3,2,17,14,'2019-10-15 19:15:11','2019-10-15 19:15:11'),(30,'Asa larga','storage/images/vj9IhVIiyAjxAvQoGkkv0aRGOx2TvWOC5FRwyoJI.jpeg',3,2,17,10,'2019-10-15 19:16:46','2019-10-15 19:16:46'),(31,'Asa larga','storage/images/f4XRABjNnpTHBWkGP1Q6vqDvZDRKniSbZ1skXEwC.jpeg',3,2,17,3,'2019-10-15 19:19:19','2019-10-15 19:19:19'),(32,'Oro rosa','storage/images/e8TCtMcqCyiBaivb84q3bKDeT9DPoIDMSzwZo6Sa.jpeg',4,2,17,2,'2019-10-15 19:23:36','2019-10-15 19:23:36'),(33,'Logo','storage/images/KyYewYLe7Z8Nn9lDiuLnlZocaCkCPnaz6EnoKvRp.jpeg',5,7,17,15,'2019-10-15 20:10:22','2019-10-15 20:10:22'),(34,'Logo','storage/images/Ou1xtjKEM0Z6vUU0eT5pyjrg4yNY5LqV3IDdFnG3.jpeg',4,1,17,15,'2019-10-15 20:19:18','2019-10-15 20:19:18'),(35,'Cierre y asa','storage/images/J53lRRrBwlFi4fjsftIp6Fqud67QLXO535BGKn8B.jpeg',4,1,17,16,'2019-10-15 20:22:29','2019-10-15 20:22:29'),(36,'Con broche','storage/images/zFLmSiKxN7UjDZui3EsJeDLoil9qODzYoel7n5j5.jpeg',4,1,17,5,'2019-10-15 20:24:37','2019-10-15 20:24:37'),(37,'Azul raro','storage/images/3i8Ln5bxJeYdnqfs7mj58nSNt7ngQz4vTUGXwYNR.jpeg',4,2,5,1,'2019-10-15 20:27:28','2019-10-15 20:27:28'),(38,'Blanca y azul','storage/images/PZJbvRFYlcLrCAI4r0Gx5FSNGn7pY7kR53FiQKR9.jpeg',4,2,1,5,'2019-10-15 20:37:05','2019-10-15 20:37:05'),(39,'Interior rojo','storage/images/RGuxBYPYjLQRLCjBkHXRr4WLndSO45ea9DxoHTOX.jpeg',4,2,1,6,'2019-10-15 20:39:09','2019-10-15 20:39:09'),(40,'Interior verde','storage/images/88KgWdxLCh3kCKZlaaG8r9NDeDMTp5GTrSR15QeO.jpeg',5,2,1,1,'2019-10-15 20:41:13','2019-10-15 20:41:13'),(41,'Piel y tela','storage/images/gC9M3uJL77npN1Y5vyevTSZn1RX97oppIdvyCFsF.jpeg',4,7,1,15,'2019-10-15 20:43:18','2019-10-15 20:43:18'),(42,'Piel, militar','storage/images/cmWnl9s5ZohCjhatFigbZEaLE23RT5tdqACzA9Ru.jpeg',4,7,1,11,'2019-10-15 20:54:53','2019-10-15 20:54:53'),(43,'Logo café, rígida','storage/images/SpfLTjRk6FV2wSGESJBc5dPJ8jp9jEyX3bETDP5c.jpeg',4,7,1,15,'2019-10-15 20:58:18','2019-10-15 20:58:18'),(44,'Con logo','storage/images/GOlZ8s6AV0ycwaUxls7UORFMD5cyOhkwtoTRcFTa.jpeg',3,1,1,15,'2019-10-15 21:01:18','2019-10-15 21:01:18'),(45,'Con broche','storage/images/iNj0gyqU0gvjFVIjHPDUhceiX9sg1w3hDI71O2Rr.jpeg',4,1,1,4,'2019-10-15 21:03:38','2019-10-15 21:03:38'),(46,'Con cierre','storage/images/qT4GdaLxrTFWgaQUnB95Yx8gZyroX4f6d8JgmXik.jpeg',4,1,1,15,'2019-10-15 21:05:59','2019-10-15 21:05:59'),(47,'Con cierre','storage/images/ET33lpe9t1c21KeJuiH2lRH5gitv956mhgcvII0O.jpeg',4,1,1,6,'2019-10-15 21:09:52','2019-10-15 21:09:52'),(48,'Con estoperoles','storage/images/MhdJcfXIponWkq6uv59dEIq2kTiXpqADZmJN8pAD.jpeg',3,7,9,6,'2019-10-15 21:33:06','2019-10-15 21:33:06'),(49,'Letras blancas','storage/images/rCZlpTVvRWaDOXnhaNPCVUfDTmPIzlztQ3s3Xba9.jpeg',3,7,9,6,'2019-10-15 21:34:51','2019-10-15 21:34:51'),(50,'Con gamuza','storage/images/RL506eiS65l0bYmViRh0RicfIiGfTH5zsIe0uqzH.jpeg',4,2,18,16,'2019-10-15 21:43:46','2019-10-15 21:43:46'),(51,'Asa larga','storage/images/htgXt6b6xQ4DfxD1L7UUsRfQ9Xjz9CB8Gwowqyjn.jpeg',3,2,19,4,'2019-10-15 21:46:54','2019-10-15 21:46:54'),(52,'Costuras rombo','storage/images/DxqgcpolQJwGagTJSMvV4pn8n7DqWRgXfeZu37Y3.jpeg',4,7,19,15,'2019-10-15 21:48:50','2019-10-15 21:48:50'),(53,'Con negro','storage/images/oDz2cqmevhD3TqgjzrvkBAYEWtRKw04DdRHrIG3K.jpeg',3,2,20,10,'2019-10-15 21:50:55','2019-10-15 21:50:55'),(54,'Con asa','storage/images/0SyyYNgEFPwHtQRJGz0uqjzOOJ5D0NuRWXmYPYcC.jpeg',3,1,7,6,'2019-10-15 21:52:36','2019-10-15 21:52:36'),(55,'Con asa','storage/images/6TcjSzC3UUVBKuVlGJdjuJhftqx3eCPkzjym2m4o.jpeg',5,1,4,6,'2019-10-15 21:53:53','2019-10-15 21:53:53'),(56,'Con asa','storage/images/fYpGFMBJGCYGTJ3den3d3eZ4n6PNrbJvRcpdlGVm.jpeg',5,1,4,15,'2019-10-15 21:55:08','2019-10-15 21:55:08'),(57,'Con asa','storage/images/pVEOBKhFEaRYyHQV8V1oq22Cb0Q23h0Rs1Edzok0.jpeg',5,1,10,4,'2019-10-15 21:56:29','2019-10-15 21:56:29'),(58,'Caballero','storage/images/uJj88vUB8P0KzBHnsO3JyUDtOUkBsAPrr0CrZedS.jpeg',2,1,2,4,'2019-10-15 21:57:59','2019-10-15 21:57:59'),(59,'Con negro','storage/images/fBMAICoL4YvYibDC7jMD2AmQslt7UuxzKkwXVqm0.jpeg',2,1,2,4,'2019-10-15 21:59:02','2019-10-15 21:59:02'),(60,'Caballeto','storage/images/4HxNtndUQbNUH4DaRXxB4qiHV24S44hbjrtJJVg8.jpeg',2,1,8,4,'2019-10-15 22:01:19','2019-10-15 22:01:19'),(61,'Caballero','storage/images/6xurTGSqTjdUQk2AGWS0GDJfTsCMuw1XYEmDxqco.jpeg',2,1,21,4,'2019-10-15 22:04:02','2019-10-15 22:04:02'),(62,'Caballero','storage/images/2kKL8Ihj7uGbUZcU01GufxLIPcP2ypu4wuwPNOxS.jpeg',2,1,11,6,'2019-10-15 22:05:16','2019-10-15 22:05:16'),(63,'Caballero','storage/images/kqxFe7x8ZQznvNRJh7GnqXLqBk7j9Vx0B9LmGUIO.jpeg',2,1,4,6,'2019-10-15 22:07:27','2019-10-15 22:07:27'),(64,'Tipo maleta','storage/images/zrCF6C8h2mzqhaRmcXQzWDXGSRq8BHM3kKqajCf9.jpeg',4,2,5,3,'2019-10-15 22:16:38','2019-10-15 22:16:38');
/*!40000 ALTER TABLE `descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dollar` double(12,4) NOT NULL,
  `place_id` int(10) unsigned NOT NULL,
  `price_usd` double(12,4) NOT NULL,
  `cost_usd` double(12,4) NOT NULL,
  `price_final` double(12,4) NOT NULL,
  `cost_final` double(12,4) NOT NULL,
  `sell_recomended` double(12,4) NOT NULL,
  `sell_final` double(12,4) NOT NULL,
  `sold` int(11) NOT NULL,
  `description_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `items_place_id_foreign` (`place_id`),
  KEY `items_description_id_foreign` (`description_id`),
  CONSTRAINT `items_description_id_foreign` FOREIGN KEY (`description_id`) REFERENCES `descriptions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `items_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,19.8000,1,114.0000,45.6000,2443.4190,977.3676,2443.4190,2400.0000,1,1,'2018-12-19 18:27:18','2019-02-27 20:24:18'),(2,19.8000,1,99.0000,29.7000,2121.9165,636.5750,1591.4374,1600.0000,1,2,'2018-12-19 18:32:28','2019-01-21 19:11:13'),(3,19.8000,1,94.0000,37.6000,2014.7490,805.8996,2014.7490,1900.0000,1,3,'2018-12-19 18:37:02','2019-10-15 19:26:13'),(4,19.8000,1,99.0000,29.7000,2121.9165,636.5750,1591.4374,1600.0000,1,4,'2018-12-19 18:40:20','2019-01-22 22:52:59'),(5,19.8000,1,94.0000,28.2000,2014.7490,604.4247,1511.0618,1550.0000,1,5,'2018-12-19 18:43:54','2019-01-08 04:17:10'),(6,19.8000,1,114.0000,37.6000,2443.4190,805.8996,2014.7490,1950.0000,1,6,'2018-12-19 19:15:57','2019-01-21 02:22:57'),(7,19.8000,1,99.0000,29.9900,2121.9165,642.7907,1606.9767,1600.0000,1,7,'2018-12-19 19:19:48','2018-12-21 04:44:48'),(8,19.8000,1,89.0000,29.9900,1907.5815,642.7907,1606.9767,1500.0000,1,8,'2018-12-19 19:22:33','2018-12-21 04:45:32'),(9,19.8000,1,89.0000,29.9900,1907.5815,642.7907,1606.9767,1500.0000,1,9,'2018-12-19 19:24:44','2019-01-08 04:20:41'),(10,19.8000,1,75.0000,19.9900,1607.5125,428.4557,1071.1392,1100.0000,1,10,'2018-12-19 19:26:41','2019-10-15 19:26:44'),(11,19.8000,1,36.0000,16.9900,771.6060,364.1552,910.3879,750.0000,1,11,'2018-12-19 19:30:57','2019-10-15 19:26:59'),(12,19.8000,1,39.0000,9.9900,835.9065,214.1207,535.3017,600.0000,0,12,'2018-12-19 19:32:56','2018-12-19 19:33:27'),(13,19.8000,1,39.0000,12.9900,835.9065,278.4212,696.0529,750.0000,1,13,'2018-12-19 19:36:19','2019-10-15 19:27:24'),(14,19.8000,1,45.0000,16.9900,964.5075,364.1552,910.3879,850.0000,1,14,'2018-12-19 19:38:28','2019-01-29 02:50:11'),(15,19.8000,1,39.0000,12.9900,835.9065,278.4212,696.0529,700.0000,1,15,'2018-12-19 19:40:43','2019-10-15 19:27:42'),(16,19.8000,1,59.0000,24.9900,1264.5765,535.6232,1339.0579,1200.0000,1,16,'2018-12-19 19:45:03','2019-01-12 16:57:06'),(17,19.8000,1,65.0000,24.9900,1393.1775,535.6232,1339.0579,1400.0000,1,17,'2018-12-19 19:53:05','2019-10-15 19:27:56'),(18,19.8000,1,54.0000,24.9900,1157.4090,535.6232,1339.0579,1400.0000,1,18,'2018-12-19 19:54:58','2018-12-20 15:33:00'),(19,19.8000,1,48.0000,7.9900,1028.8080,171.2537,428.1342,500.0000,1,19,'2018-12-19 19:56:29','2019-10-15 19:28:08'),(20,19.8000,1,35.0000,12.9900,750.1725,278.4212,696.0529,750.0000,1,20,'2018-12-19 19:58:08','2019-10-15 19:28:46'),(21,19.8000,1,39.0000,13.9900,835.9065,299.8547,749.6367,750.0000,1,21,'2018-12-19 19:59:58','2019-10-16 03:41:14'),(22,19.8000,1,39.0000,13.9900,835.9065,299.8547,749.6367,450.0000,1,22,'2018-12-19 20:01:27','2019-02-28 14:12:46'),(23,19.8000,1,25.0000,9.9900,535.8375,214.1207,535.3017,550.0000,0,23,'2018-12-19 20:04:35','2018-12-19 20:04:44'),(24,19.8000,1,25.0000,9.9900,535.8375,214.1207,535.3017,550.0000,1,24,'2018-12-19 20:07:00','2019-10-15 19:29:02'),(25,19.8000,1,25.0000,9.9900,535.8375,214.1207,535.3017,550.0000,1,25,'2018-12-19 20:08:19','2019-01-21 19:11:41'),(26,19.8000,1,44.0000,24.9900,943.0740,535.6232,1339.0579,1200.0000,1,26,'2019-01-08 04:24:15','2019-01-08 04:25:21'),(27,19.8000,1,11.0000,22.0000,235.7685,471.5370,1178.8425,500.0000,1,27,'2019-01-21 19:06:17','2019-01-21 19:12:03'),(28,19.8000,1,298.0000,85.7100,6387.1830,1837.0653,4592.6632,3200.0000,0,28,'2019-10-15 19:11:24','2019-10-15 19:11:42'),(29,19.8000,1,298.0000,85.7100,6387.1830,1837.0653,4592.6632,3200.0000,0,29,'2019-10-15 19:15:11','2019-10-15 19:15:31'),(30,19.8000,1,298.0000,85.7100,6387.1830,1837.0653,4592.6632,3200.0000,0,30,'2019-10-15 19:16:46','2019-10-15 19:17:04'),(31,19.8000,1,298.0000,85.7100,6387.1830,1837.0653,4592.6632,3200.0000,1,31,'2019-10-15 19:19:19','2019-10-15 22:19:27'),(32,19.8000,1,428.0000,138.9900,9173.5380,2979.0422,7447.6054,5600.0000,0,32,'2019-10-15 19:23:36','2019-10-15 19:24:05'),(33,19.8000,1,448.0000,145.4200,9602.2080,3116.8596,7792.1489,5800.0000,0,33,'2019-10-15 20:10:22','2019-10-15 20:10:35'),(34,19.8000,1,178.0000,57.8000,3815.1630,1238.8563,3097.1408,2600.0000,1,34,'2019-10-15 20:19:18','2019-10-16 16:50:42'),(35,19.8000,1,178.0000,57.8000,3815.1630,1238.8563,3097.1408,2600.0000,1,35,'2019-10-15 20:22:29','2019-10-16 16:50:19'),(36,19.8000,1,198.0000,64.3000,4243.8330,1378.1740,3445.4351,2800.0000,1,36,'2019-10-15 20:24:38','2019-10-16 16:52:31'),(37,19.8000,1,140.0000,50.0000,3000.6900,1071.6750,2679.1875,1800.0000,1,37,'2019-10-15 20:27:28','2019-10-16 03:42:38'),(38,19.8000,1,398.0000,118.5800,8530.5330,2541.5844,6353.9611,5400.0000,1,38,'2019-10-15 20:37:05','2019-10-16 16:53:06'),(39,19.8000,1,398.0000,118.5800,8530.5330,2541.5844,6353.9611,5400.0000,1,39,'2019-10-15 20:39:09','2019-10-16 03:52:05'),(40,19.8000,1,398.0000,118.1600,8530.5330,2532.5824,6331.4559,5400.0000,0,40,'2019-10-15 20:41:13','2019-10-15 20:41:26'),(41,19.8000,1,350.0000,104.2800,7501.7250,2235.0854,5587.7135,4500.0000,1,41,'2019-10-15 20:43:18','2019-10-16 03:50:49'),(42,19.8000,1,378.0000,88.8900,8101.8630,1905.2238,4763.0595,4300.0000,1,42,'2019-10-15 20:54:53','2019-10-16 03:51:31'),(43,19.8000,1,398.0000,118.5800,8530.5330,2541.5844,6353.9611,5500.0000,1,43,'2019-10-15 20:58:18','2019-10-16 03:43:08'),(44,19.8000,1,138.0000,32.8700,2957.8230,704.5191,1761.2979,1550.0000,1,44,'2019-10-15 21:01:18','2019-10-16 16:52:11'),(45,19.8000,1,250.0000,59.5700,5358.3750,1276.7936,3191.9840,2800.0000,0,45,'2019-10-15 21:03:38','2019-10-15 21:03:44'),(46,19.8000,1,278.0000,66.2600,5958.5130,1420.1837,3550.4593,2900.0000,0,46,'2019-10-15 21:05:59','2019-10-15 21:06:04'),(47,19.8000,1,250.0000,59.5900,5358.3750,1277.2223,3193.0557,2800.0000,0,47,'2019-10-15 21:09:52','2019-10-15 21:10:01'),(48,19.8000,1,46.0000,17.8600,985.9410,382.8023,957.0058,1100.0000,0,48,'2019-10-15 21:33:06','2019-10-15 21:33:12'),(49,19.8000,1,40.0000,24.8700,857.3400,533.0511,1332.6279,1100.0000,1,49,'2019-10-15 21:34:51','2019-10-16 03:48:23'),(50,19.8000,1,49.0000,21.3200,1050.2415,456.9622,1142.4056,1300.0000,0,50,'2019-10-15 21:43:46','2019-10-15 21:43:52'),(51,19.8000,1,39.0000,21.6300,835.9065,463.6066,1159.0165,1200.0000,1,51,'2019-10-15 21:46:54','2019-10-16 16:53:40'),(52,19.8000,1,54.0000,37.8700,1157.4090,811.6866,2029.2166,1500.0000,1,52,'2019-10-15 21:48:50','2019-10-16 03:53:23'),(53,19.8000,1,58.0000,23.6300,1243.1430,506.4736,1266.1840,1000.0000,0,53,'2019-10-15 21:50:55','2019-10-15 21:51:01'),(54,19.8000,1,20.0000,15.1400,428.6700,324.5032,811.2580,650.0000,0,54,'2019-10-15 21:52:36','2019-10-15 21:52:48'),(55,19.8000,1,30.0000,19.4700,643.0050,417.3102,1043.2756,850.0000,0,55,'2019-10-15 21:53:53','2019-10-15 21:54:03'),(56,19.8000,1,30.0000,19.4700,643.0050,417.3102,1043.2756,850.0000,1,56,'2019-10-15 21:55:09','2019-10-15 22:20:23'),(57,19.8000,1,26.0000,14.0600,557.2710,301.3550,753.3875,700.0000,0,57,'2019-10-15 21:56:29','2019-10-15 21:56:35'),(58,19.8000,1,25.0000,14.0600,535.8375,301.3550,753.3875,650.0000,0,58,'2019-10-15 21:57:59','2019-10-15 21:58:04'),(59,19.8000,1,25.0000,14.0600,535.8375,301.3550,753.3875,650.0000,0,59,'2019-10-15 21:59:02','2019-10-15 21:59:11'),(60,19.8000,1,20.0000,11.8900,428.6700,254.8443,637.1108,600.0000,0,60,'2019-10-15 22:01:19','2019-10-15 22:01:30'),(61,19.8000,1,22.0000,10.8200,471.5370,231.9105,579.7762,650.0000,0,61,'2019-10-15 22:04:02','2019-10-15 22:04:08'),(62,19.8000,1,25.0000,16.2200,535.8375,347.6514,869.1284,650.0000,0,62,'2019-10-15 22:05:16','2019-10-15 22:05:23'),(63,19.8000,1,26.0000,14.0600,557.2710,301.3550,753.3875,700.0000,0,63,'2019-10-15 22:07:27','2019-10-15 22:07:33'),(64,19.8000,1,114.0000,50.0000,2443.4190,1071.6750,2679.1875,1900.0000,1,64,'2019-10-15 22:16:38','2019-10-15 22:20:00');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (64,'2014_10_12_000000_create_users_table',1),(65,'2014_10_12_100000_create_password_resets_table',1),(66,'2018_12_10_180933_create_types_table',1),(67,'2018_12_10_180942_create_brands_table',1),(68,'2018_12_10_185007_create_sizes_table',1),(69,'2018_12_10_185302_create_colors_table',1),(70,'2018_12_10_185303_create_descriptions_table',1),(71,'2018_12_10_185304_create_places_table',1),(72,'2018_12_10_185305_create_items_table',1),(73,'2018_12_18_195427_create_clients_table',1),(74,'2018_12_18_202013_create_sells_table',1),(75,'2018_12_18_202023_create_payments_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `quantity` double(12,4) NOT NULL,
  `pay_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_client_id_foreign` (`client_id`),
  CONSTRAINT `payments_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,500.0000,'2018-12-20','2018-12-20 15:33:36','2018-12-20 15:33:36'),(2,2,1000.0000,'2019-01-06','2019-01-06 18:25:32','2019-01-06 18:25:32'),(3,1,500.0000,'2019-01-07','2019-01-07 15:59:38','2019-01-07 15:59:38'),(4,3,1500.0000,'2019-01-08','2019-01-08 15:35:18','2019-01-08 15:35:18'),(5,6,500.0000,'2019-01-11','2019-01-11 17:28:33','2019-01-11 17:28:33'),(6,7,1000.0000,'2019-01-13','2019-01-13 23:00:50','2019-01-13 23:00:50'),(7,6,500.0000,'2019-01-16','2019-01-16 19:04:26','2019-01-16 19:04:26'),(8,1,200.0000,'2019-01-18','2019-01-18 14:54:50','2019-01-18 14:54:50'),(9,8,300.0000,'2019-01-21','2019-01-21 02:23:35','2019-01-21 02:23:35'),(10,4,1500.0000,'2019-01-21','2019-01-21 19:12:18','2019-01-21 19:12:18'),(11,2,1000.0000,'2019-01-23','2019-01-23 16:04:27','2019-01-23 16:04:27'),(12,6,500.0000,'2019-01-23','2019-01-23 17:19:18','2019-01-23 17:19:18'),(13,5,3000.0000,'2019-01-24','2019-01-24 21:53:20','2019-01-24 21:53:20'),(14,10,100.0000,'2019-01-25','2019-01-25 20:47:19','2019-01-25 20:47:19'),(15,6,500.0000,'2019-01-30','2019-01-30 19:58:28','2019-01-30 19:58:28'),(16,10,150.0000,'2019-02-01','2019-02-01 19:46:40','2019-02-01 19:46:40'),(17,6,500.0000,'2019-02-06','2019-02-06 17:53:58','2019-02-06 17:53:58'),(18,2,900.0000,'2019-02-10','2019-02-10 19:03:00','2019-02-10 19:03:00'),(19,10,150.0000,'2019-02-10','2019-02-10 19:05:57','2019-02-10 19:05:57'),(20,6,500.0000,'2019-02-13','2019-02-13 18:21:34','2019-02-13 18:21:34'),(21,10,150.0000,'2019-02-17','2019-02-17 14:56:50','2019-02-17 14:56:50'),(22,11,750.0000,'2019-02-17','2019-02-17 14:57:17','2019-02-17 14:57:17'),(23,6,500.0000,'2019-02-20','2019-02-20 17:09:01','2019-02-20 17:09:01'),(24,3,1000.0000,'2019-02-20','2019-02-20 23:54:58','2019-02-20 23:54:58'),(25,6,500.0000,'2019-02-27','2019-02-27 18:48:53','2019-02-27 18:48:53'),(26,10,150.0000,'2019-02-27','2019-02-27 20:16:08','2019-02-27 20:16:08'),(27,6,500.0000,'2019-03-06','2019-03-06 19:08:48','2019-03-06 19:08:48'),(28,10,300.0000,'2019-03-13','2019-03-13 16:16:21','2019-03-13 16:16:21'),(29,6,500.0000,'2019-03-14','2019-03-14 16:42:16','2019-03-14 16:42:16'),(30,10,150.0000,'2019-03-20','2019-03-20 00:28:20','2019-03-20 00:28:20'),(31,6,500.0000,'2019-03-22','2019-03-22 17:05:28','2019-03-22 17:05:28'),(32,10,100.0000,'2019-03-28','2019-03-28 14:53:11','2019-03-28 14:53:11'),(33,6,500.0000,'2019-04-04','2019-04-04 17:22:33','2019-04-04 17:22:33'),(34,6,500.0000,'2019-04-11','2019-04-11 17:14:44','2019-04-11 17:14:44'),(35,10,100.0000,'2019-04-15','2019-04-15 19:40:14','2019-04-15 19:40:14'),(36,6,1000.0000,'2019-05-09','2019-05-09 14:15:06','2019-05-09 14:15:06'),(37,8,1650.0000,'2019-05-18','2019-05-18 18:36:33','2019-05-18 18:36:33'),(38,6,500.0000,'2019-06-05','2019-06-05 17:27:58','2019-06-05 17:27:58'),(39,6,500.0000,'2019-06-27','2019-06-27 16:46:03','2019-06-27 16:46:03'),(40,10,100.0000,'2019-10-15','2019-10-15 18:31:47','2019-10-15 18:31:47'),(41,5,500.0000,'2019-10-15','2019-10-15 18:31:56','2019-10-15 18:31:56'),(42,9,1600.0000,'2019-10-15','2019-10-15 18:32:23','2019-10-15 18:32:23'),(43,4,1400.0000,'2019-10-15','2019-10-15 18:32:56','2019-10-15 18:32:56'),(44,6,2500.0000,'2019-10-15','2019-10-15 18:58:25','2019-10-15 18:58:25'),(45,12,2400.0000,'2019-10-15','2019-10-15 18:59:02','2019-10-15 18:59:02'),(46,13,4500.0000,'2019-10-15','2019-10-15 19:29:29','2019-10-15 19:29:29'),(47,12,3900.0000,'2019-10-15','2019-10-15 19:29:53','2019-10-15 19:29:53'),(48,17,1500.0000,'2019-10-16','2019-10-16 15:18:20','2019-10-16 15:18:20');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `places` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` double(8,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,'McAllen',1.0825,NULL,NULL),(2,'Seattle',1.0650,NULL,NULL),(3,'California',1.0725,NULL,NULL);
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sells`
--

DROP TABLE IF EXISTS `sells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sells` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `debt_or_prod` int(11) NOT NULL,
  `price` double(12,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sells_client_id_foreign` (`client_id`),
  KEY `sells_item_id_foreign` (`item_id`),
  CONSTRAINT `sells_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sells_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sells`
--

LOCK TABLES `sells` WRITE;
/*!40000 ALTER TABLE `sells` DISABLE KEYS */;
INSERT INTO `sells` VALUES (1,1,18,1,1200.0000,'2018-12-20 15:33:00','2018-12-20 15:33:00'),(2,2,7,1,1500.0000,'2018-12-21 04:44:48','2018-12-21 04:44:48'),(3,2,8,1,1400.0000,'2018-12-21 04:45:32','2018-12-21 04:45:32'),(4,3,5,1,1400.0000,'2019-01-08 04:17:10','2019-01-08 15:34:43'),(5,3,9,1,1400.0000,'2019-01-08 04:20:41','2019-01-08 04:20:41'),(6,3,26,1,1200.0000,'2019-01-08 04:25:21','2019-01-08 04:25:21'),(7,7,16,1,1000.0000,'2019-01-12 16:57:06','2019-01-12 16:57:06'),(8,8,6,1,1950.0000,'2019-01-21 02:22:57','2019-01-21 02:22:57'),(9,4,2,1,1600.0000,'2019-01-21 19:11:13','2019-01-21 19:11:13'),(10,4,25,1,550.0000,'2019-01-21 19:11:41','2019-01-21 19:11:41'),(11,4,27,1,500.0000,'2019-01-21 19:12:03','2019-01-21 19:12:03'),(12,9,4,1,1600.0000,'2019-01-22 22:52:59','2019-01-22 22:52:59'),(13,11,14,1,750.0000,'2019-01-29 02:50:11','2019-01-29 02:50:11'),(15,12,1,1,2400.0000,'2019-02-27 20:24:18','2019-02-27 20:24:18'),(16,10,22,1,450.0000,'2019-02-28 14:12:46','2019-02-28 14:12:46'),(17,13,3,1,1900.0000,'2019-10-15 19:26:13','2019-10-15 19:26:13'),(18,13,10,1,1100.0000,'2019-10-15 19:26:44','2019-10-15 19:26:44'),(19,13,11,1,750.0000,'2019-10-15 19:26:59','2019-10-15 19:26:59'),(20,12,13,1,750.0000,'2019-10-15 19:27:24','2019-10-15 19:27:24'),(21,12,15,1,700.0000,'2019-10-15 19:27:42','2019-10-15 19:27:42'),(22,12,17,1,1400.0000,'2019-10-15 19:27:56','2019-10-15 19:27:56'),(23,12,19,1,500.0000,'2019-10-15 19:28:08','2019-10-15 19:28:08'),(24,13,20,1,750.0000,'2019-10-15 19:28:46','2019-10-15 19:28:46'),(25,12,24,1,550.0000,'2019-10-15 19:29:02','2019-10-15 19:29:02'),(26,8,31,1,3000.0000,'2019-10-15 22:19:27','2019-10-15 22:19:27'),(27,8,64,1,1700.0000,'2019-10-15 22:20:00','2019-10-15 22:20:00'),(28,8,56,1,800.0000,'2019-10-15 22:20:23','2019-10-15 22:20:23'),(29,15,21,1,700.0000,'2019-10-16 03:41:14','2019-10-16 03:41:14'),(30,17,37,1,1800.0000,'2019-10-16 03:42:38','2019-10-16 03:42:38'),(31,17,43,1,5500.0000,'2019-10-16 03:43:08','2019-10-16 03:43:08'),(32,16,49,1,1100.0000,'2019-10-16 03:48:23','2019-10-16 03:48:23'),(33,11,41,1,4800.0000,'2019-10-16 03:50:49','2019-10-16 03:50:49'),(34,19,42,1,4300.0000,'2019-10-16 03:51:31','2019-10-16 03:51:31'),(35,18,39,1,5200.0000,'2019-10-16 03:52:05','2019-10-16 03:52:05'),(36,14,52,1,1500.0000,'2019-10-16 03:53:23','2019-10-16 03:53:23'),(37,20,35,1,2600.0000,'2019-10-16 16:50:19','2019-10-16 16:50:19'),(38,20,34,1,2600.0000,'2019-10-16 16:50:42','2019-10-16 16:50:42'),(39,4,44,1,1500.0000,'2019-10-16 16:52:11','2019-10-16 16:52:11'),(40,4,36,1,2700.0000,'2019-10-16 16:52:31','2019-10-16 16:52:31'),(41,4,38,1,5200.0000,'2019-10-16 16:53:06','2019-10-16 16:53:06'),(42,4,51,1,1200.0000,'2019-10-16 16:53:40','2019-10-16 16:53:40');
/*!40000 ALTER TABLE `sells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'N/A',NULL,NULL),(2,'Mini',NULL,NULL),(3,'Pequeña',NULL,NULL),(4,'Mediana',NULL,NULL),(5,'Grande',NULL,NULL);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Cartera',NULL,NULL),(2,'Bolsa',NULL,NULL),(3,'Accesorio',NULL,NULL),(4,'Consmetiquera',NULL,NULL),(5,'Ropa',NULL,NULL),(6,'Varia',NULL,NULL),(7,'Back Pack','2019-10-15 19:37:47','2019-10-15 19:37:47');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Tere Gutierrez','mariatte@me.com',NULL,'$2y$10$Bdh.4ywldN0MZukK2QKkruPK0uFVrW94PDm41gdJD/62PkbcpJ8ae',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-17  2:04:43
