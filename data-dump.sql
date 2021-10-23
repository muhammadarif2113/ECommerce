-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: webshop
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Address` (
  `shipping` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES ('cus_KSCTl0BGc9kq9F','chrissy@gmail.com','Christopher','Brooklyn','NY','US','2334 Ralph Avenue',11234),('cus_KSCXXxoEUCdhwv','tom@gmail.com','Thomas','Beallsville','OH','US','56355 Belmont Ridge Road',43716),('cus_KSCb7Y05Tsuk34','chrissy@gmail.com','Chrissy','Ocean View','DE','US','34544 Atlantic Avenue',19970),('cus_KSCe4VSmicR5vT','tigerwood@gmail.com','Tiger Woods','Brooklyn','NY','US','4533 16th Avenue',11204),('cus_KSLyUFAqarNc2a','chrissy@gmail.com','Chrissy','Queens','NY','US','32-43 Steinway Street',11103),('cus_KSLzrb5f5UWPFa','chrissy@gmail.com','Christopher','Queens','NY','US','45-65 163rd Street',11358),('cus_KSM0rBxgTFsuMb','chrissy@gmail.com','Chris','Powhatan Point','OH','US','54333 Mount Victory Road',43942),('cus_KSR1E0JVaSqFe3','moe@gmail.com','Muhammad Arif','Wausau','WI','US','234534 Viewpoint Road',54403),('cus_KSR4wBW4pEUCEo','moe.a2113@gmail.com','Muhammad Arif','Queens','NY','US','3433 Junction Boulevard',11372),('cus_KSSqmZPHe3kliD','chrissy@gmail.com','Christopher','Brooklyn','NY','US','1111 Ocean Avenue',11230);
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `products` varchar(255) DEFAULT NULL,
  `totalQuantity` int DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `total` int DEFAULT NULL,
  `shipping` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES ('cs_test_b1bDOasOby4StdkQcI5XJvOwqjZnZglRA2qbcNzkY3fZbpvXnxH2NoGgXh','chrissy@gmail.com','Christopher','[{name:\'adidas Yeezy 350 Cream\',description:\'Size: 12 \',quantity:\'1\'},{name:\'adidas Yeezy Slide Pure\',description:\'Size: 11 \',quantity:\'1\'}]',2,'2021-10-22 07:21:24',520,'cus_KSCTl0BGc9kq9F'),('cs_test_b14BcJxSbXKlpAenECJNbZxDixQp7fgThjO3Y8ktsWhyZ9QWCqbsYhHAy9','tom@gmail.com','Thomas','[{name:\'adidas Yeezy 350 Cream\',description:\'Size: 12 \',quantity:\'1\'},{name:\'adidas Yeezy QNTM Frozen Blue\',description:\'Size: 10 \',quantity:\'1\'},{name:\'Balenciaga Arena High Grey\',description:\'Size: 9 \',quantity:\'1\'}]',3,'2021-10-22 07:24:24',810,'cus_KSCXXxoEUCdhwv'),('cs_test_b1ClKTDZe4KEFcMrWZzwIu6dX4CNxFqXmtGHnb8SSU2KEyiB7e0TQrWmKG','chrissy@gmail.com','Chrissy','[{name:\'Balenciaga Track Blue\',description:\'Size: 11 \',quantity:\'1\'},{name:\'Balenciaga White Red Blue\',description:\'Size: 44 \',quantity:\'2\'}]',3,'2021-10-22 07:28:55',1600,'cus_KSCb7Y05Tsuk34'),('cs_test_b17tEIklLrC97l3gNcAjcJQdQrsBkwiXIHf2iPlpdqLJaS1sPkHmUzPbvX','tigerwood@gmail.com','Tiger Woods','[{name:\'adidas Yeezy 350 Citrin\',description:\'Size: 9 \',quantity:\'1\'},{name:\'adidas Yeezy 700 Analog\',description:\'Size: 11 \',quantity:\'1\'}]',2,'2021-10-22 07:32:21',430,'cus_KSCe4VSmicR5vT'),('cs_test_b1bNl3CPs1dFaCarn7FENGcsaUIwXKSKE2gqICpNybJUE6ugGf04anAPFR','chrissy@gmail.com','Chrissy','[{name:adidas Yeezy 350 Cream,description:Size: 12 ,quantity:1},{name:adidas Yeezy 700 Analog,description:Size: 11 ,quantity:1}]',2,'2021-10-22 17:10:32',590,'cus_KSLyUFAqarNc2a'),('cs_test_b10jiZxYMwsbFiedVtQRVhpYhW7rHoEGsomxypDAjXl2XnRJeLAg33VAcD','chrissy@gmail.com','Christopher','[{name:adidas Yeezy 700 Analog,description:Size: 11 ,quantity:1},{name:adidas Yeezy Slide Resin,description:Size: 11 ,quantity:1}]',2,'2021-10-22 17:11:26',460,'cus_KSLzrb5f5UWPFa'),('cs_test_b1pq4kLGwZZhpAGiOnM16QjP1i6mYpbi1dbV9GcTH3BqmPslsho8el8PVt','chrissy@gmail.com','Chris','[{name:Jordan 1 Metallic Gold,description:Size: 9 ,quantity:1},{name:Jordan 1 AMAC Custom,description:Size: 12 ,quantity:1}]',2,'2021-10-22 17:12:27',520,'cus_KSM0rBxgTFsuMb'),('cs_test_a1f0x3ZHuMWfLLPfIew120OIBjmBJ1JJeea35KQirrq3OFEIUXlmZ6hYu6','moe@gmail.com','Muhammad Arif','[{name:adidas Yeezy 350 Bred,description:Size: 10 ,quantity:1}]',1,'2021-10-22 22:23:55',330,'cus_KSR1E0JVaSqFe3'),('cs_test_a1cJfFuyxYg1x4ufFPxS4msdmjhJZSMI9trPzcGOU31FD5H69WvPFmZzFQ','moe.a2113@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1}]',1,'2021-10-22 22:26:53',250,'cus_KSR4wBW4pEUCEo'),('cs_test_b1L1srvtAtNFoj4sCMBj1e0w7DigHeoSE1PPuzaXNMyvFjQcacwxzKkDTe','chrissy@gmail.com','Christopher','[{name:adidas Yeezy 350 Bred,description:Size: 10 ,quantity:1},{name:adidas Yeezy 350 Zyon,description:Size: 12 ,quantity:1},{name:adidas Yeezy 500 Salt,description:Size: 8 ,quantity:1}]',3,'2021-10-23 00:16:02',925,'cus_KSSqmZPHe3kliD');
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `isUsed` tinyint(1) DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `images` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Balenciaga','Balenciaga Triple White',44,1,'Men',600,1,'/images/sneaker/balenciagatriplewhite.jpg','/images/balenciaga-triplewhite.jpg, /images/balenciaga-triplewhite.jpg'),(2,'Balenciaga','Balenciaga White Red Blue',44,1,'Men',550,1,'/images/sneaker/balenciagawhiteredblue.jpg','/images/balenciaga-triplewhite.jpg, /images/balenciaga-triplewhite.jpg'),(3,'Jordan','Jordan 1 Turbo Green',11,1,'Men',320,1,'images/sneaker/jordan1turbogreen.jpg','/images/balenciaga-triplewhite.jpg, images/jordan1-turbogreen.jpg'),(4,'Off-White','Off-White Converse',11,0,'Men',480,1,'/images/sneaker/off-whiteconverse.jpg','/images/offwhite-converse.jpg, /images/off-whiteconverse.jpg'),(5,'Yeezy','adidas Yeezy Slide Core',11,0,'Men',200,1,'/images/sneaker/adidasyeezyslidecore.jpg','/images/core-slide.jpg, /images/core-slide.jpg'),(6,'Yeezy','adidas Yeezy Slide Pure',11,0,'Men',210,1,'/images/sneaker/adidasyeezyslidepure.jpg','/images/core-slide.jpg, /images/core-slide.jpg'),(7,'Yeezy','adidas Yeezy Slide Resin',11,0,'Men',180,1,'/images/sneaker/adidasyeezyslideresin.jpg','/images/core-slide.jpg, /images/core-slide.jpg'),(8,'Nike','Nike Tiffany Dunk High',11,0,'Men',510,1,'/images/sneaker/niketiffanydunkhigh.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(9,'Adidas','Adidas South Park',11,0,'Men',250,1,'/images/sneaker/adidassouthpark.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(10,'Balenciaga','Balenciaga Track Blue',11,0,'Women',500,1,'/images/sneaker/balenciagatrackblue.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(11,'Balenciaga','Balenciaga Arena High White',11,1,'Men',240,1,'/images/sneaker/balenciagaarenahighwhite.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(12,'Bape','Bapesta Blue Patch',11,0,'Men',360,1,'/images/sneaker/bapestabluepatch.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(13,'Bape','Bapesta Camo Pink',11,0,'Men',340,1,'/images/sneaker/bapestacamopink.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(14,'Bape','Bapesta Camo Purple',11,0,'Men',340,1,'/images/sneaker/bapestacamopurple.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(15,'Christian Louboutin','Christian Louboutin Louis Spikes',44,1,'Men',400,1,'/images/sneaker/christianlouboutinlouisspikes.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(16,'Jordan','Jordan 1 Court Purple',10,1,'Men',260,1,'/images/sneaker/jordan1courtpurple.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(17,'Jordan','Jordan 1 Gold Toe',11,1,'Men',300,1,'/images/sneaker/jordan1goldtoe.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(18,'Jordan','Jordan 1 Metallic Gold',9,0,'Men',200,1,'/images/sneaker/jordan1metallicgold.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(19,'Jordan','Jordan 1 Silver Toe',11,0,'Women',260,1,'/images/sneaker/jordan1silvertoe.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(20,'Jordan','Jordan 1 Volt Gold',12,0,'Men',200,1,'/images/sneaker/jordan1voltgold.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(21,'Jordan','Jordan 3 Cement Black',12,1,'Men',250,1,'/images/sneaker/jordan3cementblack.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(22,'Jordan','Jordan 3 Fire Red',9,0,'Men',220,1,'/images/sneaker/jordan3firered.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(23,'Jordan','Jordan 3 Mocha',9,1,'Men',170,1,'/images/sneaker/jordan3mocha.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(24,'Jordan','Jordan 3 Tinker Black Cement',10,1,'Men',140,1,'/images/sneaker/jordan3tinkerblackcement.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(25,'Jordan','Jordan 3 UNC',10,1,'Men',280,1,'/images/sneaker/jordan3unc.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(26,'Jordan','Jordan 4 Black Cat',10,1,'Men',320,1,'/images/sneaker/jordan4blackcat.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(27,'Jordan','Jordan 4 Fire Red 2021',9,0,'Men',360,1,'/images/sneaker/jordan4firered2021.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(28,'Jordan','Jordan 4 Hot Punch',10,0,'Women',260,1,'/images/sneaker/jordan4hotpunch.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(29,'Jordan','Jordan 6 Bordeaux',11,1,'Men',250,1,'/images/sneaker/jordan6bordeaux.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(30,'Jordan','Jordan 6 Carmine',10,0,'Men',250,1,'/images/sneaker/jordan6carmine.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(31,'Jordan','Jordan 6 Gatorade',12,0,'Men',250,1,'/images/sneaker/jordan6gatorade.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(32,'Jordan','Jordan 6 Sport Blue',12,0,'Men',250,1,'/images/sneaker/jordan6sportblue.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(33,'Jordan','Jordan 6 Tinker',11,0,'Men',200,1,'/images/sneaker/jordan6tinker.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(34,'Jordan','Jordan 11 Jubilee',12,0,'Men',280,1,'/images/sneaker/jordan11jubilee.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(35,'Nike','Nike Dunk Low Blue Coast',11,0,'Women',340,1,'/images/sneaker/nikedunklowbluecoast.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(36,'Nike','Nike Dunk Low Ceramic',11,0,'Men',280,1,'/images/sneaker/nikedunklowceramic.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(37,'Nike','Sacai Pine Green',10,1,'Men',350,1,'/images/sneaker/sacaipinegreen.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(38,'Yeezy','adidas Yeezy 500 Blush',11,1,'Men',250,1,'/images/sneaker/adidasyeezy500blush.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(39,'Yeezy','adidas Yeezy Slide Bone',14,1,'Men',280,1,'/images/sneaker/adidasyeezyslidebone.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(40,'Jordan','Jordan 12 Taxi',11,0,'Men',550,1,'/images/sneaker/jordan12taxi.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(41,'Nike','Nike Air Force 1 Kith',11,0,'Men',180,1,'/images/sneaker/nikeairforce1kith.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(42,'Nike','Nike Air Force 1 Skeleton',11,1,'Men',180,1,'/images/sneaker/nikeairforce1skeleton.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(43,'Nike','Nike Air Max 95 Pink',11,0,'Men',275,1,'/images/sneaker/nikeairmax95pink.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(44,'CDG','CDG Blazer',8,0,'Men',255,1,'/images/sneaker/cdgblazer.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(45,'Nike','Nike Dunk High Varsity Black',11,1,'Men',250,1,'/images/sneaker/nikedunkhighvarsityblack.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(46,'Jordan','Jordan 1 Fearless',10,1,'Men',290,1,'/images/sneaker/jordan1fearless.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(47,'Jordan','Jordan 1 Mid Chicago',9,0,'Men',170,1,'/images/sneaker/jordan1midchicago.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(48,'Jordan','Jordan 3 Pure White',12,0,'Men',300,1,'/images/sneaker/jordan3purewhite.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(49,'Jordan','Jordan 4 Cool Grey',9,1,'Men',230,1,'/images/sneaker/jordan4coolgrey.jpg',''),(50,'Jordan','Jordan 5 Fire Red',12,0,'Men',220,1,'/images/sneaker/jordan5firered.jpg',''),(51,'Jordan','Jordan 7 Cigar',11,1,'Men',150,1,'/images/sneaker/jordan7cigar.jpg',''),(52,'Jordan','Jordan 9 Kobe',6,0,'Men',250,1,'/images/sneaker/jordan9kobe.jpg',''),(53,'Jordan','Jordan 9 Racer Blue',11,0,'Men',280,1,'/images/sneaker/jordan9racerblue.jpg',''),(54,'Jordan','Jordan 11 Bred',7,1,'Men',260,1,'/images/sneaker/jordan11bred.jpg',''),(55,'Jordan','Jordan 11 Low Legend Blue',12,0,'Men',220,1,'/images/sneaker/jordan11lowlegendblue.jpg',''),(56,'Nike','Nike KD 4 Easter',10,1,'Men',250,1,'/images/sneaker/nikekd4easter.jpg',''),(57,'Nike','Nike KD 4 Galaxy',10,1,'Men',350,1,'/images/sneaker/nikekd4galaxy.jpg',''),(58,'Nike','Nike Dunk High Bodega',9,0,'Men',220,1,'/images/sneaker/nikedunkhighbodega.jpg',''),(59,'Nike','Nike Dunk High Notre',9,0,'Men',200,1,'/images/sneaker/nikedunkhighnotre.jpg',''),(60,'Yeezy','adidas Yeezy 350 Bred',10,1,'Men',330,1,'/images/sneaker/adidasyeezy350bred.jpg',''),(61,'Yeezy','adidas Yeezy 350 Zyon',12,0,'Men',235,1,'/images/sneaker/adidasyeezy350zyon.jpg',''),(62,'Yeezy','adidas Yeezy 500 Salt',8,0,'Men',360,1,'/images/sneaker/adidasyeezy500salt.jpg',''),(63,'Yeezy','adidas Yeezy 350 Citrin',9,1,'Men',150,1,'/images/sneaker/adidasyeezy350citrin.jpg',''),(64,'Yeezy','adidas Yeezy 350 Cream',12,0,'Men',310,1,'/images/sneaker/adidasyeezy350cream.jpg',''),(65,'Yeezy','adidas Yeezy 350 Mono Ice',5,0,'Men',280,1,'/images/sneaker/adidasyeezy350monoice.jpg',''),(66,'Yeezy','adidas Yeezy 350 Pirate Black',10,1,'Men',600,1,'/images/sneaker/adidasyeezy350pirateblack.jpg',''),(67,'Yeezy','adidas Yeezy 350 Sand Taupe',13,0,'Men',240,1,'/images/sneaker/adidasyeezy350sandtaupe.jpg',''),(68,'Yeezy','adidas Yeezy 500 Enflame',6,0,'Men',260,1,'/images/sneaker/adidasyeezy500enflame.jpg',''),(69,'Yeezy','adidas Yeezy 700 Analog',11,1,'Men',280,1,'/images/sneaker/adidasyeezy700analog.jpg',''),(70,'Yeezy','adidas Yeezy 700 V3 Alvah',10,1,'Men',260,1,'/images/sneaker/adidasyeezy700v3alvah.jpg',''),(71,'Yeezy','adidas Yeezy 700 V3 Arzareth',10,0,'Men',320,1,'/images/sneaker/adidasyeezy700v3arzareth.jpg',''),(72,'Yeezy','adidas Yeezy 700 V3 Kyanite',7,0,'Men',260,1,'/images/sneaker/adidasyeezy700v3kyanite.jpg',''),(73,'Yeezy','adidas Yeezy 700 V3 Safflower',8,0,'Men',280,1,'/images/sneaker/adidasyeezy700v3safflower.jpg',''),(74,'Yeezy','adidas Yeezy QNTM Frozen Blue',10,0,'Men',280,1,'/images/sneaker/adidasyeezyqntmfrozenblue.jpg',''),(75,'Nike','Nike Air Max 97 Metallic Gold ',7,0,'Women',280,1,'/images/sneaker/nikeairmax97metallicgold.jpg',''),(76,'Balenciaga','Balenciaga Arena High Grey',9,1,'Men',220,1,'/images/sneaker/balenciagaarenahighgrey.jpg',''),(77,'CDG','CDG VANS',8,0,'Men',180,1,'/images/sneaker/cdgvans.jpg',''),(78,'Converse','Converse FEAR OF GOD Essentials',10,0,'Men',220,1,'/images/sneaker/conversefearofgodessentials.jpg',''),(79,'Jordan','Jordan 1 AMAC Custom',12,0,'Men',320,1,'/images/sneaker/jordan1amaccustom.jpg',''),(80,'Jordan','Jordan 1 Court Purple OG',11,1,'Men',350,1,'/images/sneaker/jordan1courtpurpleog.jpg',''),(81,'Jordan','Jordan 1 Japan Neutral Grey',11,0,'Men',350,1,'/images/sneaker/jordan1japanneutralgrey.jpg',''),(82,'Jordan','Jordan 1 Patina',12,0,'Men',200,1,'/images/sneaker/jordan1patina.jpg',''),(83,'Jordan','Jordan 1 Pollen',12,0,'Men',210,1,'/images/sneaker/jordan1pollen.jpg',''),(84,'Jordan','Jordan 1 Royal 2017',11,1,'Men',290,1,'/images/sneaker/jordan1royal2017.jpg',''),(85,'Jordan','Jordan 3 White Cement 2011',12,1,'Men',220,1,'/images/sneaker/jordan3whitecement2011.jpg',''),(86,'Jordan','Jordan 4 Neon',11,1,'Men',210,1,'/images/sneaker/jordan4neon.jpg',''),(87,'Jordan','Jordan 4 Tour Yellow OG 2006',12,1,'Men',210,1,'/images/sneaker/jordan4touryellowog2006.jpg',''),(88,'Jordan','Jordan 5 Grape',8,1,'Men',160,1,'/images/sneaker/jordan5grape.jpg',''),(89,'Jordan','Jordan 5 Raging Bull',12,0,'Men',240,1,'/images/sneaker/jordan5ragingbull.jpg',''),(90,'Jordan','Jordan 5 Red Suede',11,0,'Men',240,1,'/images/sneaker/jordan5redsuede.jpg',''),(91,'Jordan','Jordan 6 Infared 2019',11,0,'Men',240,1,'/images/sneaker/jordan6infared2019.jpg',''),(92,'Jordan','Jordan 6 Spizike',9,0,'Men',240,1,'/images/sneaker/jordan6spizike.jpg',''),(93,'Jordan','Jordan 6 Washed Denim',9,1,'Men',150,1,'/images/sneaker/jordan6washeddenim.jpg',''),(94,'Jordan','Jordan 8 Chrome',10,1,'Men',180,1,'/images/sneaker/jordan8chrome.jpg',''),(95,'Jordan','Jordan 8 Cool Grey',10,1,'Men',210,1,'/images/sneaker/jordan8coolgrey.jpg',''),(96,'Jordan','Jordan 8 Tinker Air Raid',9,1,'Men',160,1,'/images/sneaker/jordan8tinkerairraid.jpg',''),(97,'Jordan','Jordan 9 University Blue',8,0,'Women',240,1,'/images/sneaker/jordan9universityblue.jpg',''),(98,'Jordan','Jordan 10 Bulls Over Broadway',10,0,'Men',150,1,'/images/sneaker/jordan10bullsoverbroadway.jpg',''),(99,'Jordan','Jordan 11 Concord 2018',10,0,'Men',390,1,'/images/sneaker/jordan11concord2018.jpg',''),(100,'Jordan','Jordan 11 Cool Grey',9,0,'Men',220,1,'/images/sneaker/jordan11coolgrey.jpg',''),(101,'Jordan','Jordan 11 Gamma',10,1,'Men',230,1,'/images/sneaker/jordan11gamma.jpg',''),(102,'Jordan','Jordan 11 Heiress',6,0,'Women',280,1,'/images/sneaker/jordan11heiress.jpg',''),(103,'Jordan','Jordan 11 Space Jam 2000',10,0,'Men',300,1,'/images/sneaker/jordan11spacejam2000.jpg',''),(104,'Jordan','Jordan 11 Space Jam 2009',12,1,'Men',220,1,'/images/sneaker/jordan11spacejam2009.jpg',''),(105,'Jordan','Jordan 11 Win Like 96',11,0,'Men',270,1,'/images/sneaker/jordan11winlike96.jpg',''),(106,'Jordan','Jordan 12 French Blue',10,1,'Men',170,1,'/images/sneaker/jordan12frenchblue.jpg',''),(107,'Jordan','Jordan 12 Grey University Blue',11,1,'Men',190,1,'/images/sneaker/jordan12greyuniversityblue.jpg',''),(108,'Jordan','Jordan 12 Gym Red',10,1,'Men',240,1,'/images/sneaker/jordan12gymred.jpg',''),(109,'Jordan','Jordan 12 Reverse Flu Game',10,0,'Men',200,1,'/images/sneaker/jordan12reverseflugame.jpg',''),(110,'Jordan','Jordan 12 University Blue',6,0,'Women',290,1,'/images/sneaker/jordan12universityblue.jpg',''),(111,'Jordan','Jordan 1 Pine Green',13,1,'Men',240,1,'/images/sneaker/jordan1pinegreen.jpg',''),(112,'Nike','Nike Dunk Low Barely Green',6,0,'Women',180,1,'/images/sneaker/nikedunklowbarelygreen.jpg',''),(113,'Nike','Nike Dunk Low Cobalt',10,0,'Men',180,1,'/images/sneaker/nikedunklowcobalt.jpg',''),(114,'Nike','Nike Dunk Low Undefeated 5 On It',10,0,'Men',190,1,'/images/sneaker/nikedunklowundefeated5onit.jpg',''),(115,'Jordan','Jordan 35 Luka Doncic',11,0,'Men',190,1,'/images/sneaker/jordan35lukadoncic.jpg',''),(116,'Jordan','Jordan 35 Smoke Grey Fear',11,0,'Men',270,1,'/images/sneaker/jordan35smokegreyfear.jpg',''),(117,'Jordan','Jordan 14 Gym Red',11,1,'Men',200,1,'/images/sneaker/jordan14gymred.jpg',''),(118,'Jordan','Jordan 13 Bred',11,1,'Men',200,1,'/images/sneaker/jordan13bred.jpg',''),(119,'Nike','Nike Air Force 1 Mid Supreme NBA ',11,0,'Men',250,1,'/images/sneaker/nikeairforce1midsupremenba.jpg',''),(120,'Jordan','Jordan 13 Altitude',9,1,'Men',200,1,'/images/sneaker/jordan13altitude.jpg',''),(121,'Nike','Nike Air Max 90 Denham',9,0,'Men',170,1,'/images/sneaker/nikeairmax90denham.jpg',''),(122,'Nike','Nike Air Max 90 Bacon',8,0,'Men',150,1,'/images/sneaker/nikeairmax90bacon.jpg',''),(123,'Nike','Nike Air Max 94 CB',8,0,'Men',150,1,'/images/sneaker/nikeairmax94cb.jpg',''),(124,'Nike','Nike Dunk High Purple Varsity',7,0,'Women',150,1,'/images/sneaker/nikedunkhighpurplevarsity.jpg',''),(125,'Nike','Nike Dunk High Varsity Maize',9,0,'Men',170,1,'/images/sneaker/nikedunkhighvarsitymaize.jpg',''),(126,'Nike','Nike SB Dunk Low Supreme Jewel',12,1,'Men',240,1,'/images/sneaker/nikesbdunklowsupremejewel.jpg',''),(127,'Nike','Nike Flyknit Racer Multicolor',11,0,'Men',120,1,'/images/sneaker/nikeflyknitracermulticolor.jpg',''),(128,'Nike','Nike Off-White Waffle Racer',12,1,'Women',190,1,'/images/sneaker/nikeoff-whitewaffleracer.jpg','');
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Moe','moe123@gmail.com','$2a$08$s/BHrcRm2OSqs/Q7IyUhqeT1x7/8gGRE2TUfKbtdvSqU0iP699fqS'),(2,'tony','tonysopranos@mafia.com','$2a$08$Fv8HN.UreQj6mkp1Ha7hdu01J2clQUNd7oLkPjLA27BlDpZxD4B3y'),(3,'Usman','usmanali@gmail.com','$2a$08$B6JMSCLYAMr1EIJwggjkR./MgqUmAVT9Cdi4DK8qs446aGjfdEBLi'),(4,'tony','tonyloveu@gmail.com','$2a$08$Q9lVe1SC1ruYv/AAj9dPcOnRKTod2NWx4MqsM3vaRmtjcX9VvVxna'),(5,'ghost','','$2a$08$Uu20Yu8jBAKijNpGEyB5oeGUZ51ttI.ZICRRr4sG/aNvNDlomVKUe'),(6,'User1','testinguser1@gmail.com','$2a$08$CjKqxroJ3yyKYAWbbjHEpOQSiZMfyVjNyAmOEAtgsEwqMDmev7CVu'),(7,'testinguser2','testinguser2@gmail.com','$2a$08$4Qyx1wkaHiz3YScGWIDuU.QnD5LPult4pOR4CuZ48l8QN33/WFEIu'),(8,'hfghfgh','dfgdfg@gmail.com','$2a$08$eGeccIjzQPPhCULtglsJgeyrh3TSev0wvbOBCvD4t3UT6IypJFHae'),(9,'erterter','retert@gmail','$2a$08$zyiT.n0c64G3RfwULY9M9.lOlbGANvET8bZjRsCHjVTtZDadRGqiO'),(10,'fgbfgbfgb','234234@gmail','$2a$08$M8zz.1fAl3H/7c1hxuJeyupejCREcA/.Ob1XJoiqu9/DdJvQ7725y'),(11,'weeee','weeee@gmail.com','$2a$08$xCmfqB7p/D8.CB5YfftPK.P7X3xATIw0KMaF6KBWrVENC4li3VqS2'),(12,'fsdfsdf','dfgbdff@yqahoo.com','$2a$08$Q3Nt0DI7q6xV10ZkwkzCFuiJO8S8Fcs/9Hhdj9WD2RjTiNSErG8ZG'),(13,'testinguser3','testinguser3@gmail.com','$2a$08$l0O1d85rMom2H0IOLcsLsODpLvsqTfjrhdSQlEyqKWXrXFK.i/o6W'),(14,'testinguser7','testinguser7@gmail.com','$2a$08$2sWCa/xd4NrDmDRx/LZDHeleEBIn7a8YOtUWF/j7n0QnneGSCUCby'),(15,'testing','testing5@gmail.com','$2a$08$4W6R5kYp4p62ZRYRbnL.POpikrDNSRhP5K06ZuFvtaSGwfcbpbh4m'),(16,'Telmo','telmoacadmeny5@gmail.com','$2a$08$twIppGIVM4U8NWMZSvCcCehrklAiwUex5umYMVSo1eQIelNtSFZh.'),(17,'Muhammad','moe.a2113@gmail.com','$2a$08$LFKx/K4n3mLa5wBogvNf7eiaaFda.k3NCuGjtnbT3w/BambpJLG9i'),(18,'Tony','tony@gmail.com','$2a$08$v74adkVT/sTNF1Hf/c1Rbe6YO0SpSBTGrbK2pYeLZ52CyXX2FCzEi'),(19,'sam','sam@gmail.com','$2a$08$Hau/XgRPK/rErvkV5Ff2/OVxIJhd9x4G9ZQCjLYiBLHB52HD4LIhu'),(20,'chris','chrissy@gmail.com','$2a$08$txI1NLE3frrupbY3r6ZwG.ZmKvY9JUmUsgAjJXdUQVRDknSy.lzMC'),(21,'tom','tom@gmail.com','$2a$08$KrO7MkpEo3wIkTviWmJ80uZp8kB35LOhmq9DFzlYy981Co2k0vizO'),(22,'paulie','paulie@gmail.com','$2a$08$Q38oXYEvy5SZnvxmO4NzdelnkhSQVn.SOf0SAJCFEaYsaOiMSqdg.'),(23,'tiger wood','tigerwood@gmail.com','$2a$08$CDuVPT3URlK2a.JUxDBVb.f/YqlXYs2OHyIP6sEDUPr5WqWWPF/5e'),(24,'Moe','23423423@gmail.com','$2a$08$tLGULbxOsoFp9BzQesA/HOhAe65Fa7Ch3QLqWUMRqfYJUoHG5eSua');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-22 20:27:06
