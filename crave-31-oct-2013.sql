-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: crave_dev
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.10.1

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
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20131023133045'),('20131023133046'),('20131023133047'),('20131023133048'),('20131023133049'),('20131023133050'),('20131023133051'),('20131023133052'),('20131023133053'),('20131023133054'),('20131023133055'),('20131023133056'),('20131023133057'),('20131023133058'),('20131023133059'),('20131023133060'),('20131023133061'),('20131023133062'),('20131023133063'),('20131023133064'),('20131023133065'),('20131023133066'),('20131023133067'),('20131023133068'),('20131023133069'),('20131023133070'),('20131023133071'),('20131023133072'),('20131023133073'),('20131023133074'),('20131023133075'),('20131023133076'),('20131023133077'),('20131023133078'),('20131023133079'),('20131023133080'),('20131023133081'),('20131023133082'),('20131023133083'),('20131023133084'),('20131023133085'),('20131023133086'),('20131023133087'),('20131023133088'),('20131023133089'),('20131023133090'),('20131023133091'),('20131023133092'),('20131023133093'),('20131023133094'),('20131023133095'),('20131023133096'),('20131023133097'),('20131023133098'),('20131023133099'),('20131023133100'),('20131023133101'),('20131023133102'),('20131023133103'),('20131023133104'),('20131023133105'),('20131023133106'),('20131023133107'),('20131023133108'),('20131023133109'),('20131023133110'),('20131023133111'),('20131023133112'),('20131023133113'),('20131023133114'),('20131023133115'),('20131023133116'),('20131023133117'),('20131023133118'),('20131023133119'),('20131023133120'),('20131023133121'),('20131023133122'),('20131023133123'),('20131023133124'),('20131023133125'),('20131023133126'),('20131023133127'),('20131023133128'),('20131023133129'),('20131023133130'),('20131023133131'),('20131023133132'),('20131023133133'),('20131023133134'),('20131023133135'),('20131023133136'),('20131023133137'),('20131023133138'),('20131023133139'),('20131023133140'),('20131023133141'),('20131023133142'),('20131031122822'),('20131031122823'),('20131031122824'),('20131031122825');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_activators`
--

DROP TABLE IF EXISTS `spree_activators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_activators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `match_policy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'all',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advertise` tinyint(1) DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_activators`
--

LOCK TABLES `spree_activators` WRITE;
/*!40000 ALTER TABLE `spree_activators` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_activators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_addresses`
--

DROP TABLE IF EXISTS `spree_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_addresses`
--

LOCK TABLES `spree_addresses` WRITE;
/*!40000 ALTER TABLE `spree_addresses` DISABLE KEYS */;
INSERT INTO `spree_addresses` VALUES (1,'Bulah','Purdy','235 Jayda Spring','Suite 113','West Daijafurt','16804','(361)730-6665 x558',NULL,NULL,NULL,48,49,'2013-10-23 13:33:07','2013-10-23 13:33:07'),(2,'Holly','Erdman','2328 Runolfsdottir Mews','Suite 155','Josieborough','16804','852.797.2675',NULL,NULL,NULL,48,49,'2013-10-23 13:33:07','2013-10-23 13:33:07'),(3,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113','Belfast',NULL,NULL,NULL,3,'2013-10-24 15:53:13','2013-10-24 15:53:13'),(4,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113','Belfast',NULL,NULL,NULL,3,'2013-10-24 15:53:13','2013-10-24 15:53:13'),(5,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113',NULL,NULL,NULL,39,49,'2013-10-24 15:54:37','2013-10-24 15:54:37'),(6,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113',NULL,NULL,NULL,39,49,'2013-10-24 15:54:37','2013-10-24 15:54:37'),(7,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113',NULL,NULL,NULL,39,49,'2013-10-24 16:26:24','2013-10-24 16:26:24'),(8,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113',NULL,NULL,NULL,39,49,'2013-10-24 16:26:24','2013-10-24 16:26:24'),(9,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113',NULL,NULL,NULL,39,49,'2013-10-24 16:27:14','2013-10-24 16:27:14'),(10,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113',NULL,NULL,NULL,39,49,'2013-10-24 16:27:14','2013-10-24 16:27:14'),(11,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113',NULL,NULL,NULL,39,49,'2013-10-24 16:31:16','2013-10-24 16:31:16'),(12,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113',NULL,NULL,NULL,39,49,'2013-10-24 16:31:16','2013-10-24 16:31:16'),(13,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113','Tamil Nadu',NULL,NULL,NULL,3,'2013-10-24 16:36:27','2013-10-24 16:36:27'),(14,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113','Tamil Nadu',NULL,NULL,NULL,3,'2013-10-24 16:36:27','2013-10-24 16:36:27'),(15,'Magesh','S','21 canal road','thiruvanmiyur','chennai','600041','9940137113','Tamil Nadu',NULL,NULL,NULL,3,'2013-10-28 07:46:10','2013-10-28 07:46:10'),(16,'Magesh','S','21 canal road','thiruvanmiyur','chennai','600041','9940137113','Tamil Nadu',NULL,NULL,NULL,3,'2013-10-28 07:46:10','2013-10-28 07:46:10'),(17,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113','Tamil Nadu',NULL,NULL,NULL,3,'2013-10-28 07:54:34','2013-10-28 07:54:34'),(18,'Magesh','S','21 Canal Road','Thiruvanmiyur','Chennai','600041','9940137113','Tamil Nadu',NULL,NULL,NULL,3,'2013-10-28 07:54:34','2013-10-28 07:54:34'),(19,'Magesh','S','21 canal road','thiruvanmiyur','chennai','600041','9940137113','Tamil Nadu',NULL,NULL,NULL,3,'2013-10-28 07:58:07','2013-10-28 07:58:07'),(20,'Magesh','S','21 canal road','thiruvanmiyur','chennai','600041','9940137113','Tamil Nadu',NULL,NULL,NULL,3,'2013-10-28 07:58:07','2013-10-28 07:58:07'),(21,'Magesh','S','21 canal road','thiruvanmiyur','chennai','600041','9940137113','Tamil Nadu',NULL,NULL,NULL,3,'2013-10-28 08:53:32','2013-10-28 08:53:32'),(22,'Magesh','S','21 canal road','thiruvanmiyur','chennai','600041','9940137113','Tamil Nadu',NULL,NULL,NULL,3,'2013-10-28 08:53:32','2013-10-28 08:53:32'),(23,'Magesh','S','21 canal road','thiruvanmiyur','chennai','600041','9940137113','Tamil Nadu',NULL,NULL,NULL,3,'2013-10-31 11:59:37','2013-10-31 11:59:37'),(24,'Magesh','S','21 canal road','thiruvanmiyur','chennai','600041','9940137113','Tamil Nadu',NULL,NULL,NULL,3,'2013-10-31 11:59:37','2013-10-31 11:59:37');
/*!40000 ALTER TABLE `spree_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_adjustments`
--

DROP TABLE IF EXISTS `spree_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustable_id` int(11) DEFAULT NULL,
  `adjustable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `eligible` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_adjustments_on_order_id` (`adjustable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_adjustments`
--

LOCK TABLES `spree_adjustments` WRITE;
/*!40000 ALTER TABLE `spree_adjustments` DISABLE KEYS */;
INSERT INTO `spree_adjustments` VALUES (1,1,'Spree::Order',1,'Spree::Order',1,'Spree::TaxRate',0.80,'North America 5.0%',0,1,'2013-10-23 13:33:08','2013-10-23 13:33:08','closed'),(2,2,'Spree::Order',2,'Spree::Order',1,'Spree::TaxRate',1.15,'North America 5.0%',0,1,'2013-10-23 13:33:08','2013-10-23 13:33:08','closed'),(3,1,'Spree::Shipment',1,'Spree::Order',1,'Spree::ShippingMethod',5.00,'Shipping',1,1,'2013-10-23 13:33:08','2013-10-23 13:33:08','open'),(4,2,'Spree::Shipment',2,'Spree::Order',1,'Spree::ShippingMethod',5.00,'Shipping',1,1,'2013-10-23 13:33:09','2013-10-23 13:33:09','open'),(5,1,'Spree::Order',1,'Spree::Order',1,'Spree::TaxRate',0.00,'Tax',1,1,'2013-10-23 13:33:09','2013-10-23 13:33:09','open'),(6,2,'Spree::Order',2,'Spree::Order',1,'Spree::TaxRate',0.00,'Tax',1,1,'2013-10-23 13:33:09','2013-10-23 13:33:09','open'),(7,1,'Spree::Order',1,'Spree::Order',1,'Spree::ShippingMethod',0.00,'Shipping',1,1,'2013-10-23 13:33:09','2013-10-23 13:33:09','finalized'),(8,2,'Spree::Order',2,'Spree::Order',1,'Spree::ShippingMethod',0.00,'Shipping',1,1,'2013-10-23 13:33:09','2013-10-23 13:33:09','finalized'),(9,7,'Spree::Shipment',5,'Spree::Order',5,'Spree::ShippingMethod',0.00,'Shipping',1,1,'2013-10-28 08:53:33','2013-10-28 08:53:33','closed'),(10,8,'Spree::Shipment',11,'Spree::Order',5,'Spree::ShippingMethod',0.00,'Shipping',1,1,'2013-10-31 11:59:38','2013-10-31 11:59:38','open');
/*!40000 ALTER TABLE `spree_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_assets`
--

DROP TABLE IF EXISTS `spree_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_id` int(11) DEFAULT NULL,
  `viewable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `attachment_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `alt` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_assets`
--

LOCK TABLES `spree_assets` WRITE;
/*!40000 ALTER TABLE `spree_assets` DISABLE KEYS */;
INSERT INTO `spree_assets` VALUES (1,17,'Spree::Variant',240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2013-10-23 13:32:23',NULL),(2,17,'Spree::Variant',240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2013-10-23 13:32:25',NULL),(3,18,'Spree::Variant',240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2013-10-23 13:32:26',NULL),(4,18,'Spree::Variant',240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2013-10-23 13:32:27',NULL),(5,19,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2013-10-23 13:32:27',NULL),(6,19,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2013-10-23 13:32:28',NULL),(7,20,'Spree::Variant',240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2013-10-23 13:32:30',NULL),(8,20,'Spree::Variant',240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2013-10-23 13:32:31',NULL),(9,21,'Spree::Variant',240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2013-10-23 13:32:32',NULL),(10,21,'Spree::Variant',240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2013-10-23 13:32:33',NULL),(11,22,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2013-10-23 13:32:33',NULL),(12,22,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2013-10-23 13:32:35',NULL),(13,23,'Spree::Variant',240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2013-10-23 13:32:36',NULL),(14,23,'Spree::Variant',240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2013-10-23 13:32:36',NULL),(15,24,'Spree::Variant',240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2013-10-23 13:32:37',NULL),(16,24,'Spree::Variant',240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2013-10-23 13:32:38',NULL),(17,25,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2013-10-23 13:32:39',NULL),(18,25,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2013-10-23 13:32:40',NULL),(19,26,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2013-10-23 13:32:41',NULL),(20,26,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2013-10-23 13:32:42',NULL),(21,1,'Spree::Variant',360,360,31490,1,'image/jpeg','ror_tote.jpeg','Spree::Image','2013-10-23 13:32:43',NULL),(22,1,'Spree::Variant',360,360,28620,2,'image/jpeg','ror_tote_back.jpeg','Spree::Image','2013-10-23 13:32:44',NULL),(23,2,'Spree::Variant',360,360,28230,1,'image/jpeg','ror_bag.jpeg','Spree::Image','2013-10-23 13:32:45',NULL),(24,3,'Spree::Variant',360,360,27626,1,'image/jpeg','ror_baseball.jpeg','Spree::Image','2013-10-23 13:32:45',NULL),(25,3,'Spree::Variant',360,360,23490,2,'image/jpeg','ror_baseball_back.jpeg','Spree::Image','2013-10-23 13:32:46',NULL),(26,4,'Spree::Variant',360,360,14083,1,'image/jpeg','ror_jr_spaghetti.jpeg','Spree::Image','2013-10-23 13:32:47',NULL),(27,13,'Spree::Variant',360,360,20026,1,'image/jpeg','ror_mug.jpeg','Spree::Image','2013-10-23 13:32:48',NULL),(28,13,'Spree::Variant',360,360,10929,2,'image/jpeg','ror_mug_back.jpeg','Spree::Image','2013-10-23 13:32:49',NULL),(29,5,'Spree::Variant',360,360,18252,1,'image/jpeg','ror_ringer.jpeg','Spree::Image','2013-10-23 13:32:50',NULL),(30,5,'Spree::Variant',360,360,13276,2,'image/jpeg','ror_ringer_back.jpeg','Spree::Image','2013-10-23 13:32:51',NULL),(31,14,'Spree::Variant',360,360,20714,1,'image/jpeg','ror_stein.jpeg','Spree::Image','2013-10-23 13:32:52',NULL),(32,14,'Spree::Variant',360,360,20619,2,'image/jpeg','ror_stein_back.jpeg','Spree::Image','2013-10-23 13:32:53',NULL),(33,NULL,'Spree::Variant',1500,488,25587,1,'image/png','crave_logo.png','Spree::Image','2013-10-23 17:51:24',''),(34,6,'Spree::Variant',520,330,77263,1,'image/jpeg','2013-10-02-382-edit.jpg','Spree::Image','2013-10-24 12:44:19',''),(35,12,'Spree::Variant',480,480,38369,1,'image/jpeg','spree_bag.jpeg','Spree::Image','2013-10-23 13:32:56',NULL),(36,11,'Spree::Variant',480,480,44579,1,'image/jpeg','spree_tote_front.jpeg','Spree::Image','2013-10-23 13:32:57',NULL),(37,11,'Spree::Variant',480,480,16947,2,'image/jpeg','spree_tote_back.jpeg','Spree::Image','2013-10-23 13:32:57',NULL),(38,10,'Spree::Variant',480,480,17641,1,'image/jpeg','spree_ringer_t.jpeg','Spree::Image','2013-10-23 13:32:58',NULL),(39,10,'Spree::Variant',480,480,10514,2,'image/jpeg','spree_ringer_t_back.jpeg','Spree::Image','2013-10-23 13:33:00',NULL),(40,9,'Spree::Variant',480,480,5898,1,'image/jpeg','spree_spaghetti.jpeg','Spree::Image','2013-10-23 13:33:01',NULL),(41,8,'Spree::Variant',480,480,18012,1,'image/jpeg','spree_jersey.jpeg','Spree::Image','2013-10-23 13:33:01',NULL),(42,8,'Spree::Variant',480,480,17868,2,'image/jpeg','spree_jersey_back.jpeg','Spree::Image','2013-10-23 13:33:02',NULL),(43,15,'Spree::Variant',480,480,12999,1,'image/jpeg','spree_stein.jpeg','Spree::Image','2013-10-23 13:33:03',NULL),(44,15,'Spree::Variant',480,480,12687,2,'image/jpeg','spree_stein_back.jpeg','Spree::Image','2013-10-23 13:33:04',NULL),(45,16,'Spree::Variant',240,240,4148,1,'image/jpeg','spree_mug.jpeg','Spree::Image','2013-10-23 13:33:05',NULL),(46,16,'Spree::Variant',240,240,4428,2,'image/jpeg','spree_mug_back.jpeg','Spree::Image','2013-10-23 13:33:06',NULL),(47,7,'Spree::Variant',520,330,68333,1,'image/jpeg','daily-menu-869-edit.jpg','Spree::Image','2013-10-24 07:45:20','');
/*!40000 ALTER TABLE `spree_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_calculators`
--

DROP TABLE IF EXISTS `spree_calculators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calculable_id` int(11) DEFAULT NULL,
  `calculable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_calculators`
--

LOCK TABLES `spree_calculators` WRITE;
/*!40000 ALTER TABLE `spree_calculators` DISABLE KEYS */;
INSERT INTO `spree_calculators` VALUES (1,'Spree::Calculator::Shipping::FlatRate',1,'Spree::ShippingMethod','2013-10-23 13:32:12','2013-10-23 13:32:12'),(2,'Spree::Calculator::Shipping::FlatRate',2,'Spree::ShippingMethod','2013-10-23 13:32:12','2013-10-23 13:32:12'),(3,'Spree::Calculator::Shipping::FlatRate',3,'Spree::ShippingMethod','2013-10-23 13:32:12','2013-10-23 13:32:12'),(4,'Spree::Calculator::Shipping::FlatRate',4,'Spree::ShippingMethod','2013-10-23 13:32:12','2013-10-23 13:32:12'),(5,'Spree::Calculator::DefaultTax',1,'Spree::TaxRate','2013-10-23 13:32:13','2013-10-23 13:32:13'),(6,'Spree::Calculator::Shipping::FlatPercentItemTotal',5,'Spree::ShippingMethod','2013-10-28 08:53:19','2013-10-28 08:53:19'),(7,'Spree::Calculator::Shipping::FlatRate',6,'Spree::ShippingMethod','2013-10-28 11:02:11','2013-10-28 11:02:11'),(8,'Spree::Calculator::Shipping::FlatRate',7,'Spree::ShippingMethod','2013-10-28 11:02:11','2013-10-28 11:02:11'),(9,'Spree::Calculator::Shipping::FlatRate',8,'Spree::ShippingMethod','2013-10-28 11:02:11','2013-10-28 11:02:11'),(10,'Spree::Calculator::Shipping::FlatRate',9,'Spree::ShippingMethod','2013-10-28 11:02:11','2013-10-28 11:02:11');
/*!40000 ALTER TABLE `spree_calculators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_configurations`
--

DROP TABLE IF EXISTS `spree_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_configurations_on_name_and_type` (`name`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_configurations`
--

LOCK TABLES `spree_configurations` WRITE;
/*!40000 ALTER TABLE `spree_configurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_countries`
--

DROP TABLE IF EXISTS `spree_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  `states_required` tinyint(1) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_countries`
--

LOCK TABLES `spree_countries` WRITE;
/*!40000 ALTER TABLE `spree_countries` DISABLE KEYS */;
INSERT INTO `spree_countries` VALUES (1,'CHAD','TD','TCD','Chad',148,0,'2013-10-23 13:31:38'),(2,'FAROE ISLANDS','FO','FRO','Faroe Islands',234,0,'2013-10-23 13:31:39'),(3,'INDIA','IN','IND','India',356,1,'2013-10-23 13:31:39'),(4,'NICARAGUA','NI','NIC','Nicaragua',558,0,'2013-10-23 13:31:39'),(5,'SAINT LUCIA','LC','LCA','Saint Lucia',662,0,'2013-10-23 13:31:39'),(6,'FIJI','FJ','FJI','Fiji',242,0,'2013-10-23 13:31:39'),(7,'INDONESIA','ID','IDN','Indonesia',360,0,'2013-10-23 13:31:39'),(8,'NIGER','NE','NER','Niger',562,0,'2013-10-23 13:31:39'),(9,'SAINT PIERRE AND MIQUELON','PM','SPM','Saint Pierre and Miquelon',666,0,'2013-10-23 13:31:39'),(10,'FINLAND','FI','FIN','Finland',246,0,'2013-10-23 13:31:39'),(11,'NIGERIA','NG','NGA','Nigeria',566,1,'2013-10-23 13:31:39'),(12,'SAINT VINCENT AND THE GRENADINES','VC','VCT','Saint Vincent and the Grenadines',670,0,'2013-10-23 13:31:39'),(13,'FRANCE','FR','FRA','France',250,0,'2013-10-23 13:31:39'),(14,'IRAN, ISLAMIC REPUBLIC OF','IR','IRN','Iran, Islamic Republic of',364,0,'2013-10-23 13:31:39'),(15,'NIUE','NU','NIU','Niue',570,0,'2013-10-23 13:31:39'),(16,'SAMOA','WS','WSM','Samoa',882,0,'2013-10-23 13:31:39'),(17,'FRENCH GUIANA','GF','GUF','French Guiana',254,0,'2013-10-23 13:31:39'),(18,'IRAQ','IQ','IRQ','Iraq',368,1,'2013-10-23 13:31:39'),(19,'SAN MARINO','SM','SMR','San Marino',674,0,'2013-10-23 13:31:39'),(20,'IRELAND','IE','IRL','Ireland',372,0,'2013-10-23 13:31:39'),(21,'SAO TOME AND PRINCIPE','ST','STP','Sao Tome and Principe',678,0,'2013-10-23 13:31:39'),(22,'ISRAEL','IL','ISR','Israel',376,0,'2013-10-23 13:31:39'),(23,'SAUDI ARABIA','SA','SAU','Saudi Arabia',682,0,'2013-10-23 13:31:39'),(24,'ITALY','IT','ITA','Italy',380,0,'2013-10-23 13:31:39'),(25,'SENEGAL','SN','SEN','Senegal',686,0,'2013-10-23 13:31:39'),(26,'JAMAICA','JM','JAM','Jamaica',388,0,'2013-10-23 13:31:39'),(27,'JAPAN','JP','JPN','Japan',392,0,'2013-10-23 13:31:39'),(28,'JORDAN','JO','JOR','Jordan',400,0,'2013-10-23 13:31:39'),(29,'BELGIUM','BE','BEL','Belgium',56,1,'2013-10-23 13:31:39'),(30,'BELIZE','BZ','BLZ','Belize',84,0,'2013-10-23 13:31:39'),(31,'KAZAKHSTAN','KZ','KAZ','Kazakhstan',398,0,'2013-10-23 13:31:39'),(32,'UGANDA','UG','UGA','Uganda',800,0,'2013-10-23 13:31:39'),(33,'BENIN','BJ','BEN','Benin',204,0,'2013-10-23 13:31:39'),(34,'KENYA','KE','KEN','Kenya',404,0,'2013-10-23 13:31:39'),(35,'UKRAINE','UA','UKR','Ukraine',804,0,'2013-10-23 13:31:39'),(36,'BERMUDA','BM','BMU','Bermuda',60,0,'2013-10-23 13:31:39'),(37,'KIRIBATI','KI','KIR','Kiribati',296,0,'2013-10-23 13:31:39'),(38,'MEXICO','MX','MEX','Mexico',484,1,'2013-10-23 13:31:39'),(39,'UNITED ARAB EMIRATES','AE','ARE','United Arab Emirates',784,1,'2013-10-23 13:31:39'),(40,'BHUTAN','BT','BTN','Bhutan',64,0,'2013-10-23 13:31:40'),(41,'CUBA','CU','CUB','Cuba',192,0,'2013-10-23 13:31:40'),(42,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','KP','PRK','North Korea',408,0,'2013-10-23 13:31:40'),(43,'MICRONESIA, FEDERATED STATES OF','FM','FSM','Micronesia, Federated States of',583,1,'2013-10-23 13:31:40'),(44,'UNITED KINGDOM','GB','GBR','United Kingdom',826,0,'2013-10-23 13:31:40'),(45,'BOLIVIA','BO','BOL','Bolivia',68,0,'2013-10-23 13:31:40'),(46,'CYPRUS','CY','CYP','Cyprus',196,0,'2013-10-23 13:31:40'),(47,'KOREA, REPUBLIC OF','KR','KOR','South Korea',410,0,'2013-10-23 13:31:40'),(48,'MOLDOVA, REPUBLIC OF','MD','MDA','Moldova, Republic of',498,0,'2013-10-23 13:31:40'),(49,'UNITED STATES','US','USA','United States',840,1,'2013-10-23 13:31:40'),(50,'BOSNIA AND HERZEGOVINA','BA','BIH','Bosnia and Herzegovina',70,1,'2013-10-23 13:31:40'),(51,'CZECH REPUBLIC','CZ','CZE','Czech Republic',203,0,'2013-10-23 13:31:40'),(52,'KUWAIT','KW','KWT','Kuwait',414,0,'2013-10-23 13:31:40'),(53,'MONACO','MC','MCO','Monaco',492,0,'2013-10-23 13:31:40'),(54,'URUGUAY','UY','URY','Uruguay',858,0,'2013-10-23 13:31:40'),(55,'BOTSWANA','BW','BWA','Botswana',72,0,'2013-10-23 13:31:40'),(56,'DENMARK','DK','DNK','Denmark',208,0,'2013-10-23 13:31:40'),(57,'GUADELOUPE','GP','GLP','Guadeloupe',312,0,'2013-10-23 13:31:40'),(58,'KYRGYZSTAN','KG','KGZ','Kyrgyzstan',417,0,'2013-10-23 13:31:40'),(59,'MONGOLIA','MN','MNG','Mongolia',496,0,'2013-10-23 13:31:40'),(60,'PHILIPPINES','PH','PHL','Philippines',608,0,'2013-10-23 13:31:40'),(61,'BRAZIL','BR','BRA','Brazil',76,1,'2013-10-23 13:31:40'),(62,'DJIBOUTI','DJ','DJI','Djibouti',262,0,'2013-10-23 13:31:40'),(63,'GUAM','GU','GUM','Guam',316,0,'2013-10-23 13:31:40'),(64,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA','LAO','Lao People\'s Democratic Republic',418,0,'2013-10-23 13:31:40'),(65,'MONTSERRAT','MS','MSR','Montserrat',500,0,'2013-10-23 13:31:40'),(66,'PITCAIRN','PN','PCN','Pitcairn',612,0,'2013-10-23 13:31:41'),(67,'UZBEKISTAN','UZ','UZB','Uzbekistan',860,0,'2013-10-23 13:31:41'),(68,'BRUNEI DARUSSALAM','BN','BRN','Brunei Darussalam',96,0,'2013-10-23 13:31:41'),(69,'DOMINICA','DM','DMA','Dominica',212,0,'2013-10-23 13:31:41'),(70,'GUATEMALA','GT','GTM','Guatemala',320,0,'2013-10-23 13:31:41'),(71,'MOROCCO','MA','MAR','Morocco',504,0,'2013-10-23 13:31:41'),(72,'POLAND','PL','POL','Poland',616,0,'2013-10-23 13:31:41'),(73,'VANUATU','VU','VUT','Vanuatu',548,0,'2013-10-23 13:31:41'),(74,'DOMINICAN REPUBLIC','DO','DOM','Dominican Republic',214,0,'2013-10-23 13:31:41'),(75,'MOZAMBIQUE','MZ','MOZ','Mozambique',508,0,'2013-10-23 13:31:41'),(76,'PORTUGAL','PT','PRT','Portugal',620,0,'2013-10-23 13:31:41'),(77,'SUDAN','SD','SDN','Sudan',736,1,'2013-10-23 13:31:41'),(78,'VENEZUELA','VE','VEN','Venezuela',862,1,'2013-10-23 13:31:41'),(79,'ECUADOR','EC','ECU','Ecuador',218,0,'2013-10-23 13:31:41'),(80,'GUINEA','GN','GIN','Guinea',324,0,'2013-10-23 13:31:41'),(81,'MYANMAR','MM','MMR','Myanmar',104,0,'2013-10-23 13:31:41'),(82,'PUERTO RICO','PR','PRI','Puerto Rico',630,0,'2013-10-23 13:31:41'),(83,'SURINAME','SR','SUR','Suriname',740,0,'2013-10-23 13:31:41'),(84,'VIET NAM','VN','VNM','Viet Nam',704,0,'2013-10-23 13:31:41'),(85,'EGYPT','EG','EGY','Egypt',818,0,'2013-10-23 13:31:41'),(86,'GUINEA-BISSAU','GW','GNB','Guinea-Bissau',624,0,'2013-10-23 13:31:41'),(87,'NAMIBIA','NA','NAM','Namibia',516,0,'2013-10-23 13:31:41'),(88,'QATAR','QA','QAT','Qatar',634,0,'2013-10-23 13:31:41'),(89,'SVALBARD AND JAN MAYEN','SJ','SJM','Svalbard and Jan Mayen',744,0,'2013-10-23 13:31:41'),(90,'EL SALVADOR','SV','SLV','El Salvador',222,0,'2013-10-23 13:31:41'),(91,'GUYANA','GY','GUY','Guyana',328,0,'2013-10-23 13:31:41'),(92,'REUNION','RE','REU','Reunion',638,0,'2013-10-23 13:31:41'),(93,'HAITI','HT','HTI','Haiti',332,0,'2013-10-23 13:31:42'),(94,'ROMANIA','RO','ROM','Romania',642,0,'2013-10-23 13:31:42'),(95,'SWAZILAND','SZ','SWZ','Swaziland',748,0,'2013-10-23 13:31:42'),(96,'HOLY SEE (VATICAN CITY STATE)','VA','VAT','Holy See (Vatican City State)',336,0,'2013-10-23 13:31:42'),(97,'RUSSIAN FEDERATION','RU','RUS','Russian Federation',643,1,'2013-10-23 13:31:42'),(98,'SWEDEN','SE','SWE','Sweden',752,0,'2013-10-23 13:31:42'),(99,'HONDURAS','HN','HND','Honduras',340,0,'2013-10-23 13:31:42'),(100,'RWANDA','RW','RWA','Rwanda',646,0,'2013-10-23 13:31:42'),(101,'SWITZERLAND','CH','CHE','Switzerland',756,1,'2013-10-23 13:31:42'),(102,'HONG KONG','HK','HKG','Hong Kong',344,0,'2013-10-23 13:31:42'),(103,'SYRIAN ARAB REPUBLIC','SY','SYR','Syrian Arab Republic',760,0,'2013-10-23 13:31:42'),(104,'TAIWAN, PROVINCE OF CHINA','TW','TWN','Taiwan',158,0,'2013-10-23 13:31:42'),(105,'TAJIKISTAN','TJ','TJK','Tajikistan',762,0,'2013-10-23 13:31:42'),(106,'TANZANIA, UNITED REPUBLIC OF','TZ','TZA','Tanzania, United Republic of',834,0,'2013-10-23 13:31:42'),(107,'ARMENIA','AM','ARM','Armenia',51,0,'2013-10-23 13:31:42'),(108,'ARUBA','AW','ABW','Aruba',533,0,'2013-10-23 13:31:42'),(109,'AUSTRALIA','AU','AUS','Australia',36,1,'2013-10-23 13:31:42'),(110,'THAILAND','TH','THA','Thailand',764,0,'2013-10-23 13:31:42'),(111,'AUSTRIA','AT','AUT','Austria',40,1,'2013-10-23 13:31:42'),(112,'MADAGASCAR','MG','MDG','Madagascar',450,0,'2013-10-23 13:31:42'),(113,'TOGO','TG','TGO','Togo',768,0,'2013-10-23 13:31:42'),(114,'AZERBAIJAN','AZ','AZE','Azerbaijan',31,0,'2013-10-23 13:31:42'),(115,'CHILE','CL','CHL','Chile',152,0,'2013-10-23 13:31:42'),(116,'MALAWI','MW','MWI','Malawi',454,0,'2013-10-23 13:31:42'),(117,'TOKELAU','TK','TKL','Tokelau',772,0,'2013-10-23 13:31:42'),(118,'BAHAMAS','BS','BHS','Bahamas',44,0,'2013-10-23 13:31:42'),(119,'CHINA','CN','CHN','China',156,0,'2013-10-23 13:31:42'),(120,'MALAYSIA','MY','MYS','Malaysia',458,1,'2013-10-23 13:31:42'),(121,'TONGA','TO','TON','Tonga',776,0,'2013-10-23 13:31:42'),(122,'BAHRAIN','BH','BHR','Bahrain',48,0,'2013-10-23 13:31:42'),(123,'COLOMBIA','CO','COL','Colombia',170,0,'2013-10-23 13:31:42'),(124,'MALDIVES','MV','MDV','Maldives',462,0,'2013-10-23 13:31:42'),(125,'TRINIDAD AND TOBAGO','TT','TTO','Trinidad and Tobago',780,0,'2013-10-23 13:31:42'),(126,'BANGLADESH','BD','BGD','Bangladesh',50,0,'2013-10-23 13:31:42'),(127,'COMOROS','KM','COM','Comoros',174,1,'2013-10-23 13:31:42'),(128,'FRENCH POLYNESIA','PF','PYF','French Polynesia',258,0,'2013-10-23 13:31:42'),(129,'MALI','ML','MLI','Mali',466,0,'2013-10-23 13:31:42'),(130,'NORFOLK ISLAND','NF','NFK','Norfolk Island',574,0,'2013-10-23 13:31:42'),(131,'TUNISIA','TN','TUN','Tunisia',788,0,'2013-10-23 13:31:42'),(132,'BARBADOS','BB','BRB','Barbados',52,0,'2013-10-23 13:31:42'),(133,'CONGO','CG','COG','Congo',178,0,'2013-10-23 13:31:42'),(134,'GABON','GA','GAB','Gabon',266,0,'2013-10-23 13:31:43'),(135,'MALTA','MT','MLT','Malta',470,0,'2013-10-23 13:31:43'),(136,'NORTHERN MARIANA ISLANDS','MP','MNP','Northern Mariana Islands',580,0,'2013-10-23 13:31:43'),(137,'TURKEY','TR','TUR','Turkey',792,0,'2013-10-23 13:31:43'),(138,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','COD','Congo, the Democratic Republic of the',180,0,'2013-10-23 13:31:43'),(139,'MARSHALL ISLANDS','MH','MHL','Marshall Islands',584,0,'2013-10-23 13:31:43'),(140,'NORWAY','NO','NOR','Norway',578,0,'2013-10-23 13:31:43'),(141,'TURKMENISTAN','TM','TKM','Turkmenistan',795,0,'2013-10-23 13:31:43'),(142,'BELARUS','BY','BLR','Belarus',112,0,'2013-10-23 13:31:43'),(143,'COOK ISLANDS','CK','COK','Cook Islands',184,0,'2013-10-23 13:31:43'),(144,'GAMBIA','GM','GMB','Gambia',270,0,'2013-10-23 13:31:43'),(145,'MARTINIQUE','MQ','MTQ','Martinique',474,0,'2013-10-23 13:31:43'),(146,'OMAN','OM','OMN','Oman',512,0,'2013-10-23 13:31:43'),(147,'SEYCHELLES','SC','SYC','Seychelles',690,0,'2013-10-23 13:31:43'),(148,'TURKS AND CAICOS ISLANDS','TC','TCA','Turks and Caicos Islands',796,0,'2013-10-23 13:31:43'),(149,'GEORGIA','GE','GEO','Georgia',268,0,'2013-10-23 13:31:43'),(150,'MAURITANIA','MR','MRT','Mauritania',478,0,'2013-10-23 13:31:43'),(151,'PAKISTAN','PK','PAK','Pakistan',586,1,'2013-10-23 13:31:43'),(152,'SIERRA LEONE','SL','SLE','Sierra Leone',694,0,'2013-10-23 13:31:43'),(153,'TUVALU','TV','TUV','Tuvalu',798,0,'2013-10-23 13:31:43'),(154,'COSTA RICA','CR','CRI','Costa Rica',188,0,'2013-10-23 13:31:43'),(155,'GERMANY','DE','DEU','Germany',276,1,'2013-10-23 13:31:43'),(156,'MAURITIUS','MU','MUS','Mauritius',480,0,'2013-10-23 13:31:43'),(157,'PALAU','PW','PLW','Palau',585,0,'2013-10-23 13:31:43'),(158,'COTE D\'IVOIRE','CI','CIV','Cote D\'Ivoire',384,0,'2013-10-23 13:31:43'),(159,'PANAMA','PA','PAN','Panama',591,0,'2013-10-23 13:31:43'),(160,'SINGAPORE','SG','SGP','Singapore',702,0,'2013-10-23 13:31:43'),(161,'CROATIA','HR','HRV','Croatia',191,0,'2013-10-23 13:31:43'),(162,'GHANA','GH','GHA','Ghana',288,0,'2013-10-23 13:31:43'),(163,'PAPUA NEW GUINEA','PG','PNG','Papua New Guinea',598,0,'2013-10-23 13:31:43'),(164,'SLOVAKIA','SK','SVK','Slovakia',703,0,'2013-10-23 13:31:43'),(165,'GIBRALTAR','GI','GIB','Gibraltar',292,0,'2013-10-23 13:31:43'),(166,'PARAGUAY','PY','PRY','Paraguay',600,0,'2013-10-23 13:31:43'),(167,'SLOVENIA','SI','SVN','Slovenia',705,0,'2013-10-23 13:31:43'),(168,'GREECE','GR','GRC','Greece',300,0,'2013-10-23 13:31:43'),(169,'PERU','PE','PER','Peru',604,0,'2013-10-23 13:31:43'),(170,'SOLOMON ISLANDS','SB','SLB','Solomon Islands',90,0,'2013-10-23 13:31:43'),(171,'GREENLAND','GL','GRL','Greenland',304,0,'2013-10-23 13:31:43'),(172,'SOMALIA','SO','SOM','Somalia',706,1,'2013-10-23 13:31:43'),(173,'GRENADA','GD','GRD','Grenada',308,0,'2013-10-23 13:31:43'),(174,'SOUTH AFRICA','ZA','ZAF','South Africa',710,0,'2013-10-23 13:31:43'),(175,'SPAIN','ES','ESP','Spain',724,0,'2013-10-23 13:31:43'),(176,'SRI LANKA','LK','LKA','Sri Lanka',144,0,'2013-10-23 13:31:43'),(177,'AFGHANISTAN','AF','AFG','Afghanistan',4,0,'2013-10-23 13:31:43'),(178,'ALBANIA','AL','ALB','Albania',8,0,'2013-10-23 13:31:43'),(179,'ALGERIA','DZ','DZA','Algeria',12,0,'2013-10-23 13:31:43'),(180,'LATVIA','LV','LVA','Latvia',428,0,'2013-10-23 13:31:43'),(181,'AMERICAN SAMOA','AS','ASM','American Samoa',16,0,'2013-10-23 13:31:43'),(182,'BULGARIA','BG','BGR','Bulgaria',100,0,'2013-10-23 13:31:43'),(183,'LEBANON','LB','LBN','Lebanon',422,0,'2013-10-23 13:31:43'),(184,'ANDORRA','AD','AND','Andorra',20,0,'2013-10-23 13:31:43'),(185,'BURKINA FASO','BF','BFA','Burkina Faso',854,0,'2013-10-23 13:31:43'),(186,'LESOTHO','LS','LSO','Lesotho',426,0,'2013-10-23 13:31:43'),(187,'ANGOLA','AO','AGO','Angola',24,0,'2013-10-23 13:31:43'),(188,'BURUNDI','BI','BDI','Burundi',108,0,'2013-10-23 13:31:43'),(189,'LIBERIA','LR','LBR','Liberia',430,0,'2013-10-23 13:31:43'),(190,'VIRGIN ISLANDS, BRITISH','VG','VGB','Virgin Islands, British',92,0,'2013-10-23 13:31:43'),(191,'ANGUILLA','AI','AIA','Anguilla',660,0,'2013-10-23 13:31:43'),(192,'CAMBODIA','KH','KHM','Cambodia',116,0,'2013-10-23 13:31:43'),(193,'EQUATORIAL GUINEA','GQ','GNQ','Equatorial Guinea',226,0,'2013-10-23 13:31:43'),(194,'LIBYAN ARAB JAMAHIRIYA','LY','LBY','Libyan Arab Jamahiriya',434,0,'2013-10-23 13:31:43'),(195,'NAURU','NR','NRU','Nauru',520,0,'2013-10-23 13:31:43'),(196,'VIRGIN ISLANDS, U.S.','VI','VIR','Virgin Islands, U.S.',850,0,'2013-10-23 13:31:43'),(197,'ANTIGUA AND BARBUDA','AG','ATG','Antigua and Barbuda',28,0,'2013-10-23 13:31:43'),(198,'CAMEROON','CM','CMR','Cameroon',120,0,'2013-10-23 13:31:43'),(199,'LIECHTENSTEIN','LI','LIE','Liechtenstein',438,0,'2013-10-23 13:31:43'),(200,'NEPAL','NP','NPL','Nepal',524,1,'2013-10-23 13:31:43'),(201,'WALLIS AND FUTUNA','WF','WLF','Wallis and Futuna',876,0,'2013-10-23 13:31:43'),(202,'WESTERN SAHARA','EH','ESH','Western Sahara',732,0,'2013-10-23 13:31:43'),(203,'ARGENTINA','AR','ARG','Argentina',32,1,'2013-10-23 13:31:43'),(204,'CANADA','CA','CAN','Canada',124,1,'2013-10-23 13:31:43'),(205,'ERITREA','ER','ERI','Eritrea',232,0,'2013-10-23 13:31:43'),(206,'LITHUANIA','LT','LTU','Lithuania',440,0,'2013-10-23 13:31:43'),(207,'NETHERLANDS','NL','NLD','Netherlands',528,0,'2013-10-23 13:31:43'),(208,'YEMEN','YE','YEM','Yemen',887,0,'2013-10-23 13:31:43'),(209,'CAPE VERDE','CV','CPV','Cape Verde',132,0,'2013-10-23 13:31:43'),(210,'ESTONIA','EE','EST','Estonia',233,0,'2013-10-23 13:31:43'),(211,'LUXEMBOURG','LU','LUX','Luxembourg',442,0,'2013-10-23 13:31:43'),(212,'NETHERLANDS ANTILLES','AN','ANT','Netherlands Antilles',530,0,'2013-10-23 13:31:43'),(213,'SAINT HELENA','SH','SHN','Saint Helena',654,0,'2013-10-23 13:31:43'),(214,'ZAMBIA','ZM','ZMB','Zambia',894,0,'2013-10-23 13:31:43'),(215,'CAYMAN ISLANDS','KY','CYM','Cayman Islands',136,0,'2013-10-23 13:31:43'),(216,'ETHIOPIA','ET','ETH','Ethiopia',231,1,'2013-10-23 13:31:43'),(217,'HUNGARY','HU','HUN','Hungary',348,0,'2013-10-23 13:31:43'),(218,'MACAO','MO','MAC','Macao',446,0,'2013-10-23 13:31:43'),(219,'NEW CALEDONIA','NC','NCL','New Caledonia',540,0,'2013-10-23 13:31:43'),(220,'ZIMBABWE','ZW','ZWE','Zimbabwe',716,0,'2013-10-23 13:31:43'),(221,'CENTRAL AFRICAN REPUBLIC','CF','CAF','Central African Republic',140,0,'2013-10-23 13:31:43'),(222,'FALKLAND ISLANDS (MALVINAS)','FK','FLK','Falkland Islands (Malvinas)',238,0,'2013-10-23 13:31:44'),(223,'ICELAND','IS','ISL','Iceland',352,0,'2013-10-23 13:31:44'),(224,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MK','MKD','Macedonia',807,0,'2013-10-23 13:31:44'),(225,'NEW ZEALAND','NZ','NZL','New Zealand',554,0,'2013-10-23 13:31:44'),(226,'SAINT KITTS AND NEVIS','KN','KNA','Saint Kitts and Nevis',659,1,'2013-10-23 13:31:44'),(227,'SERBIA','RS','SRB','Serbia',999,0,'2013-10-23 13:31:44');
/*!40000 ALTER TABLE `spree_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_credit_cards`
--

DROP TABLE IF EXISTS `spree_credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_digits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `gateway_customer_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_credit_cards`
--

LOCK TABLES `spree_credit_cards` WRITE;
/*!40000 ALTER TABLE `spree_credit_cards` DISABLE KEYS */;
INSERT INTO `spree_credit_cards` VALUES (1,'12','2014','visa','1111','Sean','Schofield',NULL,'BGS-1234',NULL,'2013-10-23 13:33:09','2013-10-23 13:33:09'),(2,'05','2015','','9898','Magesh','S',NULL,NULL,NULL,'2013-10-31 12:01:00','2013-10-31 12:01:00');
/*!40000 ALTER TABLE `spree_credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_gateways`
--

DROP TABLE IF EXISTS `spree_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `server` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'test',
  `test_mode` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_gateways`
--

LOCK TABLES `spree_gateways` WRITE;
/*!40000 ALTER TABLE `spree_gateways` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_inventory_units`
--

DROP TABLE IF EXISTS `spree_inventory_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `return_authorization_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pending` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_inventory_units_on_order_id` (`order_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_inventory_units`
--

LOCK TABLES `spree_inventory_units` WRITE;
/*!40000 ALTER TABLE `spree_inventory_units` DISABLE KEYS */;
INSERT INTO `spree_inventory_units` VALUES (1,'on_hand',1,1,1,NULL,'2013-10-23 13:33:08','2013-10-23 13:33:08',1),(2,'on_hand',2,2,2,NULL,'2013-10-23 13:33:09','2013-10-23 13:33:09',1),(8,'on_hand',7,5,7,NULL,'2013-10-28 08:53:33','2013-10-28 08:53:33',0),(9,'on_hand',7,11,8,NULL,'2013-10-31 11:59:38','2013-10-31 11:59:38',1);
/*!40000 ALTER TABLE `spree_inventory_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_line_items`
--

DROP TABLE IF EXISTS `spree_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost_price` decimal(8,2) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_line_items_on_order_id` (`order_id`),
  KEY `index_spree_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_line_items`
--

LOCK TABLES `spree_line_items` WRITE;
/*!40000 ALTER TABLE `spree_line_items` DISABLE KEYS */;
INSERT INTO `spree_line_items` VALUES (1,1,1,1,15.99,'2013-10-23 13:33:08','2013-10-23 13:33:08','USD',17.00,1),(2,2,2,1,22.99,'2013-10-23 13:33:08','2013-10-23 13:33:08','USD',21.00,1),(5,7,5,1,107.00,'2013-10-28 07:44:14','2013-10-28 07:44:14','GBP',107.00,1),(6,7,11,1,107.00,'2013-10-31 10:58:50','2013-10-31 10:58:50','GBP',107.00,1);
/*!40000 ALTER TABLE `spree_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_log_entries`
--

DROP TABLE IF EXISTS `spree_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_log_entries`
--

LOCK TABLES `spree_log_entries` WRITE;
/*!40000 ALTER TABLE `spree_log_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types`
--

DROP TABLE IF EXISTS `spree_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types`
--

LOCK TABLES `spree_option_types` WRITE;
/*!40000 ALTER TABLE `spree_option_types` DISABLE KEYS */;
INSERT INTO `spree_option_types` VALUES (1,'tshirt-size','Size',1,'2013-10-23 13:32:18','2013-10-23 13:32:18'),(2,'tshirt-color','Color',2,'2013-10-23 13:32:18','2013-10-23 13:32:18');
/*!40000 ALTER TABLE `spree_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types_prototypes`
--

DROP TABLE IF EXISTS `spree_option_types_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types_prototypes`
--

LOCK TABLES `spree_option_types_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_option_types_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_option_types_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values`
--

DROP TABLE IF EXISTS `spree_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values`
--

LOCK TABLES `spree_option_values` WRITE;
/*!40000 ALTER TABLE `spree_option_values` DISABLE KEYS */;
INSERT INTO `spree_option_values` VALUES (1,1,'Small','S',1,'2013-10-23 13:32:18','2013-10-23 13:32:18'),(2,2,'Medium','M',1,'2013-10-23 13:32:18','2013-10-23 13:32:18'),(3,3,'Large','L',1,'2013-10-23 13:32:18','2013-10-23 13:32:18'),(4,4,'Extra Large','XL',1,'2013-10-23 13:32:18','2013-10-23 13:32:18'),(5,1,'Red','Red',2,'2013-10-23 13:32:18','2013-10-23 13:32:18'),(6,2,'Green','Green',2,'2013-10-23 13:32:18','2013-10-23 13:32:18'),(7,3,'Blue','Blue',2,'2013-10-23 13:32:18','2013-10-23 13:32:18');
/*!40000 ALTER TABLE `spree_option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values_variants`
--

DROP TABLE IF EXISTS `spree_option_values_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`),
  KEY `index_spree_option_values_variants_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values_variants`
--

LOCK TABLES `spree_option_values_variants` WRITE;
/*!40000 ALTER TABLE `spree_option_values_variants` DISABLE KEYS */;
INSERT INTO `spree_option_values_variants` VALUES (17,1),(17,5),(18,1),(18,7),(19,1),(19,6),(20,2),(20,5),(21,2),(21,7),(22,2),(22,6),(23,3),(23,5),(24,3),(24,7),(25,3),(25,6),(26,4),(26,6);
/*!40000 ALTER TABLE `spree_option_values_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders`
--

DROP TABLE IF EXISTS `spree_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `payment_total` decimal(10,2) DEFAULT '0.00',
  `shipping_method_id` int(11) DEFAULT NULL,
  `shipment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_instructions` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_orders_on_number` (`number`),
  KEY `index_spree_orders_on_user_id` (`user_id`),
  KEY `index_spree_orders_on_completed_at` (`completed_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders`
--

LOCK TABLES `spree_orders` WRITE;
/*!40000 ALTER TABLE `spree_orders` DISABLE KEYS */;
INSERT INTO `spree_orders` VALUES (1,'R123456789',15.99,21.79,'complete',5.80,NULL,'2013-10-22 13:33:09',2,1,0.00,NULL,'pending','balance_due','spree@example.com',NULL,'2013-10-23 13:33:07','2013-10-23 13:33:09','USD',NULL,NULL),(2,'R987654321',22.99,29.14,'complete',6.15,NULL,'2013-10-22 13:33:09',2,1,0.00,NULL,'pending','balance_due','spree@example.com',NULL,'2013-10-23 13:33:08','2013-10-23 13:33:09','USD',NULL,NULL),(5,'R764288303',107.00,107.00,'complete',0.00,2,'2013-10-28 08:57:13',21,22,0.00,NULL,'pending','balance_due','magesh@crave.com',NULL,'2013-10-28 07:44:13','2013-10-28 08:57:13','GBP','127.0.0.1',2),(6,'R431346116',0.00,0.00,'cart',0.00,2,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'magesh@crave.com',NULL,'2013-10-28 08:57:14','2013-10-28 08:57:14','GBP',NULL,2),(11,'R722278762',107.00,107.00,'payment',0.00,1,NULL,23,24,0.00,NULL,NULL,NULL,'magesh@atsquare.in',NULL,'2013-10-31 10:50:50','2013-10-31 11:59:50','GBP','127.0.0.1',1);
/*!40000 ALTER TABLE `spree_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_methods`
--

DROP TABLE IF EXISTS `spree_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `display_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_methods`
--

LOCK TABLES `spree_payment_methods` WRITE;
/*!40000 ALTER TABLE `spree_payment_methods` DISABLE KEYS */;
INSERT INTO `spree_payment_methods` VALUES (1,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for development.',0,'development',NULL,'2013-10-23 13:32:12','2013-10-31 12:01:37',''),(2,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for production.',1,'production',NULL,'2013-10-23 13:32:12','2013-10-23 13:32:12',NULL),(3,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for staging.',0,'development',NULL,'2013-10-23 13:32:12','2013-10-31 12:02:13',''),(4,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for test.',0,'development',NULL,'2013-10-23 13:32:12','2013-10-31 12:02:31',''),(5,'Spree::PaymentMethod::Check','Check','Pay by check.',0,'development',NULL,'2013-10-23 13:32:12','2013-10-31 16:01:44',''),(6,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for development.',0,'development',NULL,'2013-10-28 11:02:10','2013-10-31 12:03:06',''),(7,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for production.',1,'production',NULL,'2013-10-28 11:02:11','2013-10-28 11:02:11',NULL),(8,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for staging.',0,'development',NULL,'2013-10-28 11:02:11','2013-10-31 12:03:34',''),(9,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for test.',0,'development',NULL,'2013-10-28 11:02:11','2013-10-31 12:03:51',''),(10,'Spree::PaymentMethod::Check','Check','Pay by check.',0,'development',NULL,'2013-10-28 11:02:11','2013-10-31 16:01:30',''),(12,'Spree::Gateway::PayPalExpress','Paypal','Paypal payment gateway',1,'development',NULL,'2013-10-31 15:44:09','2013-10-31 15:44:09','');
/*!40000 ALTER TABLE `spree_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payments`
--

DROP TABLE IF EXISTS `spree_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avs_response` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv_response_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv_response_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_payments_on_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payments`
--

LOCK TABLES `spree_payments` WRITE;
/*!40000 ALTER TABLE `spree_payments` DISABLE KEYS */;
INSERT INTO `spree_payments` VALUES (1,21.79,1,1,'Spree::CreditCard',1,'pending','12345',NULL,'2013-10-23 13:33:10','2013-10-23 13:33:10','ZGNXPQRP',NULL,NULL),(2,29.14,2,1,'Spree::CreditCard',1,'pending','12345',NULL,'2013-10-23 13:33:10','2013-10-23 13:33:10','5HGURDM7',NULL,NULL),(3,107.00,5,NULL,NULL,5,'checkout',NULL,NULL,'2013-10-28 08:57:13','2013-10-28 08:57:13','A45YSB5T',NULL,NULL),(4,107.00,11,2,'Spree::CreditCard',11,'invalid',NULL,NULL,'2013-10-31 12:01:00','2013-10-31 12:01:01','SEB7VV9W',NULL,NULL);
/*!40000 ALTER TABLE `spree_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_paypal_express_checkouts`
--

DROP TABLE IF EXISTS `spree_paypal_express_checkouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_paypal_express_checkouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'complete',
  `refund_transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refunded_at` datetime DEFAULT NULL,
  `refund_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_paypal_express_checkouts_on_transaction_id` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_paypal_express_checkouts`
--

LOCK TABLES `spree_paypal_express_checkouts` WRITE;
/*!40000 ALTER TABLE `spree_paypal_express_checkouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_paypal_express_checkouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_preferences`
--

DROP TABLE IF EXISTS `spree_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text COLLATE utf8_unicode_ci,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_preferences_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_preferences`
--

LOCK TABLES `spree_preferences` WRITE;
/*!40000 ALTER TABLE `spree_preferences` DISABLE KEYS */;
INSERT INTO `spree_preferences` VALUES (1,'--- 49\n...\n','spree/app_configuration/default_country_id','integer','2013-10-23 13:31:44','2013-10-23 13:31:44'),(2,'--- 5.0\n...\n','spree/calculator/shipping/flat_rate/amount/1','decimal','2013-10-23 13:32:13','2013-10-28 11:02:11'),(3,'--- USD\n...\n','spree/calculator/shipping/flat_rate/currency/1','string','2013-10-23 13:32:13','2013-10-28 11:02:11'),(4,'--- 5.0\n...\n','spree/calculator/shipping/flat_rate/amount/4','decimal','2013-10-23 13:32:13','2013-10-28 11:02:11'),(5,'--- EUR\n...\n','spree/calculator/shipping/flat_rate/currency/4','string','2013-10-23 13:32:13','2013-10-28 11:02:12'),(6,'--- 15.0\n...\n','spree/calculator/shipping/flat_rate/amount/3','decimal','2013-10-23 13:32:13','2013-10-28 11:02:12'),(7,'--- USD\n...\n','spree/calculator/shipping/flat_rate/currency/3','string','2013-10-23 13:32:13','2013-10-28 11:02:12'),(8,'--- 10.0\n...\n','spree/calculator/shipping/flat_rate/amount/2','decimal','2013-10-23 13:32:13','2013-10-28 11:02:12'),(9,'--- USD\n...\n','spree/calculator/shipping/flat_rate/currency/2','string','2013-10-23 13:32:13','2013-10-28 11:02:12'),(10,'--- GBP\n...\n','spree/app_configuration/currency','string','2013-10-23 13:32:13','2013-10-28 11:08:26'),(11,'--- Crave\n...\n','spree/app_configuration/site_name','string','2013-10-23 13:52:51','2013-10-28 11:08:25'),(12,'--- Crave\n...\n','spree/app_configuration/default_seo_title','string','2013-10-23 13:52:51','2013-10-28 11:08:25'),(13,'--- crave, food, delivery\n...\n','spree/app_configuration/default_meta_keywords','string','2013-10-23 13:52:51','2013-10-28 11:08:25'),(14,'--- Crave Food\n...\n','spree/app_configuration/default_meta_description','string','2013-10-23 13:52:51','2013-10-28 11:08:26'),(15,'--- demo.spreecommerce.com\n...\n','spree/app_configuration/site_url','string','2013-10-23 13:52:51','2013-10-28 11:08:26'),(16,'--- true\n...\n','spree/app_configuration/allow_ssl_in_production','boolean','2013-10-23 13:52:51','2013-10-28 11:08:26'),(17,'--- true\n...\n','spree/app_configuration/allow_ssl_in_staging','boolean','2013-10-23 13:52:51','2013-10-28 11:08:26'),(18,'--- false\n...\n','spree/app_configuration/allow_ssl_in_development_and_test','boolean','2013-10-23 13:52:51','2013-10-28 11:08:26'),(19,'--- true\n...\n','spree/app_configuration/check_for_spree_alerts','boolean','2013-10-23 13:52:51','2013-10-28 11:08:26'),(20,'--- false\n...\n','spree/app_configuration/display_currency','boolean','2013-10-23 13:52:52','2013-10-28 11:08:26'),(21,'--- false\n...\n','spree/app_configuration/hide_cents','boolean','2013-10-23 13:52:52','2013-10-28 11:08:26'),(22,'--- before\n...\n','spree/app_configuration/currency_symbol_position','string','2013-10-23 13:52:52','2013-10-28 11:08:26'),(23,'--- .\n...\n','spree/app_configuration/currency_decimal_mark','string','2013-10-23 13:52:52','2013-10-28 11:08:26'),(24,'--- \',\'\n','spree/app_configuration/currency_thousands_separator','string','2013-10-23 13:52:52','2013-10-28 11:08:26'),(25,'--- logo/backend_logo.png\n...\n','spree/app_configuration/admin_interface_logo','string','2013-10-28 09:16:55','2013-10-28 09:16:55'),(26,'--- magesh_api1.atsquare.in\n...\n','spree/gateway/pay_pal_express/login/12','string','2013-10-31 15:59:51','2013-10-31 15:59:51'),(27,'--- \'1383234975\'\n','spree/gateway/pay_pal_express/password/12','string','2013-10-31 15:59:51','2013-10-31 15:59:51'),(28,'--- AXDRf6PmsmYE-SCk.en9ut2eidzZAVeCAbvl17DSSerdl1XXg.7Ayw.D\n...\n','spree/gateway/pay_pal_express/signature/12','string','2013-10-31 15:59:51','2013-10-31 15:59:51'),(29,'--- sandbox\n...\n','spree/gateway/pay_pal_express/server/12','string','2013-10-31 15:59:51','2013-10-31 15:59:51'),(30,'--- true\n...\n','spree/gateway/pay_pal_express/test_mode/12','boolean','2013-10-31 15:59:51','2013-10-31 15:59:51');
/*!40000 ALTER TABLE `spree_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prices`
--

DROP TABLE IF EXISTS `spree_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prices`
--

LOCK TABLES `spree_prices` WRITE;
/*!40000 ALTER TABLE `spree_prices` DISABLE KEYS */;
INSERT INTO `spree_prices` VALUES (1,1,15.99,'USD'),(2,1,14.00,'EUR'),(3,2,22.99,'USD'),(4,2,19.00,'EUR'),(5,3,19.99,'USD'),(6,3,16.00,'EUR'),(7,4,19.99,'USD'),(8,4,16.00,'EUR'),(9,5,19.99,'USD'),(10,5,16.00,'EUR'),(11,6,19.99,'USD'),(12,6,16.00,'EUR'),(13,7,19.99,'USD'),(14,7,16.00,'EUR'),(15,8,19.99,'USD'),(16,8,16.00,'EUR'),(17,9,19.99,'USD'),(18,9,16.00,'EUR'),(19,10,19.99,'USD'),(20,10,16.00,'EUR'),(21,11,15.99,'USD'),(22,11,14.00,'EUR'),(23,12,22.99,'USD'),(24,12,19.00,'EUR'),(25,13,13.99,'USD'),(26,13,12.00,'EUR'),(27,14,16.99,'USD'),(28,14,14.00,'EUR'),(29,15,16.99,'USD'),(30,15,14.00,'EUR'),(31,16,13.99,'USD'),(32,16,12.00,'EUR'),(33,17,19.99,'USD'),(34,18,19.99,'USD'),(35,19,19.99,'USD'),(36,20,19.99,'USD'),(37,21,19.99,'USD'),(38,22,19.99,'USD'),(39,23,19.99,'USD'),(40,24,19.99,'USD'),(41,25,19.99,'USD'),(42,26,19.99,'USD'),(43,7,107.00,'GBP'),(44,6,117.00,'GBP'),(45,2,21.00,'GBP'),(46,3,NULL,'GBP'),(47,4,NULL,'GBP'),(48,13,NULL,'GBP'),(49,5,NULL,'GBP'),(50,14,NULL,'GBP'),(51,1,NULL,'GBP'),(52,12,NULL,'GBP'),(53,8,NULL,'GBP'),(55,9,NULL,'GBP'),(56,16,NULL,'GBP'),(57,10,NULL,'GBP'),(58,15,NULL,'GBP'),(59,11,NULL,'GBP');
/*!40000 ALTER TABLE `spree_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_option_types`
--

DROP TABLE IF EXISTS `spree_product_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_option_types`
--

LOCK TABLES `spree_product_option_types` WRITE;
/*!40000 ALTER TABLE `spree_product_option_types` DISABLE KEYS */;
INSERT INTO `spree_product_option_types` VALUES (1,1,3,1,'2013-10-23 13:32:19','2013-10-23 13:32:19'),(2,2,3,2,'2013-10-23 13:32:19','2013-10-23 13:32:19'),(3,1,8,1,'2013-10-23 13:32:19','2013-10-23 13:32:19'),(4,2,8,2,'2013-10-23 13:32:19','2013-10-23 13:32:19');
/*!40000 ALTER TABLE `spree_product_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_properties`
--

DROP TABLE IF EXISTS `spree_product_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_properties`
--

LOCK TABLES `spree_product_properties` WRITE;
/*!40000 ALTER TABLE `spree_product_properties` DISABLE KEYS */;
INSERT INTO `spree_product_properties` VALUES (1,'Wilson',3,1,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(2,'Wannabe Sports',3,2,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(3,'JK1002',3,3,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(4,'Baseball Jersey',3,4,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(5,'Long',3,5,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(6,'100% cotton',3,6,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(7,'Loose',3,7,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(8,'Men\'s',3,8,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(9,'Jerseys',4,1,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(10,'Resiliance',4,2,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(11,'TL174',4,3,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(12,'Jr. Spaghetti T',4,4,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(13,'None',4,5,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(14,'90% Cotton, 10% Nylon',4,6,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(15,'Form',4,7,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(16,'Women\'s',4,8,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(17,'Jerseys',5,1,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(18,'Conditioned',5,2,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(19,'TL9002',5,3,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(20,'Ringer T',5,4,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(21,'Short',5,5,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(22,'100% Vellum',5,6,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(23,'Loose',5,7,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(24,'Men\'s',5,8,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(25,'Tote',1,9,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(26,'15\" x 18\" x 6\"',1,10,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(27,'Canvas',1,11,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(28,'Messenger',2,9,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(29,'14 1/2\" x 12\" x 5\"',2,10,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(30,'600 Denier Polyester',2,11,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(31,'Mug',13,9,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(32,'4.5\" tall, 3.25\" dia.',13,10,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(33,'Stein',14,9,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(34,'6.75\" tall, 3.75\" dia. base, 3\" dia. rim',14,10,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(35,'Stein',15,9,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(36,'6.75\" tall, 3.75\" dia. base, 3\" dia. rim',15,10,'2013-10-23 13:32:19','2013-10-23 13:32:19',0),(37,'Mug',16,9,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(38,'4.5\" tall, 3.25\" dia.',16,10,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(39,'Tote',11,9,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(40,'15\" x 18\" x 6\"',11,10,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(41,'Messenger',12,9,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(42,'14 1/2\" x 12\" x 5\"',12,10,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(43,'Wilson',8,1,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(44,'Wannabe Sports',8,2,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(45,'JK1002',8,3,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(46,'Baseball Jersey',8,4,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(47,'Long',8,5,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(48,'100% cotton',8,6,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(49,'Loose',8,7,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(50,'Men\'s',8,8,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(51,'Jerseys',9,1,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(52,'Resiliance',9,2,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(53,'TL174',9,3,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(54,'Jr. Spaghetti T',9,4,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(55,'None',9,5,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(56,'90% Cotton, 10% Nylon',9,6,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(57,'Form',9,7,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(58,'Women\'s',9,8,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(59,'Jerseys',10,1,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(60,'Conditioned',10,2,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(61,'TL9002',10,3,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(62,'Ringer T',10,4,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(63,'Short',10,5,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(64,'100% Vellum',10,6,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(65,'Loose',10,7,'2013-10-23 13:32:20','2013-10-23 13:32:20',0),(66,'Men\'s',10,8,'2013-10-23 13:32:20','2013-10-23 13:32:20',0);
/*!40000 ALTER TABLE `spree_product_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products`
--

DROP TABLE IF EXISTS `spree_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `available_on` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permalink_idx_unique` (`permalink`),
  KEY `index_spree_products_on_available_on` (`available_on`),
  KEY `index_spree_products_on_deleted_at` (`deleted_at`),
  KEY `index_spree_products_on_name` (`name`),
  KEY `index_spree_products_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products`
--

LOCK TABLES `spree_products` WRITE;
/*!40000 ALTER TABLE `spree_products` DISABLE KEYS */;
INSERT INTO `spree_products` VALUES (1,'Ruby on Rails Tote','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'ruby-on-rails-tote',NULL,NULL,1,1,'2013-10-23 13:32:14','2013-10-23 13:32:44'),(2,'Ruby on Rails Bag','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 00:00:00',NULL,'ruby-on-rails-bag','','',1,1,'2013-10-23 13:32:14','2013-10-29 06:53:38'),(3,'Ruby on Rails Baseball Jersey','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'ruby-on-rails-baseball-jersey',NULL,NULL,1,1,'2013-10-23 13:32:14','2013-10-23 13:32:47'),(4,'Ruby on Rails Jr. Spaghetti','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'ruby-on-rails-jr-spaghetti',NULL,NULL,1,1,'2013-10-23 13:32:15','2013-10-23 13:32:48'),(5,'Ruby on Rails Ringer T-Shirt','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'ruby-on-rails-ringer-t-shirt',NULL,NULL,1,1,'2013-10-23 13:32:15','2013-10-23 13:32:52'),(6,'Tandoori chicken ','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 00:00:00',NULL,'tandoori','','',1,1,'2013-10-23 13:32:15','2013-10-24 16:27:06'),(7,'Barbeque Chicken','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-28 00:00:00',NULL,'apache-baseball-jersey','','',1,1,'2013-10-23 13:32:15','2013-10-28 09:44:36'),(8,'Spree Baseball Jersey','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'spree-baseball-jersey',NULL,NULL,1,1,'2013-10-23 13:32:15','2013-10-23 13:33:03'),(9,'Spree Jr. Spaghetti','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'spree-jr-spaghetti',NULL,NULL,1,1,'2013-10-23 13:32:15','2013-10-23 13:33:01'),(10,'Spree Ringer T-Shirt','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'spree-ringer-t-shirt',NULL,NULL,1,1,'2013-10-23 13:32:15','2013-10-23 13:33:01'),(11,'Spree Tote','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'spree-tote',NULL,NULL,1,1,'2013-10-23 13:32:15','2013-10-23 13:32:58'),(12,'Spree Bag','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'spree-bag',NULL,NULL,1,1,'2013-10-23 13:32:16','2013-10-23 13:32:56'),(13,'Ruby on Rails Mug','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'ruby-on-rails-mug',NULL,NULL,NULL,1,'2013-10-23 13:32:16','2013-10-23 13:32:50'),(14,'Ruby on Rails Stein','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'ruby-on-rails-stein',NULL,NULL,NULL,1,'2013-10-23 13:32:16','2013-10-23 13:32:53'),(15,'Spree Stein','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'spree-stein',NULL,NULL,NULL,1,'2013-10-23 13:32:17','2013-10-23 13:33:05'),(16,'Spree Mug','Rem et officia sed enim aut. Voluptatem placeat quia ipsam iste quia. Quod exercitationem aspernatur in tempora qui facere doloribus. Nam cupiditate eos et atque ipsum quae voluptatem. Unde id dolore aspernatur impedit tenetur non.','2013-10-23 13:32:13',NULL,'spree-mug',NULL,NULL,NULL,1,'2013-10-23 13:32:17','2013-10-23 13:33:07');
/*!40000 ALTER TABLE `spree_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_promotion_rules`
--

DROP TABLE IF EXISTS `spree_products_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_promotion_rules` (
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_promotion_rules`
--

LOCK TABLES `spree_products_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_products_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_products_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_taxons`
--

DROP TABLE IF EXISTS `spree_products_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_taxons` (
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `index_spree_products_taxons_on_product_id` (`product_id`),
  KEY `index_spree_products_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_taxons`
--

LOCK TABLES `spree_products_taxons` WRITE;
/*!40000 ALTER TABLE `spree_products_taxons` DISABLE KEYS */;
INSERT INTO `spree_products_taxons` VALUES (1,3,1),(2,3,2),(11,3,3),(12,3,4),(13,4,5),(14,4,6),(15,4,7),(16,4,8),(4,6,9),(9,6,10),(3,7,11),(5,7,12),(7,7,13),(6,7,14),(8,7,15),(10,7,16);
/*!40000 ALTER TABLE `spree_products_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_action_line_items`
--

DROP TABLE IF EXISTS `spree_promotion_action_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_action_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_action_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_action_line_items`
--

LOCK TABLES `spree_promotion_action_line_items` WRITE;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_actions`
--

DROP TABLE IF EXISTS `spree_promotion_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_actions`
--

LOCK TABLES `spree_promotion_actions` WRITE;
/*!40000 ALTER TABLE `spree_promotion_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules`
--

DROP TABLE IF EXISTS `spree_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_on_product_group_id` (`product_group_id`),
  KEY `index_promotion_rules_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules`
--

LOCK TABLES `spree_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules_users`
--

DROP TABLE IF EXISTS `spree_promotion_rules_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`),
  KEY `index_promotion_rules_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules_users`
--

LOCK TABLES `spree_promotion_rules_users` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties`
--

DROP TABLE IF EXISTS `spree_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties`
--

LOCK TABLES `spree_properties` WRITE;
/*!40000 ALTER TABLE `spree_properties` DISABLE KEYS */;
INSERT INTO `spree_properties` VALUES (1,'Manufacturer','Manufacturer','2013-10-23 13:32:19','2013-10-23 13:32:19'),(2,'Brand','Brand','2013-10-23 13:32:19','2013-10-23 13:32:19'),(3,'Model','Model','2013-10-23 13:32:19','2013-10-23 13:32:19'),(4,'Shirt Type','Shirt Type','2013-10-23 13:32:19','2013-10-23 13:32:19'),(5,'Sleeve Type','Sleeve Type','2013-10-23 13:32:19','2013-10-23 13:32:19'),(6,'Made from','Made from','2013-10-23 13:32:19','2013-10-23 13:32:19'),(7,'Fit','Fit','2013-10-23 13:32:19','2013-10-23 13:32:19'),(8,'Gender','Gender','2013-10-23 13:32:19','2013-10-23 13:32:19'),(9,'Type','Type','2013-10-23 13:32:19','2013-10-23 13:32:19'),(10,'Size','Size','2013-10-23 13:32:19','2013-10-23 13:32:19'),(11,'Material','Material','2013-10-23 13:32:19','2013-10-23 13:32:19');
/*!40000 ALTER TABLE `spree_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties_prototypes`
--

DROP TABLE IF EXISTS `spree_properties_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties_prototypes`
--

LOCK TABLES `spree_properties_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_properties_prototypes` DISABLE KEYS */;
INSERT INTO `spree_properties_prototypes` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,11),(1,7),(1,8),(2,9),(2,10),(2,11),(3,10),(3,9);
/*!40000 ALTER TABLE `spree_properties_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prototypes`
--

DROP TABLE IF EXISTS `spree_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prototypes`
--

LOCK TABLES `spree_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_prototypes` DISABLE KEYS */;
INSERT INTO `spree_prototypes` VALUES (1,'Shirt','2013-10-23 13:32:20','2013-10-23 13:32:20'),(2,'Bag','2013-10-23 13:32:20','2013-10-23 13:32:20'),(3,'Mugs','2013-10-23 13:32:20','2013-10-23 13:32:20');
/*!40000 ALTER TABLE `spree_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_authorizations`
--

DROP TABLE IF EXISTS `spree_return_authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_authorizations`
--

LOCK TABLES `spree_return_authorizations` WRITE;
/*!40000 ALTER TABLE `spree_return_authorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_return_authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles`
--

DROP TABLE IF EXISTS `spree_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles`
--

LOCK TABLES `spree_roles` WRITE;
/*!40000 ALTER TABLE `spree_roles` DISABLE KEYS */;
INSERT INTO `spree_roles` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `spree_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles_users`
--

DROP TABLE IF EXISTS `spree_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_spree_roles_users_on_role_id` (`role_id`),
  KEY `index_spree_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles_users`
--

LOCK TABLES `spree_roles_users` WRITE;
/*!40000 ALTER TABLE `spree_roles_users` DISABLE KEYS */;
INSERT INTO `spree_roles_users` VALUES (1,1);
/*!40000 ALTER TABLE `spree_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipments`
--

DROP TABLE IF EXISTS `spree_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipments_on_number` (`number`),
  KEY `index_spree_shipments_on_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipments`
--

LOCK TABLES `spree_shipments` WRITE;
/*!40000 ALTER TABLE `spree_shipments` DISABLE KEYS */;
INSERT INTO `spree_shipments` VALUES (1,NULL,'H01752285861',NULL,NULL,1,NULL,'pending','2013-10-23 13:33:08','2013-10-23 13:33:08',1),(2,NULL,'H48633511313',NULL,NULL,2,NULL,'pending','2013-10-23 13:33:09','2013-10-23 13:33:09',1),(7,NULL,'H02257157607',NULL,NULL,5,NULL,'pending','2013-10-28 08:53:33','2013-10-28 08:53:33',1),(8,NULL,'H58857050472',NULL,NULL,11,NULL,'pending','2013-10-31 11:59:38','2013-10-31 11:59:38',1);
/*!40000 ALTER TABLE `spree_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_categories`
--

DROP TABLE IF EXISTS `spree_shipping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_categories`
--

LOCK TABLES `spree_shipping_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_categories` VALUES (1,'Default','2013-10-23 13:31:30','2013-10-23 13:31:30'),(2,'Default','2013-10-23 13:32:12','2013-10-23 13:32:12'),(3,'Default','2013-10-28 11:02:11','2013-10-28 11:02:11');
/*!40000 ALTER TABLE `spree_shipping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_method_categories`
--

DROP TABLE IF EXISTS `spree_shipping_method_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_method_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_category_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_shipping_method_categories_on_shipping_method_id` (`shipping_method_id`),
  KEY `index_spree_shipping_method_categories_on_shipping_category_id` (`shipping_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_method_categories`
--

LOCK TABLES `spree_shipping_method_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_method_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_method_categories` VALUES (1,1,1,'2013-10-23 13:32:12','2013-10-23 13:32:12'),(2,2,1,'2013-10-23 13:32:12','2013-10-23 13:32:12'),(3,3,1,'2013-10-23 13:32:12','2013-10-23 13:32:12'),(4,4,1,'2013-10-23 13:32:12','2013-10-23 13:32:12'),(5,1,1,'2013-10-23 13:32:13','2013-10-23 13:32:13'),(6,4,1,'2013-10-23 13:32:13','2013-10-23 13:32:13'),(7,3,1,'2013-10-23 13:32:13','2013-10-23 13:32:13'),(8,2,1,'2013-10-23 13:32:13','2013-10-23 13:32:13'),(9,5,1,'2013-10-28 08:53:19','2013-10-28 08:53:19'),(10,5,2,'2013-10-28 08:53:19','2013-10-28 08:53:19'),(11,6,1,'2013-10-28 11:02:11','2013-10-28 11:02:11'),(12,7,1,'2013-10-28 11:02:11','2013-10-28 11:02:11'),(13,8,1,'2013-10-28 11:02:11','2013-10-28 11:02:11'),(14,9,1,'2013-10-28 11:02:11','2013-10-28 11:02:11'),(15,1,1,'2013-10-28 11:02:11','2013-10-28 11:02:11'),(16,4,1,'2013-10-28 11:02:12','2013-10-28 11:02:12'),(17,3,1,'2013-10-28 11:02:12','2013-10-28 11:02:12'),(18,2,1,'2013-10-28 11:02:12','2013-10-28 11:02:12');
/*!40000 ALTER TABLE `spree_shipping_method_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods`
--

DROP TABLE IF EXISTS `spree_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tracking_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods`
--

LOCK TABLES `spree_shipping_methods` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods` VALUES (1,'UPS Ground (USD)',NULL,NULL,'2013-10-23 13:32:12','2013-10-23 13:32:12',NULL,NULL),(2,'UPS Two Day (USD)',NULL,NULL,'2013-10-23 13:32:12','2013-10-23 13:32:12',NULL,NULL),(3,'UPS One Day (USD)',NULL,NULL,'2013-10-23 13:32:12','2013-10-23 13:32:12',NULL,NULL),(4,'UPS Ground (EUR)',NULL,NULL,'2013-10-23 13:32:12','2013-10-23 13:32:12',NULL,NULL),(5,'FedEx','',NULL,'2013-10-28 08:53:19','2013-10-28 08:53:19','','FedEx India'),(6,'UPS Ground (USD)',NULL,NULL,'2013-10-28 11:02:11','2013-10-28 11:02:11',NULL,NULL),(7,'UPS Two Day (USD)',NULL,NULL,'2013-10-28 11:02:11','2013-10-28 11:02:11',NULL,NULL),(8,'UPS One Day (USD)',NULL,NULL,'2013-10-28 11:02:11','2013-10-28 11:02:11',NULL,NULL),(9,'UPS Ground (EUR)',NULL,NULL,'2013-10-28 11:02:11','2013-10-28 11:02:11',NULL,NULL);
/*!40000 ALTER TABLE `spree_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods_zones`
--

DROP TABLE IF EXISTS `spree_shipping_methods_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods_zones` (
  `shipping_method_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods_zones`
--

LOCK TABLES `spree_shipping_methods_zones` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods_zones` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods_zones` VALUES (1,2),(2,2),(3,2),(4,1),(5,3),(6,2),(7,2),(8,2),(9,1);
/*!40000 ALTER TABLE `spree_shipping_methods_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_rates`
--

DROP TABLE IF EXISTS `spree_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `selected` tinyint(1) DEFAULT '0',
  `cost` decimal(8,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `spree_shipping_rates_join_index` (`shipment_id`,`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_rates`
--

LOCK TABLES `spree_shipping_rates` WRITE;
/*!40000 ALTER TABLE `spree_shipping_rates` DISABLE KEYS */;
INSERT INTO `spree_shipping_rates` VALUES (1,1,1,1,5.00,'2013-10-23 13:33:08','2013-10-23 13:33:08'),(2,1,2,0,10.00,'2013-10-23 13:33:08','2013-10-23 13:33:08'),(3,1,3,0,15.00,'2013-10-23 13:33:08','2013-10-23 13:33:08'),(4,2,1,1,5.00,'2013-10-23 13:33:09','2013-10-23 13:33:09'),(5,2,2,0,10.00,'2013-10-23 13:33:09','2013-10-23 13:33:09'),(6,2,3,0,15.00,'2013-10-23 13:33:09','2013-10-23 13:33:09'),(7,7,5,1,0.00,'2013-10-28 08:53:33','2013-10-28 08:54:28'),(8,8,5,1,0.00,'2013-10-31 11:59:38','2013-10-31 11:59:49');
/*!40000 ALTER TABLE `spree_shipping_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_state_changes`
--

DROP TABLE IF EXISTS `spree_state_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_state_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previous_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stateful_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_state_changes`
--

LOCK TABLES `spree_state_changes` WRITE;
/*!40000 ALTER TABLE `spree_state_changes` DISABLE KEYS */;
INSERT INTO `spree_state_changes` VALUES (1,'payment',NULL,1,NULL,'Spree::Order','balance_due','2013-10-23 13:33:09','2013-10-23 13:33:09'),(2,'shipment',NULL,1,NULL,'Spree::Order','pending','2013-10-23 13:33:09','2013-10-23 13:33:09'),(3,'payment',NULL,2,NULL,'Spree::Order','balance_due','2013-10-23 13:33:09','2013-10-23 13:33:09'),(4,'shipment',NULL,2,NULL,'Spree::Order','pending','2013-10-23 13:33:09','2013-10-23 13:33:09'),(5,'payment','balance_due',1,NULL,'Spree::Order','balance_due','2013-10-23 13:33:09','2013-10-23 13:33:09'),(6,'shipment','pending',1,NULL,'Spree::Order','pending','2013-10-23 13:33:09','2013-10-23 13:33:09'),(7,'payment','balance_due',2,NULL,'Spree::Order','balance_due','2013-10-23 13:33:09','2013-10-23 13:33:09'),(8,'shipment','pending',2,NULL,'Spree::Order','pending','2013-10-23 13:33:09','2013-10-23 13:33:09'),(9,'payment','balance_due',1,NULL,'Spree::Order','balance_due','2013-10-23 13:33:09','2013-10-23 13:33:09'),(10,'shipment','pending',1,NULL,'Spree::Order','pending','2013-10-23 13:33:09','2013-10-23 13:33:09'),(11,'payment','balance_due',1,NULL,'Spree::Order','balance_due','2013-10-23 13:33:10','2013-10-23 13:33:10'),(12,'shipment','pending',1,NULL,'Spree::Order','pending','2013-10-23 13:33:10','2013-10-23 13:33:10'),(13,'payment','balance_due',2,NULL,'Spree::Order','balance_due','2013-10-23 13:33:10','2013-10-23 13:33:10'),(14,'shipment','pending',2,NULL,'Spree::Order','pending','2013-10-23 13:33:10','2013-10-23 13:33:10'),(15,'payment','balance_due',2,NULL,'Spree::Order','balance_due','2013-10-23 13:33:10','2013-10-23 13:33:10'),(16,'shipment','pending',2,NULL,'Spree::Order','pending','2013-10-23 13:33:10','2013-10-23 13:33:10'),(17,'order','cart',4,1,'Spree::Order','address','2013-10-24 15:52:36','2013-10-24 15:52:36'),(18,'order','cart',5,NULL,'Spree::Order','address','2013-10-28 07:44:19','2013-10-28 07:44:19'),(19,'order','address',5,2,'Spree::Order','delivery','2013-10-28 08:53:33','2013-10-28 08:53:33'),(20,'order','delivery',5,2,'Spree::Order','payment','2013-10-28 08:54:28','2013-10-28 08:54:28'),(21,'order','payment',5,2,'Spree::Order','complete','2013-10-28 08:57:13','2013-10-28 08:57:13'),(22,'payment',NULL,5,2,'Spree::Order','balance_due','2013-10-28 08:57:13','2013-10-28 08:57:13'),(23,'shipment',NULL,5,2,'Spree::Order','pending','2013-10-28 08:57:13','2013-10-28 08:57:13'),(24,'order','cart',11,1,'Spree::Order','address','2013-10-31 10:59:01','2013-10-31 10:59:01'),(25,'order','cart',11,1,'Spree::Order','address','2013-10-31 11:59:10','2013-10-31 11:59:10'),(26,'order','address',11,1,'Spree::Order','delivery','2013-10-31 11:59:39','2013-10-31 11:59:39'),(27,'order','delivery',11,1,'Spree::Order','payment','2013-10-31 11:59:50','2013-10-31 11:59:50');
/*!40000 ALTER TABLE `spree_state_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_states`
--

DROP TABLE IF EXISTS `spree_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_states`
--

LOCK TABLES `spree_states` WRITE;
/*!40000 ALTER TABLE `spree_states` DISABLE KEYS */;
INSERT INTO `spree_states` VALUES (1,'Michigan','MI',49,'2013-10-23 13:31:44'),(2,'South Dakota','SD',49,'2013-10-23 13:31:44'),(3,'Washington','WA',49,'2013-10-23 13:31:44'),(4,'Wisconsin','WI',49,'2013-10-23 13:31:44'),(5,'Arizona','AZ',49,'2013-10-23 13:31:44'),(6,'Illinois','IL',49,'2013-10-23 13:31:44'),(7,'New Hampshire','NH',49,'2013-10-23 13:31:44'),(8,'North Carolina','NC',49,'2013-10-23 13:31:44'),(9,'Kansas','KS',49,'2013-10-23 13:31:44'),(10,'Missouri','MO',49,'2013-10-23 13:31:44'),(11,'Arkansas','AR',49,'2013-10-23 13:31:44'),(12,'Nevada','NV',49,'2013-10-23 13:31:44'),(13,'District of Columbia','DC',49,'2013-10-23 13:31:44'),(14,'Idaho','ID',49,'2013-10-23 13:31:44'),(15,'Nebraska','NE',49,'2013-10-23 13:31:44'),(16,'Pennsylvania','PA',49,'2013-10-23 13:31:44'),(17,'Hawaii','HI',49,'2013-10-23 13:31:44'),(18,'Utah','UT',49,'2013-10-23 13:31:44'),(19,'Vermont','VT',49,'2013-10-23 13:31:44'),(20,'Delaware','DE',49,'2013-10-23 13:31:44'),(21,'Rhode Island','RI',49,'2013-10-23 13:31:44'),(22,'Oklahoma','OK',49,'2013-10-23 13:31:44'),(23,'Louisiana','LA',49,'2013-10-23 13:31:44'),(24,'Montana','MT',49,'2013-10-23 13:31:44'),(25,'Tennessee','TN',49,'2013-10-23 13:31:44'),(26,'Maryland','MD',49,'2013-10-23 13:31:44'),(27,'Florida','FL',49,'2013-10-23 13:31:44'),(28,'Virginia','VA',49,'2013-10-23 13:31:44'),(29,'Minnesota','MN',49,'2013-10-23 13:31:44'),(30,'New Jersey','NJ',49,'2013-10-23 13:31:44'),(31,'Ohio','OH',49,'2013-10-23 13:31:44'),(32,'California','CA',49,'2013-10-23 13:31:44'),(33,'North Dakota','ND',49,'2013-10-23 13:31:44'),(34,'Maine','ME',49,'2013-10-23 13:31:44'),(35,'Indiana','IN',49,'2013-10-23 13:31:44'),(36,'Texas','TX',49,'2013-10-23 13:31:45'),(37,'Oregon','OR',49,'2013-10-23 13:31:45'),(38,'Wyoming','WY',49,'2013-10-23 13:31:45'),(39,'Alabama','AL',49,'2013-10-23 13:31:45'),(40,'Iowa','IA',49,'2013-10-23 13:31:45'),(41,'Mississippi','MS',49,'2013-10-23 13:31:45'),(42,'Kentucky','KY',49,'2013-10-23 13:31:45'),(43,'New Mexico','NM',49,'2013-10-23 13:31:45'),(44,'Georgia','GA',49,'2013-10-23 13:31:45'),(45,'Colorado','CO',49,'2013-10-23 13:31:45'),(46,'Massachusetts','MA',49,'2013-10-23 13:31:45'),(47,'Connecticut','CT',49,'2013-10-23 13:31:45'),(48,'New York','NY',49,'2013-10-23 13:31:45'),(49,'South Carolina','SC',49,'2013-10-23 13:31:45'),(50,'Alaska','AK',49,'2013-10-23 13:31:45'),(51,'West Virginia','WV',49,'2013-10-23 13:31:45'),(52,'U.S. Armed Forces - Americas','AA',49,'2013-10-23 13:31:45'),(53,'U.S. Armed Forces - Europe','AE',49,'2013-10-23 13:31:45'),(54,'U.S. Armed Forces - Pacific','AP',49,'2013-10-23 13:31:45');
/*!40000 ALTER TABLE `spree_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_items`
--

DROP TABLE IF EXISTS `spree_stock_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_location_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `backorderable` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_items_on_stock_location_id` (`stock_location_id`),
  KEY `stock_item_by_loc_and_var_id` (`stock_location_id`,`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_items`
--

LOCK TABLES `spree_stock_items` WRITE;
/*!40000 ALTER TABLE `spree_stock_items` DISABLE KEYS */;
INSERT INTO `spree_stock_items` VALUES (1,1,1,10,'2013-10-23 13:32:14','2013-10-23 13:32:22',1,NULL),(2,1,2,10,'2013-10-23 13:32:14','2013-10-23 13:32:22',1,NULL),(3,1,3,10,'2013-10-23 13:32:14','2013-10-23 13:32:22',1,NULL),(4,1,4,10,'2013-10-23 13:32:15','2013-10-23 13:32:22',1,NULL),(5,1,5,10,'2013-10-23 13:32:15','2013-10-23 13:32:22',1,NULL),(6,1,6,10,'2013-10-23 13:32:15','2013-10-23 13:32:22',1,NULL),(7,1,7,9,'2013-10-23 13:32:15','2013-10-28 09:31:00',0,NULL),(8,1,8,10,'2013-10-23 13:32:15','2013-10-23 13:32:22',1,NULL),(9,1,9,10,'2013-10-23 13:32:15','2013-10-23 13:32:22',1,NULL),(10,1,10,10,'2013-10-23 13:32:15','2013-10-23 13:32:22',1,NULL),(11,1,11,10,'2013-10-23 13:32:15','2013-10-23 13:32:22',1,NULL),(12,1,12,10,'2013-10-23 13:32:16','2013-10-23 13:32:22',1,NULL),(13,1,13,10,'2013-10-23 13:32:16','2013-10-23 13:32:22',1,NULL),(14,1,14,10,'2013-10-23 13:32:16','2013-10-23 13:32:22',1,NULL),(15,1,15,10,'2013-10-23 13:32:17','2013-10-23 13:32:22',1,NULL),(16,1,16,10,'2013-10-23 13:32:17','2013-10-23 13:32:22',1,NULL),(17,1,17,10,'2013-10-23 13:32:21','2013-10-23 13:32:22',1,NULL),(18,1,18,10,'2013-10-23 13:32:21','2013-10-23 13:32:22',1,NULL),(19,1,19,10,'2013-10-23 13:32:21','2013-10-23 13:32:22',1,NULL),(20,1,20,10,'2013-10-23 13:32:21','2013-10-23 13:32:22',1,NULL),(21,1,21,10,'2013-10-23 13:32:21','2013-10-23 13:32:22',1,NULL),(22,1,22,10,'2013-10-23 13:32:21','2013-10-23 13:32:22',1,NULL),(23,1,23,10,'2013-10-23 13:32:21','2013-10-23 13:32:22',1,NULL),(24,1,24,10,'2013-10-23 13:32:21','2013-10-23 13:32:23',1,NULL),(25,1,25,10,'2013-10-23 13:32:21','2013-10-23 13:32:23',1,NULL),(26,1,26,10,'2013-10-23 13:32:21','2013-10-23 13:32:23',1,NULL);
/*!40000 ALTER TABLE `spree_stock_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_locations`
--

DROP TABLE IF EXISTS `spree_stock_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `backorderable_default` tinyint(1) DEFAULT '0',
  `propagate_all_variants` tinyint(1) DEFAULT '1',
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_locations`
--

LOCK TABLES `spree_stock_locations` WRITE;
/*!40000 ALTER TABLE `spree_stock_locations` DISABLE KEYS */;
INSERT INTO `spree_stock_locations` VALUES (1,'default','2013-10-23 13:31:15','2013-10-23 13:32:21',NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,1,1,1,NULL);
/*!40000 ALTER TABLE `spree_stock_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_movements`
--

DROP TABLE IF EXISTS `spree_stock_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_movements_on_stock_item_id` (`stock_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_movements`
--

LOCK TABLES `spree_stock_movements` WRITE;
/*!40000 ALTER TABLE `spree_stock_movements` DISABLE KEYS */;
INSERT INTO `spree_stock_movements` VALUES (1,1,10,NULL,'2013-10-23 13:32:21','2013-10-23 13:32:21',NULL,NULL),(2,2,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(3,3,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(4,4,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(5,5,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(6,6,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(7,7,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(8,8,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(9,9,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(10,10,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(11,11,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(12,12,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(13,13,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(14,14,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(15,15,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(16,16,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(17,17,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(18,18,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(19,19,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(20,20,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(21,21,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(22,22,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(23,23,10,NULL,'2013-10-23 13:32:22','2013-10-23 13:32:22',NULL,NULL),(24,24,10,NULL,'2013-10-23 13:32:23','2013-10-23 13:32:23',NULL,NULL),(25,25,10,NULL,'2013-10-23 13:32:23','2013-10-23 13:32:23',NULL,NULL),(26,26,10,NULL,'2013-10-23 13:32:23','2013-10-23 13:32:23',NULL,NULL),(27,7,-1,NULL,'2013-10-28 08:57:13','2013-10-28 08:57:13',7,'Spree::Shipment');
/*!40000 ALTER TABLE `spree_stock_movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_transfers`
--

DROP TABLE IF EXISTS `spree_stock_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_location_id` int(11) DEFAULT NULL,
  `destination_location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_transfers_on_number` (`number`),
  KEY `index_spree_stock_transfers_on_source_location_id` (`source_location_id`),
  KEY `index_spree_stock_transfers_on_destination_location_id` (`destination_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_transfers`
--

LOCK TABLES `spree_stock_transfers` WRITE;
/*!40000 ALTER TABLE `spree_stock_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_stock_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_categories`
--

DROP TABLE IF EXISTS `spree_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_categories`
--

LOCK TABLES `spree_tax_categories` WRITE;
/*!40000 ALTER TABLE `spree_tax_categories` DISABLE KEYS */;
INSERT INTO `spree_tax_categories` VALUES (1,'Clothing',NULL,0,NULL,'2013-10-23 13:32:13','2013-10-23 13:32:13'),(2,'Food',NULL,0,NULL,'2013-10-23 13:32:13','2013-10-23 13:32:13');
/*!40000 ALTER TABLE `spree_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_rates`
--

DROP TABLE IF EXISTS `spree_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,5) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `included_in_price` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_rate_in_label` tinyint(1) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_rates`
--

LOCK TABLES `spree_tax_rates` WRITE;
/*!40000 ALTER TABLE `spree_tax_rates` DISABLE KEYS */;
INSERT INTO `spree_tax_rates` VALUES (1,0.05000,2,1,0,'2013-10-23 13:32:13','2013-10-23 13:32:13','North America',1,NULL);
/*!40000 ALTER TABLE `spree_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxonomies`
--

DROP TABLE IF EXISTS `spree_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxonomies`
--

LOCK TABLES `spree_taxonomies` WRITE;
/*!40000 ALTER TABLE `spree_taxonomies` DISABLE KEYS */;
INSERT INTO `spree_taxonomies` VALUES (1,'Categories','2013-10-23 13:32:17','2013-10-23 13:32:18',0),(2,'Brand','2013-10-23 13:32:17','2013-10-23 13:32:18',0);
/*!40000 ALTER TABLE `spree_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons`
--

DROP TABLE IF EXISTS `spree_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons`
--

LOCK TABLES `spree_taxons` WRITE;
/*!40000 ALTER TABLE `spree_taxons` DISABLE KEYS */;
INSERT INTO `spree_taxons` VALUES (1,NULL,0,'Categories','categories',1,1,12,NULL,NULL,NULL,NULL,NULL,'2013-10-23 13:32:17','2013-10-23 13:32:17',NULL,NULL,NULL,0),(2,NULL,0,'Brand','brand',2,13,22,NULL,NULL,NULL,NULL,NULL,'2013-10-23 13:32:17','2013-10-23 13:32:17',NULL,NULL,NULL,0),(3,1,1,'Bags','categories/bags',1,2,3,NULL,NULL,NULL,NULL,NULL,'2013-10-23 13:32:17','2013-10-23 13:32:17',NULL,NULL,NULL,1),(4,1,2,'Mugs','categories/mugs',1,4,5,NULL,NULL,NULL,NULL,NULL,'2013-10-23 13:32:18','2013-10-23 13:32:18',NULL,NULL,NULL,1),(5,1,0,'Clothing','categories/clothing',1,6,11,NULL,NULL,NULL,NULL,NULL,'2013-10-23 13:32:18','2013-10-23 13:32:18',NULL,NULL,NULL,1),(6,5,0,'Shirts','categories/clothing/shirts',1,7,8,NULL,NULL,NULL,NULL,NULL,'2013-10-23 13:32:18','2013-10-23 13:32:18',NULL,NULL,NULL,2),(7,5,0,'T-Shirts','categories/clothing/t-shirts',1,9,10,NULL,NULL,NULL,NULL,NULL,'2013-10-23 13:32:18','2013-10-23 13:32:18',NULL,NULL,NULL,2),(8,2,0,'Ruby','brand/ruby',2,14,15,NULL,NULL,NULL,NULL,NULL,'2013-10-23 13:32:18','2013-10-23 13:32:18',NULL,NULL,NULL,1),(9,2,0,'Apache','brand/apache',2,16,17,NULL,NULL,NULL,NULL,NULL,'2013-10-23 13:32:18','2013-10-23 13:32:18',NULL,NULL,NULL,1),(10,2,0,'Spree','brand/spree',2,18,19,NULL,NULL,NULL,NULL,NULL,'2013-10-23 13:32:18','2013-10-23 13:32:18',NULL,NULL,NULL,1),(11,2,0,'Rails','brand/rails',2,20,21,NULL,NULL,NULL,NULL,NULL,'2013-10-23 13:32:18','2013-10-23 13:32:18',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `spree_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tokenized_permissions`
--

DROP TABLE IF EXISTS `spree_tokenized_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tokenized_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissable_id` int(11) DEFAULT NULL,
  `permissable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokenized_name_and_type` (`permissable_id`,`permissable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tokenized_permissions`
--

LOCK TABLES `spree_tokenized_permissions` WRITE;
/*!40000 ALTER TABLE `spree_tokenized_permissions` DISABLE KEYS */;
INSERT INTO `spree_tokenized_permissions` VALUES (1,1,'Spree::Order','e70c226a12802ad5','2013-10-23 13:33:07','2013-10-23 13:33:07'),(2,2,'Spree::Order','ea04ff8f1c15e190','2013-10-23 13:33:08','2013-10-23 13:33:08'),(3,3,'Spree::Order','0db3cbe996c08b49','2013-10-23 13:50:11','2013-10-23 13:50:11'),(4,4,'Spree::Order','09dc4eeb5ce1ac58','2013-10-23 14:51:19','2013-10-23 14:51:19'),(5,5,'Spree::Order','dd87f64578f8f1ec','2013-10-28 07:44:13','2013-10-28 07:44:13'),(6,6,'Spree::Order','aafbd22faae73d83','2013-10-28 08:57:14','2013-10-28 08:57:14'),(7,7,'Spree::Order','9c44f6aabd865889','2013-10-28 11:04:48','2013-10-28 11:04:48'),(8,8,'Spree::Order','416e114b032608da','2013-10-28 11:08:36','2013-10-28 11:08:36'),(9,9,'Spree::Order','2d742d5256e0d00d','2013-10-28 17:10:45','2013-10-28 17:10:45'),(10,10,'Spree::Order','1ff18dfd97bec484','2013-10-29 06:52:18','2013-10-29 06:52:18'),(11,11,'Spree::Order','9156fc215eb7a027','2013-10-31 10:50:50','2013-10-31 10:50:50');
/*!40000 ALTER TABLE `spree_tokenized_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_trackers`
--

DROP TABLE IF EXISTS `spree_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `analytics_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_trackers`
--

LOCK TABLES `spree_trackers` WRITE;
/*!40000 ALTER TABLE `spree_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_users`
--

DROP TABLE IF EXISTS `spree_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `authentication_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unlock_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `spree_api_key` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx_unique` (`email`),
  KEY `index_spree_users_on_spree_api_key` (`spree_api_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_users`
--

LOCK TABLES `spree_users` WRITE;
/*!40000 ALTER TABLE `spree_users` DISABLE KEYS */;
INSERT INTO `spree_users` VALUES (1,'9f380e76c8e62349ffa4b8387a7ebe3d575fb04c51abe2c43ab397b5ff66245d8511190c44ffebf8a57beaef14dde7160730201c7502780b2cd8b8a01a88e1bb','oFA4vAdwFXoy5RHjP1na','magesh@atsquare.in',NULL,NULL,NULL,NULL,4,0,NULL,'2013-10-28 11:04:47','2013-10-28 07:52:09','127.0.0.1','127.0.0.1','magesh@atsquare.in',NULL,NULL,NULL,NULL,NULL,NULL,'2013-10-23 13:32:06','2013-10-28 11:04:47','7146f0bbfbdee26554b696fb3eaf8950c0c30ebc311a7cb7',NULL),(2,'64834e1d70ef39b37c4d11788896ce091f2cde44632ebdca76c88ad2a57f2a692dc2036a5f2c2f575783c24af6764a00cf05a9acbae2071431177ddf8cb3d000','MYNgYwL4LsHgAYpZjBpe','magesh@crave.com',NULL,NULL,NULL,NULL,2,0,NULL,'2013-10-28 07:57:50','2013-10-28 07:45:29','127.0.0.1','127.0.0.1','magesh@crave.com',NULL,NULL,NULL,NULL,NULL,NULL,'2013-10-28 07:45:29','2013-10-28 07:57:50','65937ec77a1c55e4c33065d96d8063cb80a2270469012356',NULL);
/*!40000 ALTER TABLE `spree_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variants`
--

DROP TABLE IF EXISTS `spree_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `weight` decimal(8,2) DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `cost_price` decimal(8,2) DEFAULT NULL,
  `cost_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_variants_on_product_id` (`product_id`),
  KEY `index_spree_variants_on_sku` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variants`
--

LOCK TABLES `spree_variants` WRITE;
/*!40000 ALTER TABLE `spree_variants` DISABLE KEYS */;
INSERT INTO `spree_variants` VALUES (1,'ROR-00011',NULL,NULL,NULL,NULL,NULL,1,1,17.00,'USD',1),(2,'ROR-00012',NULL,NULL,NULL,NULL,NULL,1,2,21.00,'GBP',1),(3,'ROR-001',NULL,NULL,NULL,NULL,NULL,1,3,17.00,'USD',1),(4,'ROR-00013',NULL,NULL,NULL,NULL,NULL,1,4,17.00,'USD',1),(5,'ROR-00015',NULL,NULL,NULL,NULL,NULL,1,5,17.00,'USD',1),(6,'RUB-00001',123.00,123.00,123.00,12.00,NULL,1,6,117.00,'GBP',1),(7,'APC-00001',123.00,123.00,123.00,12.00,NULL,1,7,107.00,'GBP',1),(8,'SPR-00001',NULL,NULL,NULL,NULL,NULL,1,8,17.00,'USD',1),(9,'SPR-00013',NULL,NULL,NULL,NULL,NULL,1,9,17.00,'USD',1),(10,'SPR-00015',NULL,NULL,NULL,NULL,NULL,1,10,17.00,'USD',1),(11,'SPR-00011',NULL,NULL,NULL,NULL,NULL,1,11,13.00,'USD',1),(12,'SPR-00012',NULL,NULL,NULL,NULL,NULL,1,12,21.00,'USD',1),(13,'ROR-00014',NULL,NULL,NULL,NULL,NULL,1,13,11.00,'USD',1),(14,'ROR-00016',NULL,NULL,NULL,NULL,NULL,1,14,15.00,'USD',1),(15,'SPR-00016',NULL,NULL,NULL,NULL,NULL,1,15,15.00,'USD',1),(16,'SPR-00014',NULL,NULL,NULL,NULL,NULL,1,16,11.00,'USD',1),(17,'ROR-00001',NULL,NULL,NULL,NULL,NULL,0,3,17.00,'USD',1),(18,'ROR-00002',NULL,NULL,NULL,NULL,NULL,0,3,17.00,'USD',2),(19,'ROR-00003',NULL,NULL,NULL,NULL,NULL,0,3,17.00,'USD',3),(20,'ROR-00004',NULL,NULL,NULL,NULL,NULL,0,3,17.00,'USD',4),(21,'ROR-00005',NULL,NULL,NULL,NULL,NULL,0,3,17.00,'USD',5),(22,'ROR-00006',NULL,NULL,NULL,NULL,NULL,0,3,17.00,'USD',6),(23,'ROR-00007',NULL,NULL,NULL,NULL,NULL,0,3,17.00,'USD',7),(24,'ROR-00008',NULL,NULL,NULL,NULL,NULL,0,3,17.00,'USD',8),(25,'ROR-00009',NULL,NULL,NULL,NULL,NULL,0,3,17.00,'USD',9),(26,'ROR-00012',NULL,NULL,NULL,NULL,NULL,0,3,17.00,'USD',10);
/*!40000 ALTER TABLE `spree_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zone_members`
--

DROP TABLE IF EXISTS `spree_zone_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zone_members`
--

LOCK TABLES `spree_zone_members` WRITE;
/*!40000 ALTER TABLE `spree_zone_members` DISABLE KEYS */;
INSERT INTO `spree_zone_members` VALUES (1,72,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(2,10,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(3,76,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(4,94,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(5,155,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(6,13,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(7,164,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(8,217,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(9,167,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(10,20,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(11,111,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(12,175,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(13,24,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(14,29,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(15,98,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(16,180,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(17,182,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(18,44,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(19,206,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(20,46,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(21,211,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(22,135,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(23,56,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(24,207,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(25,210,'Spree::Country',1,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(26,49,'Spree::Country',2,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(27,204,'Spree::Country',2,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(28,3,'Spree::Country',3,'2013-10-28 07:54:08','2013-10-28 07:54:08');
/*!40000 ALTER TABLE `spree_zone_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zones`
--

DROP TABLE IF EXISTS `spree_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_tax` tinyint(1) DEFAULT '0',
  `zone_members_count` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zones`
--

LOCK TABLES `spree_zones` WRITE;
/*!40000 ALTER TABLE `spree_zones` DISABLE KEYS */;
INSERT INTO `spree_zones` VALUES (1,'EU_VAT','Countries that make up the EU VAT zone.',0,25,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(2,'North America','USA + Canada',0,2,'2013-10-23 13:31:45','2013-10-23 13:31:45'),(3,'India zone','for India ',1,1,'2013-10-28 07:54:08','2013-10-28 07:54:08');
/*!40000 ALTER TABLE `spree_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-31 21:34:05
