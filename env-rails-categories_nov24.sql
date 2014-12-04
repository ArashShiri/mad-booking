-- MySQL dump 10.14  Distrib 5.5.39-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ecology-booking_production
-- ------------------------------------------------------
-- Server version	5.5.39-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Books: Ecology','2014-11-20 13:28:09','2014-11-20 13:28:09'),(2,'Water Gear','2014-11-20 13:28:09','2014-11-20 13:28:09'),(3,'Books: Vegetation','2014-11-20 13:28:09','2014-11-20 13:28:09'),(4,'Books: Soil','2014-11-20 13:28:09','2014-11-20 13:28:09'),(5,'Books: Weather','2014-11-20 13:28:09','2014-11-20 13:28:09'),(6,'Safety Gear','2014-11-20 13:28:09','2014-11-20 13:28:09'),(7,'Saftey Gear','2014-11-20 13:28:09','2014-11-20 13:28:09'),(8,'Saftey','2014-11-20 13:28:09','2014-11-20 13:28:09'),(9,'Weather Meter','2014-11-20 13:28:09','2014-11-20 13:28:09'),(10,'Surplus Material','2014-11-20 13:28:09','2014-11-20 13:28:09'),(11,'Soil','2014-11-20 13:28:09','2014-11-20 13:28:09'),(12,'Time','2014-11-20 13:28:09','2014-11-20 13:28:09'),(13,'Books: Reptiles/Amphibians','2014-11-20 13:28:09','2014-11-20 13:28:09'),(14,'Books: Birds','2014-11-20 13:28:09','2014-11-20 13:28:09'),(15,'Books: Mammals','2014-11-20 13:28:09','2014-11-20 13:28:09'),(16,'Books: Insects','2014-11-20 13:28:09','2014-11-20 13:28:09'),(17,'Measurement','2014-11-20 13:28:09','2014-11-20 13:28:09'),(18,'Binoculars','2014-11-20 13:28:09','2014-11-20 13:28:09'),(19,'Surplus Materials','2014-11-20 13:28:09','2014-11-20 13:28:09'),(20,'Flow Meter','2014-11-20 13:28:09','2014-11-20 13:28:09'),(21,'Tree Corer','2014-11-20 13:28:09','2014-11-20 13:28:09'),(22,'Augers','2014-11-20 13:28:09','2014-11-20 13:28:09'),(23,'Quadrats','2014-11-20 13:28:09','2014-11-20 13:28:09'),(24,'In Lab Equipment','2014-11-20 13:28:09','2014-11-20 13:28:09'),(25,'Sampling Equipment','2014-11-20 13:28:09','2014-11-20 13:28:09'),(26,'Compass','2014-11-20 13:28:09','2014-11-20 13:28:09'),(27,'Light Meter','2014-11-20 13:28:09','2014-11-20 13:28:09'),(28,'Net','2014-11-20 13:28:09','2014-11-20 13:28:09'),(29,'Thermometer','2014-11-20 13:28:09','2014-11-20 13:28:09'),(30,'Books: Aquatic','2014-11-20 13:28:09','2014-11-20 13:28:09'),(31,'Books: Fungi','2014-11-20 13:28:09','2014-11-20 13:28:09'),(32,'Vwr Symphony Probes And Meters','2014-11-20 13:28:09','2014-11-20 13:28:09'),(33,'Digital Camera','2014-11-20 13:28:09','2014-11-20 13:28:09'),(34,'Abney Level','2014-11-20 13:28:09','2014-11-20 13:28:09'),(35,'Clinometer','2014-11-20 13:28:09','2014-11-20 13:28:09'),(36,'Gps','2014-11-20 13:28:09','2014-11-20 13:28:09'),(37,'Radio','2014-11-20 13:28:09','2014-11-20 13:28:09'),(38,'Miscellaneous Equipment','2014-11-20 13:28:09','2014-11-20 13:28:09'),(39,'Books: Other','2014-11-20 13:28:09','2014-11-20 13:28:09'),(40,'Books: Earth Science','2014-11-20 13:28:09','2014-11-20 13:28:09'),(41,'Books: Astronomy','2014-11-20 13:28:09','2014-11-20 13:28:09'),(42,'Books: Chemistry','2014-11-20 13:28:09','2014-11-20 13:28:09'),(43,'Scales','2014-11-20 13:28:09','2014-11-20 13:28:09'),(44,'Sediment Analysis','2014-11-20 13:28:09','2014-11-20 13:28:09'),(45,'Water Sampling','2014-11-20 13:28:09','2014-11-20 13:28:09'),(46,'Spotting Scopes','2014-11-20 13:28:09','2014-11-20 13:28:09'),(47,'Tripod','2014-11-20 13:28:09','2014-11-20 13:28:09'),(48,'Vegetation Analysis Equipment','2014-11-20 13:28:09','2014-11-20 13:28:09'),(49,'Geography','2014-11-20 13:28:09','2014-11-20 13:28:09'),(50,'Psychrometer','2014-11-20 13:28:10','2014-11-20 13:28:10'),(51,'Thermometer Probes','2014-11-20 13:28:10','2014-11-20 13:28:10'),(52,'Hanna Tracer Meters','2014-11-20 13:28:10','2014-11-20 13:28:10'),(53,'Micro Climate Research Equipment','2014-11-20 13:28:10','2014-11-20 13:28:10'),(54,'Ysi Multimeters','2014-11-20 13:28:10','2014-11-20 13:28:10'),(55,'Books: Reptiles','2014-11-20 13:28:10','2014-11-20 13:28:10'),(56,'Ysi Multimeter','2014-11-20 13:28:10','2014-11-20 13:28:10'),(57,'Data Logger','2014-11-20 13:28:10','2014-11-20 13:28:10'),(58,'Books: Animals','2014-11-20 13:28:10','2014-11-20 13:28:10'),(59,'Books: Fish','2014-11-20 13:28:10','2014-11-20 13:28:10'),(60,'Books: Wildlife','2014-11-20 13:28:10','2014-11-20 13:28:10'),(61,'Books: Water','2014-11-20 13:28:10','2014-11-20 13:28:10'),(62,'Microscopes','2014-11-20 13:28:10','2014-11-20 13:28:10'),(63,'Snow Testing','2014-11-20 13:28:10','2014-11-20 13:28:10'),(64,'Safety Equipment','2014-11-20 13:28:10','2014-11-20 13:28:10');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-24 13:31:18
