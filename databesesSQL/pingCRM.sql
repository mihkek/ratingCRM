-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: stat
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Acme Corporation','2023-09-11 14:30:57','2023-09-11 14:30:57');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beltlists`
--

DROP TABLE IF EXISTS `beltlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beltlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beltlists`
--

LOCK TABLES `beltlists` WRITE;
/*!40000 ALTER TABLE `beltlists` DISABLE KEYS */;
INSERT INTO `beltlists` VALUES (1,'Белый (0 кю)',NULL,NULL),(2,'Желтый (6 кю',NULL,NULL),(3,'Желтый с зеленой полоской',NULL,NULL),(4,'Зеленый (4 кю)',NULL,NULL),(5,'Коричневый (2 кю)',NULL,NULL),(6,'Оранжевый (10 кю)',NULL,NULL),(7,'Синий (8 кю)',NULL,NULL);
/*!40000 ALTER TABLE `beltlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `belts`
--

DROP TABLE IF EXISTS `belts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `belts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `belts`
--

LOCK TABLES `belts` WRITE;
/*!40000 ALTER TABLE `belts` DISABLE KEYS */;
INSERT INTO `belts` VALUES (1,'Белый (0 кю)',NULL,NULL),(2,'Желтый (6 кю)',NULL,NULL),(3,'Желтый с зеленой полоской',NULL,NULL),(4,'Зеленый (4 кю)',NULL,NULL),(5,'Коричневый (2 кю)',NULL,NULL),(6,'Оранжевый (10 кю)',NULL,NULL),(7,'Синий (8 кю)',NULL,NULL);
/*!40000 ALTER TABLE `belts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorylists`
--

DROP TABLE IF EXISTS `categorylists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorylists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorylists`
--

LOCK TABLES `categorylists` WRITE;
/*!40000 ALTER TABLE `categorylists` DISABLE KEYS */;
INSERT INTO `categorylists` VALUES (2,'1 спортивный',NULL,NULL),(3,'1 судейская',NULL,NULL),(4,'1 юношеский',NULL,NULL),(5,'2 спортивный',NULL,NULL),(6,'2 судейская',NULL,NULL),(7,'2 юношеский',NULL,NULL),(8,'3 спортивный',NULL,NULL),(9,'3 юношеский',NULL,NULL),(10,'КМС',NULL,NULL),(11,'МС',NULL,NULL);
/*!40000 ALTER TABLE `categorylists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_ratings`
--

DROP TABLE IF EXISTS `club_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_ratings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first` int NOT NULL,
  `second` int NOT NULL,
  `third` int NOT NULL,
  `total` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_ratings`
--

LOCK TABLES `club_ratings` WRITE;
/*!40000 ALTER TABLE `club_ratings` DISABLE KEYS */;
INSERT INTO `club_ratings` VALUES (1,'Зенит',21,14,8,46,'2023-10-10 10:01:50','2023-10-10 10:01:50'),(2,'Краснодар',16,12,7,40,'2023-10-10 10:01:50','2023-10-10 10:01:50'),(3,'Ростов',14,10,6,35,'2023-10-10 10:01:50','2023-10-10 10:01:50'),(4,'Локомотив',10,8,4,30,'2023-10-10 10:01:50','2023-10-10 10:01:50');
/*!40000 ALTER TABLE `club_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES (1,'Легион','2023-10-13 10:49:27','2023-10-13 10:49:27');
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `organization_id` int DEFAULT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_account_id_index` (`account_id`),
  KEY `contacts_organization_id_index` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,1,69,'Mia','Sanford','maximus.treutel@example.org','(866) 543-9396','25225 Flatley Mountain Apt. 273','Zboncakview','Kansas','US','87416-3112','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(2,1,45,'Robbie','Braun','collins.berniece@example.com','(866) 578-1796','9322 Wilfrid View Suite 696','Murlmouth','Tennessee','US','89108-4276','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(3,1,31,'Douglas','Cole','hilpert.juwan@example.net','(855) 526-6687','98434 Polly Rue Apt. 679','Audratown','Tennessee','US','83146','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(4,1,82,'Dock','Ward','cecelia.runolfsson@example.net','877-399-7366','26820 Roslyn Meadow','Torpmouth','New Hampshire','US','43327','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(5,1,6,'Audreanne','Ferry','guillermo67@example.com','(877) 679-0509','716 Oberbrunner Camp','Eichmannshire','Wisconsin','US','27562','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(6,1,51,'Matilde','Herman','khalil84@example.com','1-844-948-5024','37198 Reichel Hill Apt. 538','South Emiletown','New Mexico','US','42632-2556','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(7,1,56,'Sigmund','Turner','adell.schaden@example.com','(888) 665-7782','43876 Glover Locks Apt. 225','Naderchester','New Jersey','US','98940-2661','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(8,1,68,'Wanda','Lakin','sboehm@example.net','844-334-1223','21725 Tyson Plain','Lake Alia','Wyoming','US','83385-2838','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(9,1,43,'Cole','Aufderhar','larson.javonte@example.com','888-475-7217','90684 Antonia Valleys Apt. 744','South Rodrickfurt','Wyoming','US','54805','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(10,1,43,'Dexter','Hudson','erling72@example.net','1-888-687-8723','390 Carroll Mountains Suite 011','North Mara','Florida','US','32772-3374','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(11,1,91,'Jarrod','Keebler','hermann.melba@example.net','866-647-7877','485 Kutch Track Apt. 392','Littlefort','West Virginia','US','83086','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(12,1,43,'Rebeca','Goyette','keyon.gutkowski@example.com','888.244.0708','94413 Satterfield Parkway Apt. 786','North Vinnie','North Dakota','US','83877-8750','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(13,1,63,'Foster','O\'Kon','swaniawski.abdiel@example.net','855.999.7543','1701 Myra Tunnel','Carterfurt','Alaska','US','15992-4321','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(14,1,25,'Herminio','Bashirian','sonny.ferry@example.org','(800) 668-6450','9839 Hills Course','North Avis','Massachusetts','US','80691-5692','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(15,1,21,'Kip','Jast','rowe.evelyn@example.com','855-235-1873','50603 Gerald Land','East Eltaborough','Minnesota','US','23750-7058','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(16,1,50,'Fiona','Welch','garrett52@example.org','866.539.9292','5685 Rollin Stravenue Apt. 533','Juliofurt','Connecticut','US','01789-6307','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(17,1,95,'Esteban','McCullough','becker.pedro@example.org','1-877-269-0693','697 Hillary Isle','West Soledad','Wyoming','US','75357-2390','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(18,1,64,'Julie','Oberbrunner','ihomenick@example.com','855.875.7913','798 Lang Centers','Port Vivian','Tennessee','US','91633-9481','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(19,1,40,'Katelynn','Wolff','mose94@example.com','844-668-2262','44986 Jasmin Place','Rettaview','Utah','US','77144-1624','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(20,1,50,'Cathrine','Parker','eboyle@example.net','877-912-5040','21161 Stanton Street Apt. 151','Mooreton','Idaho','US','95199-7596','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(21,1,5,'Cordelia','Hahn','omann@example.com','1-877-536-4605','745 Rashad Roads Apt. 466','Hillsfort','South Carolina','US','67839','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(22,1,10,'Margarett','Cummerata','dkirlin@example.net','1-866-282-4789','1406 Herzog Gardens Suite 539','Sebastianport','Alaska','US','51895','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(23,1,100,'Kacie','Franecki','bharris@example.org','1-888-396-6392','53942 Ernie Walks Apt. 809','North Logan','Missouri','US','05711','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(24,1,9,'Sister','Reichert','udare@example.org','866-976-7432','540 Nolan Road Apt. 266','Hahnhaven','Ohio','US','41061','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(25,1,18,'Michel','Beatty','jeremy.renner@example.org','(877) 607-3869','899 Breitenberg Flat','East Jeromy','Georgia','US','49765-9967','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(26,1,97,'Aubree','Bayer','leif.auer@example.org','1-888-486-7337','15913 Toney Hollow Apt. 534','Mervinland','Michigan','US','47589','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(27,1,63,'Danny','Willms','gthompson@example.net','(866) 200-5594','45173 Flatley Stream Suite 714','Konopelskichester','Pennsylvania','US','00002-5222','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(28,1,16,'Verla','Veum','vswaniawski@example.org','(844) 981-5944','2333 Muller Forks','Wolfbury','Wyoming','US','45790-4745','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(29,1,24,'Billie','Herzog','judy.kovacek@example.net','877.912.7145','55835 Aufderhar Valleys Suite 411','Oberbrunnerhaven','Connecticut','US','49577','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(30,1,21,'Alexandrea','Weissnat','ettie36@example.net','877-888-0623','4018 D\'Amore Mountains Apt. 679','Americachester','New Mexico','US','59541-0979','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(31,1,21,'Juliana','Kulas','gorczany.oma@example.net','800.852.5246','259 Colton Summit Suite 355','Port Gillian','Indiana','US','02735-1795','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(32,1,62,'Jon','Corkery','aylin76@example.com','855.654.9940','35560 West Point','North Mckaylachester','New York','US','11071-1461','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(33,1,18,'Janick','Blanda','connelly.pedro@example.org','844.924.7840','8559 Wilkinson Centers Suite 447','South Nicklaus','Massachusetts','US','14752','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(34,1,19,'Brayan','Watsica','laurianne.cummings@example.org','844-731-9595','989 Reymundo Views Apt. 052','Port Chris','Wyoming','US','88253-0309','2023-09-11 14:30:59','2023-09-11 14:31:00',NULL),(35,1,88,'Christian','Hoeger','kallie90@example.net','855.794.0555','27393 Botsford Junctions Apt. 429','East Vella','California','US','74516','2023-09-11 14:30:59','2023-09-11 14:31:01',NULL),(36,1,72,'Helen','Jenkins','rosa.osinski@example.com','1-855-372-2022','2130 Samanta Square Apt. 839','New Hankchester','New Mexico','US','86567-5128','2023-09-11 14:30:59','2023-09-11 14:31:01',NULL),(37,1,54,'Laurel','McCullough','lcorkery@example.net','(888) 649-5783','87037 Verlie View Suite 344','Adamsburgh','Utah','US','71555-6886','2023-09-11 14:30:59','2023-09-11 14:31:01',NULL),(38,1,29,'Rigoberto','Rice','conroy.stevie@example.com','855.922.6310','574 Ramiro Flats','New Christophefurt','South Carolina','US','23698','2023-09-11 14:30:59','2023-09-11 14:31:01',NULL),(39,1,46,'Erich','Murazik','antonette.okon@example.net','877.310.8229','419 Pfeffer Crossroad Apt. 038','South Jailynside','South Carolina','US','72993-6294','2023-09-11 14:30:59','2023-09-11 14:31:01',NULL),(40,1,61,'Rod','Davis','lubowitz.alexys@example.com','1-844-268-9007','4106 Roob Ville Suite 916','West Juliusborough','Tennessee','US','87417-2897','2023-09-11 14:30:59','2023-09-11 14:31:01',NULL),(41,1,4,'Humberto','Bauch','eblick@example.com','1-877-575-5206','2627 Hickle Stream Suite 011','Port Alexandrine','Delaware','US','94483','2023-09-11 14:30:59','2023-09-11 14:31:01',NULL),(42,1,65,'Roma','Kessler','kenny.dare@example.com','1-800-427-0336','668 Cummings Common','Durganside','Wyoming','US','44623-6569','2023-09-11 14:30:59','2023-09-11 14:31:01',NULL),(43,1,62,'Magnus','Streich','ernestina31@example.com','888.883.7676','4151 Clemens Way Apt. 222','Borermouth','Georgia','US','12578-5956','2023-09-11 14:30:59','2023-09-11 14:31:01',NULL),(44,1,57,'Brycen','Raynor','idaugherty@example.com','866-899-3137','116 Halie Dam Suite 850','Port Angelo','New Jersey','US','89310','2023-09-11 14:30:59','2023-09-11 14:31:01',NULL),(45,1,22,'Elisabeth','Stamm','jessica77@example.net','800.268.1633','19557 Windler Grove Suite 506','Lehnertown','South Dakota','US','17649-4273','2023-09-11 14:30:59','2023-09-11 14:31:01',NULL),(46,1,3,'Florian','Smitham','ldurgan@example.org','1-866-392-7660','1889 Veum Loop','East Cheyennestad','West Virginia','US','55790','2023-09-11 14:30:59','2023-09-11 14:31:01',NULL),(47,1,73,'Ellis','Rempel','eleuschke@example.net','800.314.9156','20546 Guy Knoll','New Zariastad','Maine','US','65415','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(48,1,59,'Rosetta','Schneider','tia16@example.net','1-866-403-2411','325 Friesen Junctions Suite 906','Christinashire','Connecticut','US','66995','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(49,1,37,'Ocie','Wintheiser','bcummerata@example.net','844-989-5003','474 Will Springs','Port Jeraldland','Georgia','US','89229','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(50,1,69,'Sigmund','Kuphal','schmidt.nikko@example.net','1-866-214-6776','6412 Bartoletti Divide Apt. 018','Lake Faustoton','Illinois','US','12623-9150','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(51,1,100,'Summer','Bins','golda79@example.com','888.415.8034','79889 Amber Points','Kertzmannbury','Utah','US','85044','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(52,1,21,'Lois','Heaney','murphy.bruen@example.net','877-352-3017','5930 Cooper Prairie Suite 922','Starkton','New Mexico','US','96271-1130','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(53,1,44,'Wilma','Hammes','mabernathy@example.org','888.565.7889','792 Kiana Overpass','Naderburgh','Delaware','US','83795-1277','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(54,1,35,'Lenna','Macejkovic','zola45@example.org','800.873.7141','519 Lamar Fort Apt. 271','East Lunatown','Washington','US','28599','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(55,1,5,'Diego','Treutel','meghan69@example.net','800.437.5803','89689 Ardella Points','New Randallstad','Texas','US','77048-9030','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(56,1,85,'Billie','Hodkiewicz','stroman.jedidiah@example.com','1-800-424-0497','754 Wiegand Neck Apt. 234','Lindgrenfort','North Dakota','US','24932-9721','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(57,1,13,'Assunta','Weimann','stanton.perry@example.com','1-866-437-5348','145 Stokes Mill Apt. 082','Lake Kaileechester','Idaho','US','41167-8368','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(58,1,47,'Jon','Mann','ternser@example.org','(877) 762-3141','96552 Thaddeus Estate','South Garnet','Washington','US','30411-6497','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(59,1,5,'Kelvin','Wiegand','dare.davonte@example.net','888-931-0505','88283 Dolly Drive','New Syble','New Hampshire','US','87142-2194','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(60,1,87,'Cynthia','Kunde','stark.adaline@example.net','855.877.9246','3133 Hegmann Crescent','New Josephine','Washington','US','30001-9505','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(61,1,51,'Eryn','Durgan','jacobs.demond@example.org','1-800-773-4129','6767 Prosacco Mountain Apt. 185','Boyerfort','Alaska','US','07212-8048','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(62,1,43,'Kaylie','Klocko','gladyce75@example.com','888-516-8308','671 Avis Square','Agustinchester','Kansas','US','31675','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(63,1,84,'Carole','Cummerata','kayla52@example.org','888-654-4086','2100 Hahn Junctions Apt. 211','Marqueschester','Massachusetts','US','24521','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(64,1,12,'Bryon','Waelchi','elwyn.adams@example.org','800.806.6654','213 Jones Lake Suite 621','West Zacharytown','Minnesota','US','86502','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(65,1,56,'Oscar','Marvin','dbecker@example.com','(866) 826-2563','65077 Keeling Mission','East Dorianton','Texas','US','29358-6614','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(66,1,91,'Malachi','Jacobson','bethany.kshlerin@example.org','(888) 982-2649','4978 Davis Flats Apt. 387','North Lawson','Alaska','US','45294','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(67,1,46,'Jazmin','Upton','qrolfson@example.com','877-659-2042','960 Champlin Walks Apt. 724','Jayview','Idaho','US','04625-8683','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(68,1,66,'Michale','Schneider','prohaska.holden@example.net','844-424-4175','8453 Thalia Road','New Waylonstad','Florida','US','39193-1689','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(69,1,59,'Kenyon','Prohaska','walter.hilario@example.net','844.420.3298','505 Carolina Oval Apt. 676','North Reidville','Rhode Island','US','01298','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(70,1,74,'Edna','Hand','vlang@example.com','(800) 724-3576','9588 Sauer Squares','Dinochester','Idaho','US','58751','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(71,1,30,'Rosemarie','Powlowski','alanis70@example.net','(800) 645-7758','339 Nicolas Road Suite 984','Lake Jacefort','Montana','US','72214','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(72,1,47,'Herman','Grant','schmeler.lera@example.com','1-877-468-5686','685 Laurence Bridge Suite 704','Gorczanyberg','Missouri','US','23243','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(73,1,11,'Gavin','Mayert','denesik.damian@example.com','800.494.4314','18842 Michelle Circle','Rubyeborough','New Jersey','US','43500','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(74,1,26,'Gaylord','Breitenberg','walter54@example.com','800-924-8290','616 Melyna Pines Apt. 284','Lake Savanah','District of Columbia','US','17211-2247','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(75,1,84,'Curtis','Okuneva','ward.lemuel@example.net','(800) 359-3499','63603 Schowalter Shores','Lake Valentinshire','Wyoming','US','20230-1425','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(76,1,98,'Creola','Batz','percival95@example.net','877-289-7910','46813 Moises Points Apt. 767','East Jadonside','Ohio','US','47265','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(77,1,82,'Timothy','Gibson','elizabeth17@example.net','1-877-321-6317','13396 Sabrina Squares','Shadmouth','Hawaii','US','68467','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(78,1,72,'Anibal','Weimann','kozey.adella@example.org','1-800-733-2568','659 Bernier Crescent Apt. 988','Port Robynland','Vermont','US','85234','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(79,1,19,'Vallie','Nicolas','abernathy.horacio@example.net','(877) 755-9346','152 Kovacek Curve Suite 997','Rohanfort','Rhode Island','US','16379-1767','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(80,1,30,'Manuela','Dicki','gottlieb.angeline@example.com','877-910-9279','570 Prosacco Meadows','Port Kenyon','Rhode Island','US','35795-2216','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(81,1,50,'Malcolm','Carter','kelli62@example.net','855.225.1457','99475 Nella Mountain Apt. 500','North Kaylah','Nebraska','US','89813','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(82,1,57,'Ali','Marks','hans79@example.net','800.916.3249','615 Wilkinson Harbors','West Dollyton','Pennsylvania','US','24258-4394','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(83,1,77,'Quincy','Schaden','rosalinda85@example.org','888-751-0811','8039 O\'Kon Station Suite 057','Port Zula','South Dakota','US','92868','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(84,1,29,'Orie','Cole','ncartwright@example.org','844-944-3390','444 Corwin Flat','North Laneyport','Mississippi','US','74811','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(85,1,94,'Dillan','Ratke','blanca.johnson@example.net','855-612-1362','32110 Dibbert Highway','Rodriguezview','Vermont','US','36795-3908','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(86,1,70,'Hailie','Carter','ashtyn02@example.org','(888) 778-2855','6714 Herman Extensions','Lake Emeryfurt','North Carolina','US','51000','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(87,1,71,'Mckenna','Haley','leon64@example.net','877-795-4087','41310 Schuppe Cliffs','East Tabitha','Connecticut','US','78983-8174','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(88,1,95,'Landen','Langosh','adolph.weber@example.net','1-888-259-2155','97570 Mae Mall Apt. 708','West Annamae','Idaho','US','35639-9697','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(89,1,49,'Lindsey','McClure','ethyl15@example.org','866-697-0243','2997 Branson Plain Apt. 367','Trantowport','Mississippi','US','96069-9566','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(90,1,40,'Nathanael','Cruickshank','connelly.reba@example.org','855.703.9804','2558 Kulas Mission','New Elysefurt','Massachusetts','US','24784','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(91,1,97,'Faye','Christiansen','spowlowski@example.org','(877) 697-0661','2404 Carroll Haven Suite 566','Corwinview','Iowa','US','11052','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(92,1,79,'Kyleigh','Mohr','isabelle56@example.org','877.528.1187','2169 Riley Grove','North Maynard','Vermont','US','11926','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(93,1,64,'Alexa','Emard','gusikowski.toney@example.net','1-855-526-2009','4038 Marvin Fort','Jennyferborough','Colorado','US','04873','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(94,1,78,'Don','Abshire','domenico43@example.com','855-783-2505','83066 Murazik Tunnel','Dickinsonland','Montana','US','04','2023-09-11 14:31:00','2023-09-14 18:56:55',NULL),(95,1,83,'Jairo','Schamberger','mallory34@example.net','855.825.0193','64096 Deon Mission Suite 337','West Viviennemouth','Hawaii','US','88680-3153','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(96,1,87,'Rachel','Klocko','myrtis74@example.org','800.615.9750','3164 Shanel Light Apt. 421','Roweside','Alabama','US','52429-7570','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(97,1,68,'Brad','Hermiston','joanne24@example.org','1-800-301-0083','55995 Watsica Dale Suite 418','Spencerton','Florida','US','93012','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(98,1,20,'Marietta','Zboncak','barrett.schmidt@example.org','844.218.2442','92299 Marc Ramp Suite 360','Port Ressie','New Mexico','US','67487','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(99,1,64,'Ivory','Bosco','fadel.kelsi@example.com','844-987-4047','667 Considine Drives','Wolffmouth','Michigan','US','56566-5951','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL),(100,1,7,'Piper','Wintheiser','alysa64@example.com','877.696.7094','6734 Alycia Groves Apt. 351','Eliseomouth','Alaska','US','47082-1011','2023-09-11 14:31:00','2023-09-11 14:31:01',NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jornals`
--

DROP TABLE IF EXISTS `jornals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jornals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mentor_id` bigint unsigned NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornals`
--

LOCK TABLES `jornals` WRITE;
/*!40000 ALTER TABLE `jornals` DISABLE KEYS */;
INSERT INTO `jornals` VALUES (1,1,'2023-06-20','•Тимур, Артем. Разминка, растяжка. Основная часть: 6 концовок по 20 сек, свободная работа руками в лапу, свободная работа удары ногами в лапу. Отработка ударов ногами по голове. Набивка в виде боя - 2 раза. ОФП: канат, ролик, берпи, приседания. Помощники: Крачковская, Черноситов.',NULL,NULL),(2,1,'2023-09-13','Бурцев Кирилл,Белан Саша,Белашев Стас,Григорян Давид,Мамитов Артур. Разминка,растяжка,техника,повторение ката и пинана,работа в паре (прямой + шито + Лоу кик),набивка',NULL,NULL),(3,1,'2023-01-20','•Тимур, Ярослав, Артем. Разминка: прыжки на степах, канат + пресс на ролике, бег эстафета, борьба. Основная часть: отработка лоу киков на каждую ногу, отработка защиты и уходы от лоу киков, проработка лоу кика с переводом на голову мая гери. Свободный раунд отработки ударов на голову, отработка защиты от ударов на голову. Между заданиями ОФП. Набивка. Помощники: Крачковская, Черноситов',NULL,NULL);
/*!40000 ALTER TABLE `jornals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (4,'2020_01_01_000003_create_accounts_table',1),(6,'2020_01_01_000005_create_organizations_table',1),(7,'2020_01_01_000006_create_contacts_table',1),(8,'2023_09_14_131725_create_reports_table',2),(12,'2023_09_15_081211_create_beltlists_table',4),(14,'2023_09_15_121943_create_categorylists_table',5),(24,'2019_12_14_000001_create_personal_access_tokens_table',6),(25,'2020_01_01_000001_create_password_resets_table',6),(26,'2020_01_01_000002_create_failed_jobs_table',6),(27,'2020_01_01_000004_create_users_table',6),(28,'2023_09_14_155855_create_progress_table',6),(29,'2023_09_15_081211_create_belts_table',6),(30,'2023_09_18_183616_create_ranks_table',6),(31,'2023_09_18_185112_create_roles_table',6),(32,'2023_09_23_170304_create_personal_student_progress_table',6),(33,'2023_09_24_083816_create_jornals_table',6),(34,'2023_10_04_141920_create_clubs_table',7),(35,'2023_10_10_080220_create_club_ratings_table',7),(36,'2023_10_10_105127_create_tournaments_table',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `organizations_account_id_index` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,1,'Miller and Sons','vicente.kirlin@balistreri.com','1-844-314-6303','50533 Kertzmann Throughway','Port Peggieland','Maryland','US','04530-5555','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(2,1,'Kessler, Corkery and Green','dolores.dicki@bogisich.org','888.347.4796','9874 Runte Road','Elsamouth','South Carolina','US','79616','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(3,1,'Konopelski, Barton and Bernhard','hettinger.doug@schuster.com','1-800-950-5504','4138 Smitham Fort','South Rahsaantown','California','US','63529','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(4,1,'Gleichner-Jacobs','edwina.zulauf@klein.org','877-417-7842','78951 Jameson Fork','Corrineport','Massachusetts','US','68249-0841','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(5,1,'Botsford, Donnelly and Barrows','dulce72@will.biz','888-605-3430','24896 Roberts Prairie Apt. 064','Feilfort','South Dakota','US','64730-9315','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(6,1,'Ernser Group','morissette.destiny@feeney.com','(888) 781-3969','2929 Murazik Shoal Suite 027','Lake Maxwellton','Alaska','US','94169-7522','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(7,1,'Rowe-Reichel','runte.koby@hodkiewicz.com','1-844-355-8940','6902 Mable Prairie Apt. 606','Port Dale','Nevada','US','94008-0754','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(8,1,'Champlin LLC','torp.tressie@goodwin.com','855.232.5184','435 Howell Pass','Jermaineborough','Rhode Island','US','81247','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(9,1,'Heaney and Sons','cassidy16@bradtke.com','800-230-9593','255 Franecki Run Suite 707','North Faye','Nevada','US','80345-4712','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(10,1,'Ratke, D\'Amore and Thiel','virgie.howe@gutkowski.com','888-514-4434','3452 Ernest Roads Apt. 598','Mauriceville','Texas','US','61094-9819','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(11,1,'Fahey-Kemmer','harvey.reece@bartoletti.com','800.229.5387','609 Ryan Inlet','East Annette','Mississippi','US','82559-4236','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(12,1,'Heller, Ondricka and Roberts','maeve86@zboncak.org','888.326.4567','5691 Howard Forge Suite 072','New Jeramy','Iowa','US','45288-3947','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(13,1,'Corkery, Rolfson and Marvin','annie18@schmitt.com','(844) 462-2312','254 Streich Circle Apt. 217','Merrittburgh','Texas','US','81660-1048','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(14,1,'Kris, Ritchie and Howell','russel.estefania@rippin.com','888.289.7006','811 Bergstrom View','West Brucebury','Washington','US','60196','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(15,1,'Mueller, Ebert and Schiller','zhuels@hoeger.com','(855) 493-4152','2572 Reilly Village','West Mazie','Rhode Island','US','78197','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(16,1,'Wiza-Morissette','johns.darryl@okuneva.com','1-800-842-2605','27689 Miles Ranch','West Aaliyahmouth','Nebraska','US','21693','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(17,1,'Leffler Inc','monty.kreiger@schmeler.com','(877) 286-9675','311 Laurine Rapids Apt. 775','Smithshire','New Jersey','US','30256','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(18,1,'Schroeder, Reinger and Quitzon','hagenes.jade@tillman.biz','1-866-513-5590','63976 Huel Cape','Lake Gabetown','Virginia','US','36996-5487','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(19,1,'Rath-Nolan','franecki.omer@dubuque.info','1-844-268-8099','367 Jesse Harbors Suite 190','Aishaborough','Vermont','US','14485-2970','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(20,1,'Morar LLC','angie57@mcdermott.com','(866) 521-3606','216 Caleigh Cove','Port Drewfurt','North Carolina','US','47784-0620','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(21,1,'Nikolaus and Sons','jacobs.ivory@dare.info','855-522-2163','7298 Wisozk Hollow','Donnellside','Maine','US','30449-0577','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(22,1,'Hoeger-Swift','alvera03@koch.org','800.562.9661','738 Madonna Pine Suite 467','Eloisemouth','Tennessee','US','83848-8398','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(23,1,'Aufderhar, Ward and Schiller','casper.bayer@tremblay.net','866.671.9096','96624 Murray Ridges','East Maia','New York','US','39948-7008','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(24,1,'Olson-Muller','rconnelly@spencer.com','(844) 562-6562','6388 Johnnie Dam','East Estelle','Kansas','US','39363-5197','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(25,1,'Hessel Ltd','geoffrey.tillman@romaguera.com','888-843-1029','434 Cyril Isle','Huelberg','Arizona','US','43377','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(26,1,'Gleason PLC','glabadie@pouros.net','800-338-0997','46522 Russell Ford','North Charityfort','Idaho','US','74179','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(27,1,'McKenzie-Bradtke','camden66@beier.com','1-855-561-8176','3970 Vladimir Bridge','Port Chyna','Arizona','US','00755','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(28,1,'Langworth, Murazik and Morar','jast.onie@daugherty.com','1-877-314-2772','3880 Flatley Rue','Port Merritthaven','Florida','US','30552','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(29,1,'Jenkins and Sons','ludie47@rau.info','800-536-3550','2144 Verner Stravenue','West Gunner','New Hampshire','US','31961-4437','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(30,1,'Corkery, Block and Beer','ugerhold@kemmer.com','844.757.2498','51288 Schumm Locks','Corwinton','Arkansas','US','94247','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(31,1,'Stiedemann-Beatty','faustino.morissette@dubuque.biz','1-866-370-7473','60085 Annabell Camp Suite 628','Rosashire','New Hampshire','US','77761','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(32,1,'Smith, Hill and Reilly','juston45@borer.com','1-888-831-3152','82088 Noah Harbors Suite 943','West Marcosstad','Michigan','US','60408-1569','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(33,1,'Muller and Sons','watsica.elyssa@kozey.org','888.304.4107','943 Maggio Square','Beerstad','Kansas','US','76459-3411','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(34,1,'Schmeler Group','damian50@orn.com','800-642-3260','8397 Kailyn Way Suite 281','Lake Pamela','Kansas','US','14241','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(35,1,'Hagenes, Tromp and Pouros','qbarrows@haag.com','866-427-4362','7741 Abernathy Fords','Lake Jennyferburgh','Colorado','US','94524','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(36,1,'Gislason-Hegmann','jmosciski@bayer.biz','855.885.5900','2182 Vaughn Ranch','North Carlee','District of Columbia','US','27215','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(37,1,'Cassin, Crooks and Prohaska','cronin.keira@nikolaus.biz','1-844-395-0561','13290 Mathias Stream','East Arden','Rhode Island','US','50170-2073','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(38,1,'O\'Reilly-Swift','stiedemann.queenie@mcglynn.info','(855) 235-8628','86536 Kailey Route Apt. 578','New Sydnie','Mississippi','US','99454-2187','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(39,1,'Hauck-Boyle','hope82@halvorson.org','1-800-580-6925','11296 Harber Creek','West Eleonore','Oregon','US','76432-1347','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(40,1,'Rogahn-Kozey','yberge@gibson.com','866-521-3325','938 Jon Union Suite 625','Wuckertchester','Georgia','US','79228','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(41,1,'Paucek-Considine','clifford46@bogisich.com','888.431.8662','12590 Rusty Stravenue Apt. 514','Gilesmouth','Louisiana','US','07234-8662','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(42,1,'Kerluke Inc','jschumm@mraz.info','(800) 432-1513','48881 D\'Amore Trail','Brookefurt','Georgia','US','87502-3720','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(43,1,'Mertz and Sons','velva.reichel@predovic.org','(888) 225-6187','56299 Kyler Spurs Suite 595','Ginobury','Minnesota','US','95769-8564','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(44,1,'Fisher, Krajcik and Fritsch','donald77@streich.com','855-622-7000','1995 Mireille Green Apt. 981','Kovacekland','Delaware','US','98209-2919','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(45,1,'Rippin Inc','kuhn.jettie@oberbrunner.com','1-877-222-5908','91140 Jenkins Plains','Sybleberg','Nebraska','US','27883-2166','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(46,1,'Wintheiser, Corwin and Hermiston','brody65@blick.com','800.232.4789','86791 Stamm Ramp','South Maribelhaven','Alaska','US','54389','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(47,1,'Hickle, Considine and Abshire','ywatsica@jakubowski.com','1-877-933-2537','32638 Sid Path','East Norbertotown','Montana','US','36525-4463','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(48,1,'Lueilwitz, Nicolas and Schuster','dashawn26@stamm.com','1-844-831-3288','5776 Willie Avenue Suite 943','Lake Stan','Maine','US','90836-3834','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(49,1,'Bernier, O\'Reilly and Runolfsson','jackeline93@hagenes.com','855-830-8587','8144 Letha Common Apt. 551','Pansyhaven','Tennessee','US','48422','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(50,1,'Ryan-Schoen','kaleigh.gutmann@schroeder.com','1-866-458-5230','488 Schmidt Manor Apt. 163','East Wallace','Wisconsin','US','47216','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(51,1,'Conroy Ltd','qschinner@haag.com','(877) 721-2878','4914 Eldon Green Suite 298','Groverberg','Minnesota','US','99885-3254','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(52,1,'Hyatt-Yundt','cummerata.neha@kilback.info','(866) 385-8911','797 Eloise Bridge','New Golda','Virginia','US','14027-1295','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(53,1,'Swaniawski, Ledner and DuBuque','kavon59@pagac.com','1-888-218-5728','21091 Hudson Alley','Purdyfort','Tennessee','US','73244','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(54,1,'Ratke PLC','alisa.blick@langworth.com','844-650-8316','14137 Vicenta Loaf','DuBuqueland','Missouri','US','58621-9246','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(55,1,'Larkin, Langworth and West','paucek.magdalena@emard.net','877-924-7232','715 Morissette Drives Suite 501','New Tracy','Texas','US','23448-6926','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(56,1,'Dickinson-Fahey','kunze.walton@hahn.org','844-797-3155','27457 Pacocha Expressway','Sengerton','West Virginia','US','65499','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(57,1,'Kunde and Sons','javon.green@green.biz','866.512.1072','56945 Paige Prairie Suite 656','Lake Johathan','Nevada','US','45766','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(58,1,'Johns, Pagac and Lynch','geovany81@barton.biz','1-844-344-1933','82768 Collins Pass','South Noahborough','Missouri','US','33983','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(59,1,'Legros-McDermott','djones@upton.com','877-977-3438','83812 Romaguera Lights','Cicerochester','Delaware','US','34641-2991','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(60,1,'Parker, Bauch and Abernathy','mabelle21@robel.biz','800.940.5170','219 Karelle Walk Suite 195','Hermanmouth','Louisiana','US','44069-3883','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(61,1,'Price, Shields and Jacobi','mwintheiser@schaefer.com','888-633-0553','316 Hauck Bypass Suite 681','North Freddie','Mississippi','US','03684-4001','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(62,1,'Eichmann LLC','amelie53@wiza.com','(800) 502-1454','226 Russel Garden','New Chad','Georgia','US','35593','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(63,1,'Daugherty PLC','buckridge.myrtice@metz.com','(844) 544-4749','4844 Virginia Union','West Javier','Montana','US','19343-6487','2023-09-11 14:30:58','2023-09-11 14:30:58',NULL),(64,1,'Weber Inc','malinda58@howell.com','877.677.4327','18225 O\'Reilly Crossing','Ronnyborough','Minnesota','US','44906','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(65,1,'Hills, Kertzmann and Will','rweber@mccullough.com','888.605.7177','80043 Morris Tunnel','East Moshebury','Michigan','US','19515-7409','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(66,1,'Denesik-Carroll','pdach@paucek.net','844.666.8177','83029 Huel Streets Apt. 859','South Nyasiatown','Oregon','US','18437','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(67,1,'Mann, D\'Amore and Langosh','shania.hartmann@schinner.org','1-877-348-0067','14605 Brennon Station','Starkburgh','Missouri','US','71712','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(68,1,'Considine LLC','vjast@herzog.com','1-888-656-1548','861 Adams Mountain Apt. 747','Orieside','Rhode Island','US','55284','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(69,1,'Funk-Pouros','andy46@sanford.net','(877) 674-7990','266 Carrie Mountains','Vestachester','Kansas','US','32358','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(70,1,'Cruickshank-Bayer','ckoss@wehner.org','877.483.4358','68436 Celia Rest Suite 537','Koelpinside','Oklahoma','US','59849-1943','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(71,1,'Swaniawski, Gottlieb and Rutherford','sauer.keon@sauer.com','1-888-703-8991','31092 Johnson Overpass','Batzfort','Georgia','US','61454','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(72,1,'Tromp, Yost and Walker','dax57@fahey.com','888-242-9571','219 Thompson Parkway Suite 898','Zboncakview','Idaho','US','58520-5968','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(73,1,'Lebsack PLC','alia.doyle@greenholt.net','800.228.9139','3456 Stewart Ridges Apt. 900','Elliottmouth','Maryland','US','56537-2908','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(74,1,'Bashirian Ltd','agutmann@altenwerth.net','855.340.1753','712 Pearline Burgs Apt. 022','East Mattieton','Delaware','US','94267','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(75,1,'Paucek PLC','gutmann.andre@hahn.com','888-686-6410','27483 Gaylord Centers','Boehmmouth','Missouri','US','49936','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(76,1,'Weber-Dicki','vida.kling@schinner.info','1-800-696-5889','2521 Lelah Coves','Pollichhaven','Nebraska','US','70208','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(77,1,'Lockman-Prohaska','frankie80@roob.com','1-888-835-0262','820 Robel Burg Suite 569','South Lucindamouth','California','US','19164-4024','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(78,1,'Connelly Inc','idonnelly@murazik.info','1-855-376-1593','85814 Humberto Centers Apt. 373','Fionaton','Oregon','US','72754-9969','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(79,1,'Abbott-Hartmann','thoeger@erdman.com','(866) 510-5917','767 Jacobi Pike Apt. 250','North Orlandchester','Utah','US','87929','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(80,1,'Keebler, Deckow and Johns','vern24@bradtke.com','888.242.5753','86700 Bartoletti Greens Suite 503','Katrinefurt','Alabama','US','72437-5243','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(81,1,'Hackett-Weissnat','lia.fay@ruecker.com','1-855-557-2393','80408 Devon Terrace','New Daphne','Oregon','US','31260','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(82,1,'Konopelski, Kulas and Abshire','jan59@welch.com','(866) 837-3970','4266 Schuppe Loop','Fayshire','Nebraska','US','11882-2964','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(83,1,'Dooley, Wilkinson and Heller','kihn.malvina@oberbrunner.com','(877) 808-2233','34288 Lucas Lodge','West Fabian','Alaska','US','05303-7372','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(84,1,'Ryan and Sons','weldon69@mclaughlin.com','888-946-9500','4738 Reyna Parkways Suite 324','Lakinbury','Nevada','US','31160-5302','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(85,1,'Boehm-Huel','reynolds.vada@schmitt.org','877.752.1364','38527 Gaylord Fields Suite 890','Cielochester','Arizona','US','22302','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(86,1,'Hammes Inc','earnest55@kris.com','888-830-1760','478 Leffler Radial Apt. 716','Borerfurt','Montana','US','33628-9595','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(87,1,'Schoen LLC','adalberto.powlowski@prosacco.com','888.540.5569','28412 Hayes Fork','New Sophiafurt','Washington','US','14855-9128','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(88,1,'Lockman, Langworth and Bashirian','kathryne.hill@gutkowski.com','877.493.0800','26955 Amya Via Apt. 461','Zolafurt','North Carolina','US','15559','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(89,1,'Brakus, McLaughlin and McDermott','henry.fritsch@grady.com','888.236.6601','48834 Trenton Gateway','Faybury','Texas','US','55513-2272','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(90,1,'Bednar-Lueilwitz','carmen.ankunding@fahey.com','844-239-9596','56833 Oswaldo Mountains','West Lavada','Alabama','US','53014-6360','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(91,1,'Bailey Ltd','goldner.eloy@connelly.com','1-888-667-5600','328 Blick Shoals','Trentonborough','Delaware','US','12665-8310','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(92,1,'Witting Ltd','nwilderman@cormier.com','1-877-865-1559','33803 Nina Trail','Raynorshire','Delaware','US','19142','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(93,1,'Daugherty, Schroeder and Wilkinson','myron.leuschke@jones.biz','(855) 245-2239','245 Mayert Square Suite 134','Baileyshire','New Hampshire','US','83962-0087','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(94,1,'Labadie, Hamill and Quigley','anderson.trisha@mitchell.com','(888) 374-5037','339 Godfrey Forges Suite 092','New Arelyhaven','District of Columbia','US','62324','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(95,1,'Jacobson Ltd','joy.corwin@robel.com','1-855-653-5684','9237 Toy Radial','West Katharina','New Mexico','US','38550-4663','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(96,1,'Quitzon-Mitchell','crath@ullrich.com','(844) 445-6930','9914 Marielle Mountains Apt. 408','Port Althealand','Mississippi','US','53732-1268','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(97,1,'Harber Inc','graham.johnathon@king.com','(877) 621-3292','85563 Ruecker Rapids Apt. 872','South Jeanneshire','Oklahoma','US','92037','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(98,1,'Herzog PLC','drath@harvey.info','855.368.8312','874 Oscar Land','Lueilwitzberg','Oregon','US','00004-0246','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(99,1,'Conn-Smith','rosenbaum.lempi@dooley.org','(877) 316-4659','35320 Connelly Garden Apt. 064','South Jackelineville','Alabama','US','82673-9413','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL),(100,1,'Tremblay, Hammes and Morissette','qhermiston@bergnaum.com','800-216-3362','16787 Branson Center','Hyattberg','Florida','US','21131','2023-09-11 14:30:59','2023-09-11 14:30:59',NULL);
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_student_progress`
--

DROP TABLE IF EXISTS `personal_student_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_student_progress` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_student_progress`
--

LOCK TABLES `personal_student_progress` WRITE;
/*!40000 ALTER TABLE `personal_student_progress` DISABLE KEYS */;
INSERT INTO `personal_student_progress` VALUES (1,'www.example.ru',2,NULL,NULL);
/*!40000 ALTER TABLE `personal_student_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progress`
--

DROP TABLE IF EXISTS `progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `progress` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `progress_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moiashi` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progress`
--

LOCK TABLES `progress` WRITE;
/*!40000 ALTER TABLE `progress` DISABLE KEYS */;
INSERT INTO `progress` VALUES (1,'Учебно-тренировочные соревнования (3 место)',200,NULL,NULL),(2,'Зачет №1 (лист 10 кю)',3232,NULL,NULL),(3,'Всероссийские соревнования (1 место)',545,NULL,NULL),(4,'2 юношеский разряд (присвоение)',65,NULL,NULL),(5,'Знак отличия ГТО (бронза)',987,NULL,NULL),(6,'Знак отличия ГТО (золото)',435,NULL,NULL),(7,'Международные соревнования (3 место)',342,NULL,NULL),(8,'Первенство Муниципального образования/города (2 место',12,NULL,NULL),(9,'МС (Мастер спорта РФ)',65,NULL,NULL),(10,'Окончание учебного триместра на \"отлично\"',987,NULL,NULL),(11,'Первенство России (1 место)',76,NULL,NULL),(12,'Первенство Субъекта Российской Федерации (1 место)',77,NULL,NULL);
/*!40000 ALTER TABLE `progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranks`
--

DROP TABLE IF EXISTS `ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranks`
--

LOCK TABLES `ranks` WRITE;
/*!40000 ALTER TABLE `ranks` DISABLE KEYS */;
INSERT INTO `ranks` VALUES (1,'1 спортивный',1,NULL,NULL),(2,'1 судейская',2,NULL,NULL),(3,'1 юношеский',3,NULL,NULL),(4,'2 спортивный',4,NULL,NULL),(5,'2 судейская',5,NULL,NULL),(6,'2 юношеский',6,NULL,NULL),(7,'3 спортивный',7,NULL,NULL),(8,'3 юношеский',8,NULL,NULL),(9,'КМС',9,NULL,NULL),(10,'МС',10,NULL,NULL);
/*!40000 ALTER TABLE `ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'Иванов','Дмитрий','Викторович',NULL,NULL),(2,'Антонов','Андрей','Андреевич',NULL,NULL),(3,'Джордан','Николай','Сергеевич',NULL,NULL),(4,'Колочкова','Марьяна','Леонидовна',NULL,NULL),(5,'Моргун','Анастасия','Василиевна',NULL,NULL),(6,'Вермут','Петр','Даниилович',NULL,NULL),(7,'Колина','Юлия','Алексеевна',NULL,NULL),(8,'Данко','Анастасия','Юрьевна',NULL,NULL);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Админ','admin','2023-09-24 06:42:44','2023-09-24 06:42:44'),(2,'Наставник','mentor','2023-09-24 06:42:44','2023-09-24 06:42:44'),(3,'Ученик','student','2023-09-24 06:42:44','2023-09-24 06:42:44'),(5,'Тренер','trainer','2023-10-16 16:10:11','2023-10-16 16:10:11');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments`
--

DROP TABLE IF EXISTS `tournaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournaments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments`
--

LOCK TABLES `tournaments` WRITE;
/*!40000 ALTER TABLE `tournaments` DISABLE KEYS */;
INSERT INTO `tournaments` VALUES (1,'Начинающие','2023-10-16','2023-10-13 10:49:49','2023-10-13 10:49:49');
/*!40000 ALTER TABLE `tournaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT '0',
  `photo_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Оводков','Андрей','Юрьевич','ovod@example.com','2023-09-24 06:42:44','$2y$10$m4By779zElLoTIoTv4WjqOjsz3hEmJEAUY4MqqpAkjyMSTX9WtBce',1,NULL,2,'78fCkIRxhZ','2023-09-24 06:42:44','2023-09-24 06:42:44',NULL),(2,'Марченко','Алексей','Валентинович','vlad@example.com','2023-09-24 06:42:44','$2y$10$o/j8tithKecyn4EmCstuEe//S6kBuTA5mpFpLQIBxGrcZs.rEpQfy',1,NULL,3,'UyT9NGd43U','2023-09-24 06:42:44','2023-09-24 06:42:44',NULL),(3,'Костин','Сергей','Владиславович','johndoe@example.com','2023-09-24 06:42:44','$2y$10$HmrjmfUgQ.BjDc4nIgue2O6kfMz2pPrBZsibqnRB36AaLnM9ZyqFu',1,NULL,1,'gngKvx0jTv','2023-09-24 06:42:44','2023-09-24 06:42:44',NULL);
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

-- Dump completed on 2023-10-18 15:53:31
