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
INSERT INTO `Address` VALUES ('moe.a2113@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Utica Avenue',11234),('moe.a2113@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Utica Avenue',11234),('moe.a2113@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Utica Avenue',11234),('sdfsdf@gmail.com','moe','Ashburn','VA','US','23453 Morning Walk Drive',20148),('moe2@gmail.com','Muhammad Arif','Queens','NY','US','67-55 Alderton Street',11374),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','3234 Nostrand Avenue',11229),('testing@gmail.com','sdfsdf','','NY','US','2343 Forest Avenue',10303),('moe@gmail.com','Muhammad Arif','Sterling','VA','US','45644 Waterloo Station Square',20166),('moe@gmail.com','moe','Brooklyn','NY','US','2344 Boynton Place',11223),('moe@gmail.com','moeSKI','Queens','NY','US','234-23 133rd Avenue',11422),('moe@gmail.com','moeSKI','Queens','NY','US','234-23 133rd Avenue',11422),('testing@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Utica Avenue',11234),('moe3@gmail.com','dfgdfg','Queens','NY','US','45-43 40th Street',11104),('moe3@gmail.com','dfgdfg','Queens','NY','US','45-43 40th Street',11104),('moe@gmail.com','23423','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','23423','Brooklyn','NY','US','2343 60th Street',11204),('moe3@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('testing@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Utica Avenue',11234),('testing@gmail.com','Muhammad Arif','','NY','US','2343 Forest Avenue',10303),('moe@gmail.com','Muhammad Arif','Queens','NY','US','34-54 44th Street',11101),('moe@gmail.com','Muhammad Arif','Queens','NY','US','34-54 44th Street',11101),('moe3@gmail.com','moe','','NY','US','2343 Forest Avenue',10303),('moe3@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','Muhammad Arif','Sterling','VA','US','45645 Willow Pond Plaza',20164),('moe@gmail.com','Muhammad Arif','Sterling','VA','US','45645 Willow Pond Plaza',20164),('moe@gmail.com','Muhammad Arif','Queens','NY','US','43-54 Smart Street',11355),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Utica Avenue',11234),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','4565 Bedford Avenue',11235),('moe@gmail.com','Muhammad Arif','Bronx','NY','US','3243 Irwin Avenue',10463),('moe@gmail.com','Muhammad Arif','Queens','NY','US','34-54 44th Street',11101),('moe@gmail.com','Muhammad Arif','Bronx','NY','US','3455 Boston Road',10469),('moe@gmail.com','Muhammad Arif','Millsboro','DE','US','34534 Pontoon Point Road',19966),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Batchelder Street',11229),('moe@gmail.com','Muhammad Arif','Queens','NY','US','34-54 44th Street',11101),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Stillwell Avenue',11223),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Stillwell Avenue',11223),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','Muhammad Arif','Bronx','NY','US','4234 Vireo Avenue',10470),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Batchelder Street',11229),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Utica Avenue',11234),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','Muhammad Arif','Bronx','NY','US','3243 Irwin Avenue',10463),('moe@gmail.com','Muhammad Arif','New York','NY','US','3454 Broadway',10031),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Utica Avenue',11234),('moe@gmail.com','Muhammad Arif','Queens','NY','US','45-65 163rd Street',11358),('moe@gmail.com','Muhammad Arif','Ocean View','DE','US','34544 Atlantic Avenue',19970),('moe@gmail.com','Muhammad Arif','Clinton Township','MI','US','34544 Chope Place',48035),('moe@gmail.com','Muhammad Arif','Bronx','NY','US','3243 Irwin Avenue',10463),('moe@gmail.com','Muhammad Arif','Levittown','NY','US','3434 Hempstead Turnpike',11756),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Utica Avenue',11234),('moe@gmail.com','Muhammad Arif','Queens','NY','US','34-54 44th Street',11101),('moe@gmail.com','Muhammad Arif','Ashburn','VA','US','23453 Morning Walk Drive',20148),('moe@gmail.com','Muhammad Arif','Farmington Hills','MI','US','34545 Old Timber Road',48331),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Stillwell Avenue',11223),('moe@gmail.com','Muhammad Arif','New York','NY','US','3454 Broadway',10031),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Stillwell Avenue',11223),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Utica Avenue',11234),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Utica Avenue',11234),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','3453 Bedford Avenue',11210),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Utica Avenue',11234),('moe@gmail.com','Muhammad Arif','Queens','NY','US','76-56 47th Avenue',11373),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 60th Street',11204),('moe@gmail.com','Muhammad Arif','Bronx','NY','US','3243 Irwin Avenue',10463),('moe@gmail.com','Muhammad Arif','Brooklyn','NY','US','2343 Batchelder Street',11229);
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
  `products` varchar(500) DEFAULT NULL,
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
INSERT INTO `Orders` VALUES ('cs_test_b10p7NMX1gZbQ1sKmo0agolMRUjs9T3w2KO8uKwvkWeV02JBfG69uOgylK','moe@gmail.com','Muhammad Arif','{name:Adidas South Park,description:Size: 11 }',2,'2021-10-17 21:20:01',530,'cus_KQXrwkCW2X0SD3'),('cs_test_b1l0iHwsxPunywH2cEwz5hH5HksLairldeGWiZurnK9upTcPloFWtMX6EI','moe@gmail.com','Muhammad Arif','{name:Air Force 1 Skeleton,description:Size: 11 }',7,'2021-10-17 21:23:36',1490,'cus_KQXv9aFYGbIXZ2'),('cs_test_b1wCoA8v1KvgF3sURP6Ib6MrJcV0Ko5hYUoBsc2zfZB3mfgy7aNj73SDIR','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 },{name:Adidas South Park,description:Size: 11 },{name:adidas Yeezy Slide Bone,description:Size: 14 },{name:adidas Yeezy Slide Pure,description:Size: 11 }]',3,'2021-10-17 21:33:48',740,'cus_KQY52hynRBzi27'),('cs_test_b10Yve49vLbmXEnFh1vI3PANulGqLBSpuBqId6SAoLqsLSHjyrhttvyc3z','moe@gmail.com','Muhammad Arif','[{},{name:Adidas South Park,description:Size: 11 ,quantity:2},{name:adidas Yeezy Slide Bone,description:Size: 14 ,quantity:1},{name:adidas Yeezy Slide Core,description:Size: 11 ,quantity:3}]',6,'2021-10-17 21:36:30',1380,'cus_KQY8Vmx9tPskjr'),('cs_test_b1RS81oo4606JUkgeNJ0mcJRY8iWjcD5GkCwexIh33nxKq157SJbzuNFB7','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1},{name:adidas Yeezy Slide Bone,description:Size: 14 ,quantity:1},{name:adidas Yeezy Slide Pure,description:Size: 11 ,quantity:1}]',3,'2021-10-17 21:38:15',740,'cus_KQYAwDj6dWrn52'),('cs_test_a1UKZMLTDruOXCevJRLqvrPPSrd99npEDLctZ1b9S0KIukyQPoc0o9RDpC','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1}]',1,'2021-10-17 21:52:36',250,'cus_KQYOJIbgTdU6v0'),('cs_test_b1z5umTz1FWAPEk2ta6qpNhZXxkKIPyra5h93UkxEB1ArpxzaBU249aszY','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1},{name:adidas Yeezy Slide Bone,description:Size: 14 ,quantity:1}]',2,'2021-10-17 21:54:30',530,'cus_KQYQD0ihek4yW3'),('cs_test_a1sSzXHsWYeiKohDsPvNBEOTyjItopnT98FGhnHIkjkM61obgRVtIqh0OW','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1}]',1,'2021-10-17 21:55:43',250,'cus_KQYRUAWUZoYJHE'),('cs_test_b15WitZewuFc7uqkniei7jy4PiNlZMzhrBB37c4030jWBw626ITPF5hT2b','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1},{name:adidas Yeezy Slide Pure,description:Size: 11 ,quantity:1}]',2,'2021-10-17 21:57:31',460,'cus_KQYT0TcYo3bD0h'),('cs_test_a1DU4awsMr6m411bLCDwZKfLB7UWgGFHAaQTuz6QmuS1DqbgvB9YdBDD8I','moe@gmail.com','Muhammad Arif','[{name:Nike Dunk Low Ceramic,description:Size: 11 ,quantity:1}]',1,'2021-10-17 23:44:50',280,'cus_KQaCcR6FBDKXze'),('cs_test_a1gcjqmnPe07OmQRV3uCybJxpaxOg1jy9Dc4AC5Elvuhv76Uet5dbW2dOP','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1}]',1,'2021-10-17 23:48:58',250,'cus_KQaGKvPWmUN0jR'),('cs_test_a1TjAL3glta3ZufZO92y99joOzL39xYhtrckp45nPze6uKzxnBCM4FEilY','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1}]',1,'2021-10-17 23:50:49',250,'cus_KQaIE3M1BmHtOG'),('cs_test_a1OmSngX2MG6m1hy4enXJECBDtph2A7j5ZomWk5zbqWL619mNjAbZcm4lO','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1}]',1,'2021-10-17 23:53:53',250,'cus_KQaLrxljdHZuJm'),('cs_test_a197flzDeNMULADznqMMkHtdHSvAzfDpLDatKYN2xAfR4loaeXwRfdPNFs','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1}]',1,'2021-10-17 23:58:08',250,'cus_KQaQVB5FcrwzZH'),('cs_test_a1AibJKpF7IWOelrawL1sp5SvFB5sE3f6KwrTW0IgxICvXIHGFwpUJdDtr','moe@gmail.com','Muhammad Arif','[{name:adidas Yeezy Slide Bone,description:Size: 14 ,quantity:1}]',1,'2021-10-17 23:59:42',280,'cus_KQaR9TTikqgiqP'),('cs_test_a1txI9bJS0r35Gbk0A7ai9u2F9XKjptIFYb2qkX2OQvaDehHTnjmDkB1Gp','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1}]',1,'2021-10-18 00:01:21',250,'cus_KQaTeOV2l0g6iY'),('cs_test_a1pLEo22E4sxeVtlCHF3xcAvBPR8vzWTMajMSvNNHyRGeTbx9WVnk2eYj2','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1}]',1,'2021-10-18 00:03:07',250,'cus_KQaVG2fI80F0tE'),('cs_test_a1e2Br6TXOvIocDkgQsyPLT733wWdSxW9vi5Ftlg2HLaJnQQxGCAMGs9Yf','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1}]',1,'2021-10-18 00:04:04',250,'cus_KQaVpM9d96uXQZ'),('cs_test_a1sTuOilxUmRdYLBWo38XiX97Bszq023i6MSvP7kJZ8yUSsVI3jHK51nf5','moe@gmail.com','Muhammad Arif','[{name:Adidas South Park,description:Size: 11 ,quantity:1}]',1,'2021-10-18 00:06:04',250,'cus_KQaXYPOLWmmftL'),('cs_test_a1cCccUeKS3TQmMwF0Ae0ghTJhzP23tptH9DW5DdkXO5Ps4KukTbQA0Wgd','moe@gmail.com','Muhammad Arif','[{name:Balenciaga Arena High White,description:Size: 11 ,quantity:1}]',1,'2021-10-19 00:52:09',240,'cus_KQyWBCtwlYd4Nt');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Moe','moe123@gmail.com','$2a$08$s/BHrcRm2OSqs/Q7IyUhqeT1x7/8gGRE2TUfKbtdvSqU0iP699fqS'),(2,'tony','tonysopranos@mafia.com','$2a$08$Fv8HN.UreQj6mkp1Ha7hdu01J2clQUNd7oLkPjLA27BlDpZxD4B3y'),(3,'Usman','usmanali@gmail.com','$2a$08$B6JMSCLYAMr1EIJwggjkR./MgqUmAVT9Cdi4DK8qs446aGjfdEBLi'),(4,'tony','tonyloveu@gmail.com','$2a$08$Q9lVe1SC1ruYv/AAj9dPcOnRKTod2NWx4MqsM3vaRmtjcX9VvVxna'),(5,'ghost','','$2a$08$Uu20Yu8jBAKijNpGEyB5oeGUZ51ttI.ZICRRr4sG/aNvNDlomVKUe'),(6,'User1','testinguser1@gmail.com','$2a$08$CjKqxroJ3yyKYAWbbjHEpOQSiZMfyVjNyAmOEAtgsEwqMDmev7CVu'),(7,'testinguser2','testinguser2@gmail.com','$2a$08$4Qyx1wkaHiz3YScGWIDuU.QnD5LPult4pOR4CuZ48l8QN33/WFEIu'),(8,'hfghfgh','dfgdfg@gmail.com','$2a$08$eGeccIjzQPPhCULtglsJgeyrh3TSev0wvbOBCvD4t3UT6IypJFHae'),(9,'erterter','retert@gmail','$2a$08$zyiT.n0c64G3RfwULY9M9.lOlbGANvET8bZjRsCHjVTtZDadRGqiO'),(10,'fgbfgbfgb','234234@gmail','$2a$08$M8zz.1fAl3H/7c1hxuJeyupejCREcA/.Ob1XJoiqu9/DdJvQ7725y'),(11,'weeee','weeee@gmail.com','$2a$08$xCmfqB7p/D8.CB5YfftPK.P7X3xATIw0KMaF6KBWrVENC4li3VqS2'),(12,'fsdfsdf','dfgbdff@yqahoo.com','$2a$08$Q3Nt0DI7q6xV10ZkwkzCFuiJO8S8Fcs/9Hhdj9WD2RjTiNSErG8ZG'),(13,'testinguser3','testinguser3@gmail.com','$2a$08$l0O1d85rMom2H0IOLcsLsODpLvsqTfjrhdSQlEyqKWXrXFK.i/o6W'),(14,'testinguser7','testinguser7@gmail.com','$2a$08$2sWCa/xd4NrDmDRx/LZDHeleEBIn7a8YOtUWF/j7n0QnneGSCUCby'),(15,'testing','testing5@gmail.com','$2a$08$4W6R5kYp4p62ZRYRbnL.POpikrDNSRhP5K06ZuFvtaSGwfcbpbh4m'),(16,'Telmo','telmoacadmeny5@gmail.com','$2a$08$twIppGIVM4U8NWMZSvCcCehrklAiwUex5umYMVSo1eQIelNtSFZh.'),(17,'Muhammad','moe.a2113@gmail.com','$2a$08$LFKx/K4n3mLa5wBogvNf7eiaaFda.k3NCuGjtnbT3w/BambpJLG9i');
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

-- Dump completed on 2021-10-18 21:10:43
