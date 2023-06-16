CREATE DATABASE  IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shop`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) DEFAULT NULL,
  `thumbnail` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Chairs','https://xstore.8theme.com/elementor2/furniture3/product-category/furniture/chairs/'),(2,'Outdoor','https://xstore.8theme.com/elementor2/furniture3/'),(3,'Storage','https://xstore.8theme.com/elementor2/furniture3/'),(4,'Dinnerware','https://xstore.8theme.com/elementor2/furniture3/'),(5,'Furnishings','https://xstore.8theme.com/elementor2/furniture3/'),(6,'Lighting','https://xstore.8theme.com/elementor2/furniture3/'),(7,'Curtains','https://xstore.8theme.com/elementor2/furniture3/'),(8,'Mirrors','https://xstore.8theme.com/elementor2/furniture3/'),(9,'Furniture','https://xstore.8theme.com/elementor2/furniture3/'),(10,'Bar Furniture','https://xstore.8theme.com/elementor2/furniture3/'),(11,'Book Cases','https://xstore.8theme.com/elementor2/furniture3/');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(1024) DEFAULT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_galleries_products1_idx` (`product_id`),
  CONSTRAINT `fk_galleries_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (139,'assets/image/img_product/Image-product-6.1-min-300x300.jpg',1),(140,'assets/image/img_product/Image-product-6.2-min-300x300.jpg',1),(147,'assets/image/img_product/Image-product-13.1-min-300x300.jpg',4),(148,'assets/image/img_product/Image-product-13.2-min-300x300.jpg',4),(149,'assets/image/img_product/Image-product-13.3-min-300x300.jpg',4),(150,'assets/image/img_product/Image-product-10.1-min-300x300.jpg',2),(151,'assets/image/img_product/Image-product-10.2-min-300x300.jpg',2),(152,'assets/image/img_product/Image-product-10.3-min-300x300.jpg',2),(153,'assets/image/img_product/Image-product-11.1-min-300x300.jpg',3),(154,'assets/image/img_product/Image-product-11.2-min-300x300.jpg',3),(155,'assets/image/img_product/Image-product-11.3-min-300x300.jpg',3),(156,'assets/image/img_product/Image-product-4.1-min-300x300.jpg',5),(157,'assets/image/img_product/Image-product-4.3-min-300x300.jpg',5),(158,'assets/image/img_product/Image-product-7.1-min-300x300.jpg',6),(159,'assets/image/img_product/Image-product-7.2-min-300x300.jpg',6),(160,'assets/image/img_product/Image-product-7.3-min-300x300.jpg',6),(161,'assets/image/img_product/Image-product-9.1-min-300x300.jpg',7),(162,'assets/image/img_product/Image-product-9.2-min-300x300.jpg',7),(163,'assets/image/img_product/Image-product-5.1-min-300x300.jpg',8),(164,'assets/image/img_product/Image-product-5.2-min-300x300.jpg',8),(165,'assets/image/img_product/Image-product-5.3-min-300x300.jpg',8),(166,'assets/image/img_product/Image-product-12.1-min-300x300.jpg',9),(167,'assets/image/img_product/Image-product-12.2-min-300x300.jpg',9),(168,'assets/image/img_product/Image-product-8.1-min-300x300.jpg',10),(169,'assets/image/img_product/Image-product-8.2-min-300x300.jpg',10),(170,'assets/image/img_product/Image-product-8.3-min-300x300.jpg',10),(171,'assets/image/img_product/Image-product-2.1-min-300x300.jpg',11),(172,'assets/image/img_product/Image-product-2.2-min-300x300.jpg',11),(173,'assets/image/img_product/Image-product-3.1-min-300x300.jpg',12),(174,'assets/image/img_product/Image-product-3.2-min-300x300.jpg',12),(175,'assets/image/img_product/Image-product-3.3-min-300x300.jpg',12),(176,'assets/image/img_product/Image-product-1.1-min-300x300.jpg',13),(177,'assets/image/img_product/Image-product-1.2-min-300x300.jpg',13),(178,'assets/image/img_product/Image-product-1.3-min-300x300.jpg',13);
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_items_products1_idx` (`product_id`),
  KEY `fk_order_items_orders1_idx` (`order_id`),
  CONSTRAINT `fk_order_items_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `fk_order_items_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,76,1,2),(2,1,43,1,3),(3,1,76,7,2),(4,1,532,8,1),(5,1,520,8,8),(6,1,98,9,7),(7,1,76,10,2),(8,1,330,10,12),(9,1,43,11,3),(10,1,330,11,12),(11,1,176,11,10),(12,1,76,12,2),(13,1,123,12,4),(14,1,98,12,7),(15,1,176,13,10),(16,1,110,13,11),(17,1,144,13,9);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(1024) DEFAULT NULL,
  `status` text,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_orders_users1_idx` (`user_id`),
  CONSTRAINT `fk_orders_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'K4z!od4w','finished',1,'2023-05-26 03:24:48'),(2,'K4z!od4w','finished',3,'2023-05-23 03:24:48'),(3,'K4z!od4w','finished',1,'2023-05-30 03:24:48'),(4,'}q?L%Oq2','pending',7,'2023-05-04 03:24:48'),(5,'K4z!od4w','finished',1,'2023-06-04 03:24:48'),(6,'6wivYfU2','finished',10,'2023-06-04 03:24:48'),(7,'0tS[jI9c','pending',1,'2023-06-04 03:24:48'),(8,'K4z!od4w','finished',1,'2023-06-04 03:24:48'),(9,'K4z!od4w','finished',1,'2023-05-23 03:24:48'),(10,'fasdfgdg','finished',2,'2023-05-26 03:24:48'),(11,'dc3NcCvN','pending',2,'2023-06-11 15:47:29'),(12,'o8Pw80IV','pending',10,'2023-06-13 09:57:16'),(13,'0m8VnZLo','pending',10,'2023-06-13 10:08:18');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) DEFAULT NULL,
  `description` text,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `view` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_products_categories_idx` (`category_id`),
  CONSTRAINT `fk_products_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'A1 Bookcase Medium','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',532,15,17,9,'2023-05-27 08:10:01'),(2,'Achille Sideboard Unit','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',76,105,14,9,'2023-05-27 08:10:01'),(3,'Chapels Rattan Chair','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',43,50,12,10,'2023-05-27 08:10:01'),(4,'Cill Wooden Table Lamp','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',123,20,16,1,'2023-05-27 08:10:01'),(5,'Framed Mirror Small','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',180,56,29,1,'2023-05-27 08:10:01'),(6,'Ladybird Embroidery','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',176,89,4,10,'2023-05-27 08:10:01'),(7,'Living Meadow Cushion','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',98,85,49,5,'2023-05-27 08:10:01'),(8,'MG501 Cubian Chair','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',520,78,25,1,'2023-05-27 08:10:01'),(9,'Office Wooden Desk','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',144,45,83,8,'2023-05-27 08:10:01'),(10,'Palissa Dining Armchair','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',176,89,99,1,'2023-05-27 08:10:01'),(11,'Portable Meridi Lamp','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',110,85,62,7,'2023-05-27 08:10:01'),(12,'Saarinen Coffee Table','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',330,65,43,4,'2023-05-27 08:10:01'),(13,'Wooden Bedside Table','Nullam accumsan nulla in arcu condimentum imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur lacinia purus vitae lorem porttitor fermentum. In mattis erat, eu mattis libero.',215,80,14,9,'2023-05-27 08:10:01');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(1024) DEFAULT NULL,
  `password` varchar(1024) DEFAULT NULL,
  `role` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hvqhuy@gmail.com','123','Admin'),(2,'nkvy@gmail.com','234','User'),(3,'hnthienhy@gmail.com','456','User'),(7,'quangHuy@gmail.com','141998','User'),(10,'kay@gmail.com','2635','User');
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

-- Dump completed on 2023-06-16 21:35:04
