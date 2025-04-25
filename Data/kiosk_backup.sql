CREATE DATABASE  IF NOT EXISTS `kiosk` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kiosk`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: localhost    Database: kiosk
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `saleprice` int DEFAULT NULL,
  `insertdate` datetime DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'nike','나이키 에어',265,'white',35,100000,'2023-12-12 00:00:00'),(2,'newBalance','발렌스 블랙',265,'white',31,150000,'2023-12-12 00:00:00'),(3,'proSpecs','프로액티브',265,'white',30,130000,'2023-12-13 00:00:00'),(4,'nike','나이키 에어',255,'white',30,100000,'2023-12-12 00:00:00'),(5,'newBalance','발렌스 블랙',265,'red',50,150000,'2023-12-12 00:00:00'),(6,'proSpecs','프로액테브',255,'red',28,130000,'2023-12-13 00:00:00');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `product_seq` int NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `quantity` int DEFAULT NULL,
  `purchaseprice` int DEFAULT NULL,
  `purchasedate` date DEFAULT NULL,
  PRIMARY KEY (`seq`,`product_seq`,`user_id`),
  KEY `fk_product_has_user_user1_idx` (`user_id`),
  KEY `fk_product_has_user_product_idx` (`product_seq`),
  CONSTRAINT `fk_product_has_user_product` FOREIGN KEY (`product_seq`) REFERENCES `product` (`seq`),
  CONSTRAINT `fk_product_has_user_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (1,1,'jangbee',5,500000,'2024-06-05'),(2,1,'yubee',5,500000,'2024-06-05'),(3,2,'yubee',3,450000,'2024-06-05'),(4,6,'yubee',2,260000,'2024-06-05'),(5,2,'jangbee',3,450000,'2024-06-05'),(6,2,'kwanwoo',3,450000,'2024-06-05');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(10) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('jangbee','2345','장비','010-1111-3333'),('kwanwoo','3456','관우','010-1111-4444'),('yubee','1234','유비','010-1111-2222');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-05 15:38:59
