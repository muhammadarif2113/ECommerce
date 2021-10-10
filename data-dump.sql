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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Balenciaga','Balenciaga Triple White',44,1,'Men',600,1,'/images/sneakers/balenciagatriplewhite.jpg','/images/balenciaga-triplewhite.jpg, /images/balenciaga-triplewhite.jpg'),(2,'Balenciaga','Balenciaga White Red Blue',44,1,'Men',550,1,'/images/sneakers/balenciagawhiteredblue.jpg','/images/balenciaga-triplewhite.jpg, /images/balenciaga-triplewhite.jpg'),(3,'Jordan','Jordan 1 Turbo Green',11,1,'Men',320,1,'images/sneakers/jordan1turbogreen.jpg','/images/balenciaga-triplewhite.jpg, images/jordan1-turbogreen.jpg'),(4,'Off-White','Off-White Converse',11,0,'Men',480,1,'/images/sneakers/off-whiteconverse.jpg','/images/offwhite-converse.jpg, /images/off-whiteconverse.jpg'),(5,'Yeezy','adidas Yeezy Slide Core',11,0,'Men',200,1,'/images/sneakers/adidasyeezyslidecore.jpg','/images/core-slide.jpg, /images/core-slide.jpg'),(6,'Yeezy','adidas Yeezy Slide Pure',11,0,'Men',210,1,'/images/sneakers/adidasyeezyslidepure.jpg','/images/core-slide.jpg, /images/core-slide.jpg'),(7,'Yeezy','adidas Yeezy Slide Resin',11,0,'Men',180,1,'/images/sneakers/adidasyeezyslideresin.jpg','/images/core-slide.jpg, /images/core-slide.jpg'),(8,'Nike','Nike Tiffany Dunk High',11,0,'Men',510,1,'/images/sneakers/niketiffanydunkhigh.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(9,'Adidas','Adidas South Park',11,0,'Men',250,1,'/images/sneakers/adidassouthpark.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(10,'Balenciaga','Balenciaga Track Blue',11,0,'Women',500,1,'/images/sneakers/balenciagatrackblue.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(11,'Balenciaga','Balenciaga White Arena',11,1,'Men',240,1,'/images/sneakers/balenciagawhitearena.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(12,'Bape','Bapesta Blue Patch',11,0,'Men',360,1,'/images/sneakers/bapestabluepatch.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(13,'Bape','Bapesta Camo Pink',11,0,'Men',340,1,'/images/sneakers/bapestacamopink.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(14,'Bape','Bapesta Camo Purple',11,0,'Men',340,1,'/images/sneakers/bapestacamopurple.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(15,'Christian Louboutin','Christian Louboutin Louis Spikes',44,1,'Men',400,1,'/images/sneakers/christianlouboutinlouisspikes.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(16,'Jordan','Jordan 1 Court Purple',10,1,'Men',260,1,'/images/sneakers/jordan1courtpurple.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(17,'Jordan','Jordan 1 Gold Toe',11,1,'Men',300,1,'/images/sneakers/jordan1goldtoe.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(18,'Jordan','Jordan 1 Metallic Gold',9,0,'Men',200,1,'/images/sneakers/jordan1metallicgold.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(19,'Jordan','Jordan 1 Pine Green',12,1,'Men',240,1,'/images/sneakers/jordan1pinegreen.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(20,'Jordan','Jordan 1 Silver Toe',11,0,'Women',260,1,'/images/sneakers/jordan1silvertoe.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(21,'Jordan','Jordan 1 Volt Gold',12,0,'Men',200,1,'/images/sneakers/jordan1voltgold.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(22,'Jordan','Jordan 3 Cement Black',12,1,'Men',250,1,'/images/sneakers/jordan3cementblack.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(23,'Jordan','Jordan 3 Fire Red',9,0,'Men',220,1,'/images/sneakers/jordan3firered.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(24,'Jordan','Jordan 3 Mocha',9,1,'Men',170,1,'/images/sneakers/jordan3mocha.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(25,'Jordan','Jordan 3 Tinker Black Cement',10,1,'Men',140,1,'/images/sneakers/jordan3tinkerblackcement.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(26,'Jordan','Jordan 3 UNC',10,1,'Men',280,1,'/images/sneakers/jordan3unc.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(27,'Jordan','Jordan 4 Black Cat',10,1,'Men',320,1,'/images/sneakers/jordan4blackcat.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(28,'Jordan','Jordan 4 Fire Red',9,0,'Men',360,1,'/images/sneakers/jordan4firered.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(29,'Jordan','Jordan 4 Hot Punch',10,0,'Women',260,1,'/images/sneakers/jordan4hotpunch.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(30,'Jordan','Jordan 6 Bordeaux',11,1,'Men',250,1,'/images/sneakers/jordan6bordeaux.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(31,'Jordan','Jordan 6 Carmine',10,0,'Men',250,1,'/images/sneakers/jordan6carmine.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(32,'Jordan','Jordan 6 Gatorade',12,0,'Men',250,1,'/images/sneakers/jordan6gatorade.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(33,'Jordan','Jordan 6 Sport Blue',12,0,'Men',250,1,'/images/sneakers/jordan6sportblue.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(34,'Jordan','Jordan 6 Tinker',11,0,'Men',200,1,'/images/sneakers/jordan6tinker.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(35,'Jordan','Jordan 11 Jubilee',12,0,'Men',280,1,'/images/sneakers/jordan11jubilee.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(36,'Nike','Nike Dunk Low Blue Coast',11,0,'Women',340,1,'/images/sneakers/nikedunklowbluecoast.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(37,'Nike','Nike Dunk Low Ceramic',11,0,'Men',280,1,'/images/sneakers/nikedunklowceramic.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(38,'Nike','Sacai Pine Green',10,1,'Men',350,1,'/images/sneakers/sacaipinegreen.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(39,'Yeezy','Yeezy 500 Blush',11,1,'Men',250,1,'/images/sneakers/yeezy500blush.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(40,'Yeezy','adidas Yeezy Slide Bone',14,1,'Men',280,1,'/images/sneakers/adidasyeezyslidebone.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(41,'Jordan','Jordan 12 Taxi',11,0,'Men',550,1,'/images/sneakers/jordan12taxi.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(42,'Nike','Air Force 1 Kith',11,0,'Men',180,1,'/images/sneakers/airforce1kith.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(43,'Nike','Air Force 1 Skeleton',11,1,'Men',180,1,'/images/sneakers/airforce1skeleton.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(44,'Nike','Air Max 95 Pink',11,0,'Men',275,1,'/images/sneakers/airmax95pink.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(45,'CDG','CDG Blazer',8,0,'Men',255,1,'/images/sneakers/cdgblazer.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(46,'Nike','Nike Dunk High Varsity Black',11,1,'Men',250,1,'/images/sneakers/nikedunkhighvarsityblack.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(47,'Jordan','Jordan 1 Fearless',10,1,'Men',290,1,'/images/sneakers/jordan1fearless.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(48,'Jordan','Jordan 1 Mid Chicago',9,0,'Men',170,1,'/images/sneakers/jordan1midchicago.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(49,'Jordan','Jordan 3 Pure White',12,0,'Men',300,1,'/images/sneakers/jordan3purewhite.jpg','/images/DSC_1014.jpg, images/DSC_1014.jpg'),(50,'Jordan','Jordan 4 Cool Grey',9,1,'Men',230,1,'/images/sneakers/jordan4coolgrey.jpg',''),(51,'Jordan','Jordan 5 Fire Red',12,0,'Men',220,1,'/images/sneakers/jordan5firered.jpg',''),(52,'Jordan','Jordan 7 Cigar',11,1,'Men',150,1,'/images/sneakers/jordan7cigar.jpg',''),(53,'Jordan','Jordan 9 Kobe',6,0,'Men',250,1,'/images/sneakers/jordan9kobe.jpg',''),(54,'Jordan','Jordan 9 Racer Blue',11,0,'Men',280,1,'/images/sneakers/jordan9racerblue.jpg',''),(55,'Jordan','Jordan 11 Bred',7,1,'Men',260,1,'/images/sneakers/jordan11bred.jpg',''),(56,'Jordan','Jordan 11 Low Legend Blue',12,0,'Men',220,1,'/images/sneakers/jordan11lowlegendblue.jpg',''),(57,'Jordan','Jordan 12 Reverse Flu Game',11,1,'Men',200,1,'/images/sneakers/jordan12reverseflugame.jpg',''),(58,'Nike','Nike KD 4 Easter',10,1,'Men',250,1,'/images/sneakers/nikekd4easter.jpg',''),(59,'Nike','Nike KD 4 Galaxy',10,1,'Men',350,1,'/images/sneakers/nikekd4galaxy.jpg',''),(60,'Nike','Nike Dunk High Bodega',9,0,'Men',220,1,'/images/sneakers/nikedunkhighbodega.jpg',''),(61,'Nike','Nike Dunk High Notre',9,0,'Men',200,1,'/images/sneakers/nikedunkhighnotre.jpg',''),(62,'Nike','Nike Dunk Low Barely Green',7,0,'Men',150,1,'/images/sneakers/nikedunklowbarelygreen.jpg',''),(63,'Yeezy','Yeezy 350 Bred',10,1,'Men',330,1,'/images/sneakers/yeezy350bred.jpg',''),(64,'Yeezy','Yeezy 350 Zyon',12,0,'Men',235,1,'/images/sneakers/yeezy350zyon.jpg',''),(65,'Yeezy','Yeezy 500 Salt',8,0,'Men',360,1,'/images/sneakers/yeezy500salt.jpg','');
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

-- Dump completed on 2021-10-09 20:23:09
