CREATE DATABASE  IF NOT EXISTS `online_store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `online_store`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: online_store
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'Электроника','Смартфоны, ноутбуки, планшеты и другая электроника'),(2,'Одежда','Мужская, женская и детская одежда'),(3,'Книги','Художественная и учебная литература'),(4,'Дом и сад','Товары для дома и садоводства'),(5,'Электроника','Смартфоны, ноутбуки, планшеты и другая электроника'),(6,'Одежда','Мужская, женская и детская одежда'),(7,'Книги','Художественная и учебная литература'),(8,'Дом и сад','Товары для дома и садоводства'),(9,'Электроника','Смартфоны, ноутбуки, планшеты и другая электроника'),(10,'Одежда','Мужская, женская и детская одежда'),(11,'Книги','Художественная и учебная литература'),(12,'Дом и сад','Товары для дома и садоводства'),(13,'Телевизоры','Устройства для просмотра телевизионных программ и мультимедиа'),(14,'Бытовая техника','Техника для дома: холодильники, стиральные машины и др.'),(15,'Аксессуары','Чехлы, наушники, зарядные устройства и другие аксессуары'),(16,'Телевизоры','Устройства для просмотра телевизионных программ и мультимедиа'),(17,'Бытовая техника','Техника для дома: холодильники, стиральные машины и др.'),(18,'Аксессуары','Чехлы, наушники, зарядные устройства и другие аксессуары'),(19,'Телевизоры','Устройства для просмотра телевизионных программ и мультимедиа'),(20,'Бытовая техника','Техника для дома: холодильники, стиральные машины и др.'),(21,'Аксессуары','Чехлы, наушники, зарядные устройства и другие аксессуары');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `patronymic` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Сергей','Сидоров','Сергеевич','sidorov@mail.ru','+79163456789'),(2,'Ольга','Смирнова','Алексеевна','smirnova@mail.ru','+79164567890'),(3,'Анна','Кузнецова','Дмитриевна','kuznetsova@mail.ru','+79165678901');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_in_stock`
--

DROP TABLE IF EXISTS `goods_in_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_in_stock` (
  `warehouse_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `goods_in_stock_id` int NOT NULL,
  PRIMARY KEY (`goods_in_stock_id`),
  KEY `warehouse_id` (`warehouse_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `goods_in_stock_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`warehouse_id`),
  CONSTRAINT `goods_in_stock_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_in_stock`
--

LOCK TABLES `goods_in_stock` WRITE;
/*!40000 ALTER TABLE `goods_in_stock` DISABLE KEYS */;
INSERT INTO `goods_in_stock` VALUES (1,1,1,1),(2,2,1,2),(3,3,1,3);
/*!40000 ALTER TABLE `goods_in_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_of_product`
--

DROP TABLE IF EXISTS `list_of_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_of_product` (
  `list_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `order_number` decimal(10,2) NOT NULL,
  PRIMARY KEY (`list_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `list_of_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `list_of_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_of_product`
--

LOCK TABLES `list_of_product` WRITE;
/*!40000 ALTER TABLE `list_of_product` DISABLE KEYS */;
INSERT INTO `list_of_product` VALUES (1,1,1,1,20231001.00),(2,2,2,1,1021.00),(3,3,3,1,20231003.00),(4,1,1,1,20231001.00),(5,2,2,1,20231002.00),(6,3,3,1,20231003.00),(7,1,1,1,20231001.00),(8,2,2,1,20231002.00),(9,3,3,1,20231003.00),(10,1,1,1,20231001.00),(11,2,2,1,20231002.00),(12,3,3,1,20231003.00),(13,1,1,1,20231001.00),(14,2,2,1,20231002.00),(15,3,3,1,20231003.00),(16,1,1,1,20231001.00),(17,2,2,1,20231002.00),(18,3,3,1,20231003.00);
/*!40000 ALTER TABLE `list_of_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(20) DEFAULT 'Новый',
  `quantity` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2023-10-01 14:30:00',120000.00,'delivered',6),(2,2,'2023-10-02 15:45:00',70000.00,'shipped',10),(3,3,'2023-10-03 10:20:00',30000.00,'processing',3);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `product_catalog`
--

DROP TABLE IF EXISTS `product_catalog`;
/*!50001 DROP VIEW IF EXISTS `product_catalog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_catalog` AS SELECT 
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `price`,
 1 AS `category_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `avg_price` decimal(10,2) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categorie` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,75990.00,20,4,300.00,250.00,'цветок',4),(2,49990.00,30,4,2567.00,40000.00,'горшок',10),(3,1990.00,200,5,444.00,55555.00,'телефон',6);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_products`
--

DROP TABLE IF EXISTS `view_products`;
/*!50001 DROP VIEW IF EXISTS `view_products`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_products` AS SELECT 
 1 AS `товар`,
 1 AS `цена`,
 1 AS `список_склада`,
 1 AS `категория`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `warehouse_id` int NOT NULL AUTO_INCREMENT,
  `address` int NOT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,9876),(2,999),(3,456),(4,9876),(5,999),(6,456),(7,9876),(8,999),(9,456),(10,9876),(11,999),(12,456),(13,9876),(14,999),(15,456),(16,9876),(17,999),(18,456),(19,9876),(20,999),(21,456);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `product_catalog`
--

/*!50001 DROP VIEW IF EXISTS `product_catalog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_catalog` AS select `p`.`product_id` AS `product_id`,`p`.`product_name` AS `product_name`,`p`.`price` AS `price`,`c`.`category_name` AS `category_name` from (`products` `p` join `categorie` `c` on((`p`.`category_id` = `c`.`category_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_products`
--

/*!50001 DROP VIEW IF EXISTS `view_products`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_products` AS select `products`.`product_id` AS `товар`,`products`.`price` AS `цена`,`products`.`stock_quantity` AS `список_склада`,`products`.`category_id` AS `категория` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-26 18:25:36
