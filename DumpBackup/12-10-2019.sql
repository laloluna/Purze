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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Coach',NULL,NULL),(2,'Columbia',NULL,NULL),(3,'Calvin Klein',NULL,NULL),(4,'Guess',NULL,NULL),(5,'Kipling',NULL,NULL),(6,'Levis',NULL,NULL),(7,'Nine West',NULL,NULL),(8,'Nautica',NULL,NULL),(9,'Steve Maiden',NULL,NULL),(10,'Tommy',NULL,NULL),(11,'Timberland',NULL,NULL),(12,'Isabelle','2018-12-19 19:17:35','2018-12-19 19:17:35'),(13,'Kenneth Cole','2018-12-19 19:42:17','2018-12-19 19:42:17'),(14,'Lily Bloom','2018-12-19 19:42:38','2018-12-19 19:42:38'),(15,'Rosetti','2018-12-19 19:42:50','2018-12-19 19:42:50'),(16,'Rampage','2018-12-19 19:43:14','2018-12-19 19:43:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Clau','Fiocenter',0.0000,-1200.0000,'2018-12-20 15:32:13','2019-07-30 02:05:04'),(2,'Susi','González',0.0000,-2900.0000,'2018-12-21 04:41:36','2019-07-30 02:08:54'),(3,'Luzma','Vecina',0.0000,-2500.0000,'2019-01-08 01:25:51','2019-07-30 02:06:27'),(4,'Elvira','Cortés Rojas',650.0000,-850.0000,'2019-01-10 22:11:44','2019-07-30 02:07:05'),(5,'Mary Carmen','García',3500.0000,0.0000,'2019-01-10 22:13:28','2019-07-22 15:29:12'),(6,'Soco','Castillo',16300.0000,5300.0000,'2019-01-10 22:46:07','2019-09-05 18:03:10'),(7,'Fer','Amiga de Ilse',0.0000,-1000.0000,'2019-01-12 16:55:51','2019-07-30 02:06:12'),(8,'Rosy','Mau',0.0000,-1950.0000,'2019-01-21 02:22:00','2019-07-30 02:08:42'),(9,'Xareny','Gutiérrez',0.0000,0.0000,'2019-01-22 22:51:13','2019-07-30 02:05:28'),(10,'Marlen','Arenas',1000.0000,-350.0000,'2019-01-22 22:52:22','2019-07-30 02:06:33'),(11,'Lilí','Pérez',0.0000,-750.0000,'2019-01-29 02:49:38','2019-07-30 02:05:36'),(12,'Vicente','Luna',0.0000,0.0000,'2019-02-27 20:23:39','2019-07-30 02:06:47');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Azul',NULL,NULL),(2,'Blanca',NULL,NULL),(3,'Beige',NULL,NULL),(4,'Cafe',NULL,NULL),(5,'Gris',NULL,NULL),(6,'Negra',NULL,NULL),(7,'Naranja',NULL,NULL),(8,'Palo de rosa',NULL,NULL),(9,'Roja',NULL,NULL),(10,'Rosa',NULL,NULL),(11,'Verde',NULL,NULL),(12,'Dorado','2018-12-19 19:14:00','2018-12-19 19:14:00'),(13,'Morado','2018-12-19 19:46:28','2018-12-19 19:46:28');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptions`
--

LOCK TABLES `descriptions` WRITE;
/*!40000 ALTER TABLE `descriptions` DISABLE KEYS */;
INSERT INTO `descriptions` VALUES (1,'Back pack','storage/images/c69MLy8t9ANHRk2TJvrNclczzPBSSEhCn3csf8qH.jpeg',5,2,5,11,'2018-12-19 18:27:18','2018-12-19 18:27:18'),(2,'Bolsas al frente','storage/images/nObdYb4P1rT5bXQs5tfy6nHGzuRDyIJCmYQRUvWH.jpeg',5,2,5,11,'2018-12-19 18:32:28','2018-12-19 18:32:28'),(3,'Back pack','storage/images/lCsv1OeAqokbZa4bFH47wskkutbt7KJ3vBgkrzCE.jpeg',3,2,5,6,'2018-12-19 18:37:02','2018-12-19 18:37:02'),(4,'Bolsas al frente','storage/images/Ttx9VMpbPr8dUh8VrpFh9cLOS7GJgUusV2AnmLVl.jpeg',5,2,5,3,'2018-12-19 18:40:20','2018-12-19 18:40:20'),(5,'Cierre al frente','storage/images/yjM8CjySFX45Vlks9r1ZOn3Lj4h1kMbAouhaVx6i.jpeg',4,2,5,1,'2018-12-19 18:43:54','2018-12-19 18:43:54'),(6,'Asa extra','storage/images/bQvU5SryTeXQCHpoAg6wIU9qL7t50K23oHZwE90F.jpeg',5,2,5,12,'2018-12-19 19:15:57','2018-12-19 19:15:57'),(7,'Con cartera extra','storage/images/dEroZRMYqapSm6thr2dYND9A1LSOaIwkCIuYkLOw.jpeg',5,2,10,4,'2018-12-19 19:19:47','2018-12-19 19:19:47'),(8,'Back pack','storage/images/IkzApyF30EqrwNGVWnDYlwpHGHNVvD7SuLaFHZjt.jpeg',4,2,10,4,'2018-12-19 19:22:33','2018-12-19 19:22:33'),(9,'Logos brillosos','storage/images/ApJ5vLEV576OT7LvtHnztyFUasJ5j3XNhPwf4CLj.jpeg',4,2,10,6,'2018-12-19 19:24:44','2018-12-19 19:24:44'),(10,'Logos brillosos','storage/images/qb2CTWnnorqmOp1wXgqOt424XUWhf0ss8DGrwG5f.jpeg',3,2,10,6,'2018-12-19 19:26:41','2018-12-19 19:26:41'),(11,'Kit','storage/images/2rfoq04Ju0rJdJizY94hGdxOJkH3qNswo7ujkiOQ.jpeg',1,4,10,1,'2018-12-19 19:30:57','2018-12-19 19:30:57'),(12,'Asa','storage/images/vNah3goxwTUm97PheP07bbycwr0gawVSxpAYX3fE.jpeg',1,1,10,6,'2018-12-19 19:32:56','2018-12-19 19:32:56'),(13,'Kit rayas verdes','storage/images/M630rx3nB50dwhTY2L5hezsHSjoqYVX7rbFJn6Nt.jpeg',1,4,8,1,'2018-12-19 19:36:19','2018-12-19 19:36:19'),(14,'Kit flores','storage/images/C0ucOovf1ElFFxqzQPWhfUtO0hZAoXSEnIy9DBj8.jpeg',1,4,8,1,'2018-12-19 19:38:28','2018-12-19 19:38:28'),(15,'Kit transparente','storage/images/NQlTeZVxMKjGeFvnGLjeKJ4c7gwaicPOFaK2DO9Q.jpeg',1,4,8,1,'2018-12-19 19:40:43','2018-12-19 19:40:43'),(16,'Back pack','storage/images/9gIFIljxFoKtXaa5kO8XZzdiRBhKI5ctEujEfoUN.jpeg',1,2,15,6,'2018-12-19 19:45:03','2018-12-19 19:45:03'),(17,'Back pack unicornios','storage/images/ml0PHC6TidIGSs3Rp1iYYIc692fcWp7HBqYH5u7P.jpeg',4,2,14,13,'2018-12-19 19:53:05','2018-12-19 19:53:05'),(18,'Back pack','storage/images/Wr8VSkUhDLUzxu4LiQDiLdN24EVs93ukNYkCyDQN.jpeg',4,2,12,11,'2018-12-19 19:54:58','2018-12-19 19:54:58'),(19,'Flores','storage/images/yxlo5WAhQsCw0c91d4WgwBB26As9TCAQWvu0krUt.jpeg',1,1,16,3,'2018-12-19 19:56:29','2018-12-19 19:56:29'),(20,'Cierre plata','storage/images/sYq4nhG3qGjwd0kkaJTncpoVsRM4RXk3bqNGMKhp.jpeg',1,1,13,6,'2018-12-19 19:58:08','2018-12-19 19:58:08'),(21,'Lisa con broche','storage/images/dOcECGzHi57HHCw3bCijLtUtx7LzsEiAd1mYR2H6.jpeg',1,1,7,6,'2018-12-19 19:59:58','2018-12-19 19:59:58'),(22,'Moño y corazón','storage/images/90LcQ1B9Lcl0WqggtqtCdTb1IpthEdpfaPWTFYqP.jpeg',1,1,7,3,'2018-12-19 20:01:27','2018-12-19 20:01:27'),(23,'Moño al frente','storage/images/oKe1ronzP43hNuLYoknqBvnDqvXUsD3XwYEh4wGU.jpeg',2,1,7,6,'2018-12-19 20:04:35','2018-12-19 20:04:35'),(24,'Moño al frente','storage/images/NVz2CWGbb6zMrZWlL4QIYJ5Be4SQRY5fMqhtrSDx.jpeg',2,1,7,5,'2018-12-19 20:07:00','2018-12-19 20:07:00'),(25,'Cierre y broche','storage/images/Qh9YOocgglKx7q7uDWSLV5RkPVqPNIC98yCjPMpv.jpeg',2,1,3,6,'2018-12-19 20:08:19','2018-12-19 20:08:19'),(26,'Back pack','storage/images/UJXoT116IH3QvtnAQfHwzWoJcPUoIMgTdIe4y89y.jpeg',4,2,9,9,'2019-01-08 04:24:15','2019-01-08 04:24:15'),(27,'Caballero','storage/images/ZJHnj182S77R3vkBBCNsC6Loq7ALPEkQLtKxp5Jm.jpeg',1,1,3,6,'2019-01-21 19:06:17','2019-01-21 19:06:17');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,19.8000,1,114.0000,45.6000,2443.4190,977.3676,2443.4190,2400.0000,0,1,'2018-12-19 18:27:18','2019-07-30 02:06:47'),(2,19.8000,1,99.0000,29.7000,2121.9165,636.5750,1591.4374,1600.0000,0,2,'2018-12-19 18:32:28','2019-07-30 02:07:05'),(3,19.8000,1,94.0000,37.6000,2014.7490,805.8996,2014.7490,1900.0000,0,3,'2018-12-19 18:37:02','2018-12-19 18:37:45'),(4,19.8000,1,99.0000,29.7000,2121.9165,636.5750,1591.4374,1600.0000,0,4,'2018-12-19 18:40:20','2019-07-30 02:05:28'),(5,19.8000,1,94.0000,28.2000,2014.7490,604.4247,1511.0618,1550.0000,0,5,'2018-12-19 18:43:54','2019-07-30 02:05:23'),(6,19.8000,1,114.0000,37.6000,2443.4190,805.8996,2014.7490,1950.0000,0,6,'2018-12-19 19:15:57','2019-07-30 02:08:42'),(7,19.8000,1,99.0000,29.9900,2121.9165,642.7907,1606.9767,1600.0000,0,7,'2018-12-19 19:19:48','2019-07-30 02:08:54'),(8,19.8000,1,89.0000,29.9900,1907.5815,642.7907,1606.9767,1500.0000,0,8,'2018-12-19 19:22:33','2019-07-30 02:06:06'),(9,19.8000,1,89.0000,29.9900,1907.5815,642.7907,1606.9767,1500.0000,0,9,'2018-12-19 19:24:44','2019-07-30 02:06:20'),(10,19.8000,1,75.0000,19.9900,1607.5125,428.4557,1071.1392,1100.0000,0,10,'2018-12-19 19:26:41','2018-12-19 19:27:17'),(11,19.8000,1,36.0000,16.9900,771.6060,364.1552,910.3879,750.0000,0,11,'2018-12-19 19:30:57','2018-12-19 19:31:46'),(12,19.8000,1,39.0000,9.9900,835.9065,214.1207,535.3017,600.0000,0,12,'2018-12-19 19:32:56','2018-12-19 19:33:27'),(13,19.8000,1,39.0000,12.9900,835.9065,278.4212,696.0529,750.0000,0,13,'2018-12-19 19:36:19','2018-12-19 19:36:42'),(14,19.8000,1,45.0000,16.9900,964.5075,364.1552,910.3879,850.0000,0,14,'2018-12-19 19:38:28','2019-07-30 02:05:36'),(15,19.8000,1,39.0000,12.9900,835.9065,278.4212,696.0529,700.0000,0,15,'2018-12-19 19:40:43','2018-12-19 19:40:59'),(16,19.8000,1,59.0000,24.9900,1264.5765,535.6232,1339.0579,1200.0000,0,16,'2018-12-19 19:45:03','2019-07-30 02:06:12'),(17,19.8000,1,65.0000,24.9900,1393.1775,535.6232,1339.0579,1400.0000,0,17,'2018-12-19 19:53:05','2018-12-19 19:53:23'),(18,19.8000,1,54.0000,24.9900,1157.4090,535.6232,1339.0579,1400.0000,0,18,'2018-12-19 19:54:58','2019-07-30 02:05:04'),(19,19.8000,1,48.0000,7.9900,1028.8080,171.2537,428.1342,500.0000,0,19,'2018-12-19 19:56:29','2018-12-19 19:56:51'),(20,19.8000,1,35.0000,12.9900,750.1725,278.4212,696.0529,750.0000,0,20,'2018-12-19 19:58:08','2018-12-19 19:58:15'),(21,19.8000,1,39.0000,13.9900,835.9065,299.8547,749.6367,750.0000,0,21,'2018-12-19 19:59:58','2018-12-19 20:00:18'),(22,19.8000,1,39.0000,13.9900,835.9065,299.8547,749.6367,450.0000,0,22,'2018-12-19 20:01:27','2019-07-30 02:06:33'),(23,19.8000,1,25.0000,9.9900,535.8375,214.1207,535.3017,550.0000,0,23,'2018-12-19 20:04:35','2018-12-19 20:04:44'),(24,19.8000,1,25.0000,9.9900,535.8375,214.1207,535.3017,550.0000,0,24,'2018-12-19 20:07:00','2018-12-19 20:07:23'),(25,19.8000,1,25.0000,9.9900,535.8375,214.1207,535.3017,550.0000,0,25,'2018-12-19 20:08:19','2019-07-30 02:06:53'),(26,19.8000,1,44.0000,24.9900,943.0740,535.6232,1339.0579,1200.0000,0,26,'2019-01-08 04:24:15','2019-07-30 02:06:27'),(27,19.8000,1,11.0000,22.0000,235.7685,471.5370,1178.8425,500.0000,0,27,'2019-01-21 19:06:17','2019-07-30 02:05:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,500.0000,'2018-12-20','2018-12-20 15:33:36','2018-12-20 15:33:36'),(2,2,1000.0000,'2019-01-06','2019-01-06 18:25:32','2019-01-06 18:25:32'),(3,1,500.0000,'2019-01-07','2019-01-07 15:59:38','2019-01-07 15:59:38'),(4,3,1500.0000,'2019-01-08','2019-01-08 15:35:18','2019-01-08 15:35:18'),(5,6,500.0000,'2019-01-11','2019-01-11 17:28:33','2019-01-11 17:28:33'),(6,7,1000.0000,'2019-01-13','2019-01-13 23:00:50','2019-01-13 23:00:50'),(7,6,500.0000,'2019-01-16','2019-01-16 19:04:26','2019-01-16 19:04:26'),(8,1,200.0000,'2019-01-18','2019-01-18 14:54:50','2019-01-18 14:54:50'),(9,8,300.0000,'2019-01-21','2019-01-21 02:23:35','2019-01-21 02:23:35'),(10,4,1500.0000,'2019-01-21','2019-01-21 19:12:18','2019-01-21 19:12:18'),(11,2,1000.0000,'2019-01-23','2019-01-23 16:04:27','2019-01-23 16:04:27'),(12,6,500.0000,'2019-01-23','2019-01-23 17:19:18','2019-01-23 17:19:18'),(13,5,3000.0000,'2019-01-24','2019-01-24 21:53:20','2019-01-24 21:53:20'),(14,10,100.0000,'2019-01-25','2019-01-25 20:47:19','2019-01-25 20:47:19'),(15,6,500.0000,'2019-01-30','2019-01-30 19:58:28','2019-01-30 19:58:28'),(16,10,150.0000,'2019-02-01','2019-02-01 19:46:40','2019-02-01 19:46:40'),(17,6,500.0000,'2019-02-06','2019-02-06 17:53:58','2019-02-06 17:53:58'),(18,2,900.0000,'2019-02-10','2019-02-10 19:03:00','2019-02-10 19:03:00'),(19,10,150.0000,'2019-02-10','2019-02-10 19:05:57','2019-02-10 19:05:57'),(20,6,500.0000,'2019-02-13','2019-02-13 18:21:34','2019-02-13 18:21:34'),(21,10,150.0000,'2019-02-17','2019-02-17 14:56:50','2019-02-17 14:56:50'),(22,11,750.0000,'2019-02-17','2019-02-17 14:57:17','2019-02-17 14:57:17'),(23,6,500.0000,'2019-02-20','2019-02-20 17:09:01','2019-02-20 17:09:01'),(24,3,1000.0000,'2019-02-20','2019-02-20 23:54:58','2019-02-20 23:54:58'),(25,6,500.0000,'2019-02-27','2019-02-27 18:48:53','2019-02-27 18:48:53'),(26,10,150.0000,'2019-02-27','2019-02-27 20:16:08','2019-02-27 20:16:08'),(27,6,500.0000,'2019-03-06','2019-03-06 19:08:48','2019-03-06 19:08:48'),(28,10,300.0000,'2019-03-13','2019-03-13 16:16:21','2019-03-13 16:16:21'),(29,6,500.0000,'2019-03-14','2019-03-14 16:42:16','2019-03-14 16:42:16'),(30,10,150.0000,'2019-03-20','2019-03-20 00:28:20','2019-03-20 00:28:20'),(31,6,500.0000,'2019-03-22','2019-03-22 17:05:28','2019-03-22 17:05:28'),(32,10,100.0000,'2019-03-28','2019-03-28 14:53:11','2019-03-28 14:53:11'),(33,6,500.0000,'2019-04-04','2019-04-04 17:22:33','2019-04-04 17:22:33'),(34,6,500.0000,'2019-04-11','2019-04-11 17:14:44','2019-04-11 17:14:44'),(35,10,100.0000,'2019-04-15','2019-04-15 19:40:14','2019-04-15 19:40:14'),(36,6,1000.0000,'2019-05-09','2019-05-09 14:15:06','2019-05-09 14:15:06'),(37,8,1650.0000,'2019-05-18','2019-05-18 18:36:33','2019-05-18 18:36:33'),(38,6,500.0000,'2019-06-05','2019-06-05 17:27:58','2019-06-05 17:27:58'),(39,6,500.0000,'2019-06-27','2019-06-27 16:46:03','2019-06-27 16:46:03'),(40,6,500.0000,'2019-07-15','2019-07-15 18:24:48','2019-07-15 18:24:48'),(41,5,500.0000,'2019-07-22','2019-07-22 15:29:12','2019-07-22 15:29:12'),(42,6,500.0000,'2019-07-23','2019-07-23 17:01:03','2019-07-23 17:01:03'),(43,6,500.0000,'2019-08-05','2019-08-05 17:45:17','2019-08-05 17:45:17'),(44,6,500.0000,'2019-08-20','2019-08-20 17:43:07','2019-08-20 17:43:07'),(45,6,500.0000,'2019-09-05','2019-09-05 18:03:10','2019-09-05 18:03:10');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sells`
--

LOCK TABLES `sells` WRITE;
/*!40000 ALTER TABLE `sells` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Cartera',NULL,NULL),(2,'Bolsa',NULL,NULL),(3,'Accesorio',NULL,NULL),(4,'Consmetiquera',NULL,NULL),(5,'Ropa',NULL,NULL),(6,'Varia',NULL,NULL);
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

-- Dump completed on 2019-10-13  5:06:54
