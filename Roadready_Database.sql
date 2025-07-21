-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: roadready_db
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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `isbn` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `publication_year` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `available` bit(1) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `license_plate` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `price_per_day` decimal(38,2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,_binary '\0','Tata','Purple','MH14YZ9001','Harrier',3200.00,'SUV',2024),(2,_binary '\0','Hyundai','Black','MH12TR4007','Creta',3000.00,'SUVE',2028),(3,_binary '\0','Suzuki','White','MH12TR4567','Creta',2500.00,'SUV',2022),(4,_binary '\0','Hyundai','White','MH12TR4567','Creta',2500.00,'SUV',2022),(5,_binary '\0','Toyota','Silver','MH15TC1235','Innova Crysta',2800.00,'SUV',2023),(6,_binary '\0','Tata','Grey','MH15TC1200','Innova Crysta',2800.00,'SUVE',2020),(9,_binary '\0','Honda','Silver','MH14HN5678','City',1800.00,'Sedan',2021),(10,_binary '\0','Maruti Suzuki','Red','MH13SW2025','Swift',1200.00,'Hatchback',2023),(13,_binary '\0','Tata','Red','MH14YZ9001','Harrier',3200.00,'SUV',2024),(15,_binary '\0','camry','Orange','MH2424','gss',4000.00,'Schoda',2007),(16,_binary '\0','Tata','White','MH12DE1234','Nexon',5000.00,'SUV',2024),(17,_binary '\0','abcd','Purple','MH2020','xyz',5000.00,'SUV',2023),(18,_binary '\0','Tata','Blue','MH140','Nexon',1000.00,'SUV10',2000),(20,_binary '\0','Ford','Silver','MH04IJ9876','EcoSport',2700.00,'Compact SUV',2022),(21,_binary '\0','Volkswagen','Grey','MH08QR1234','Virtus',2900.00,'Sedan',2023),(22,_binary '','Maruti','White','MH06MN8765','Baleno',300.00,'Hatchback',2022),(23,_binary '\0','Honda','Blue','MH06MN8765','City',2000.00,'Sedan',2021),(24,_binary '','Ford','Blue','MH08QR1234','Nexon',2000.00,'SUV10',2025),(25,_binary '','Ford','Blue','MH04IJ9876','Virtus',2000.00,'SUV10',2022);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `reservation_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaf6fd6ligp6mxwr021slwiv8i` (`reservation_id`),
  CONSTRAINT `FKaf6fd6ligp6mxwr021slwiv8i` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` decimal(38,2) DEFAULT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `reservation_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKe7qdxh4fch1yfisduker8j6w2` (`reservation_id`),
  KEY `FKj94hgy9v5fw1munb90tar2eje` (`user_id`),
  CONSTRAINT `FKj94hgy9v5fw1munb90tar2eje` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKp8yh4sjt3u0g6aru1oxfh3o14` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (2,5000.00,'2025-06-26 02:10:31.752419','CARD','SUCCESS',5,NULL),(5,7500.00,'2025-07-06 05:34:32.812224','Credit Card','SUCCESS',11,NULL),(6,52000.00,'2025-07-06 05:47:03.383626','UPI','SUCCESS',12,NULL),(7,6000.00,'2025-07-06 06:06:05.099884','DEBIT_CARD','SUCCESS',4,NULL),(11,60000.00,'2025-07-13 03:40:41.671813','CREDIT_CARD','SUCCESS',16,NULL),(14,5000.00,'2025-07-16 04:44:43.537537','DEBIT_CARD','SUCCESS',14,10),(15,5000.00,'2025-07-16 06:24:14.427346','DEBIT_CARD','SUCCESS',19,23),(16,5000.00,'2025-07-17 02:47:12.521219','UPI','SUCCESS',20,10),(17,200.00,'2025-07-17 07:33:48.489156','UPI','SUCCESS',22,28);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dropoff_location` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `pickup_location` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `car_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkoxuu4vp8ex6mcc642sa11iyc` (`car_id`),
  KEY `FKb5g9io5h54iwl2inkno50ppln` (`user_id`),
  CONSTRAINT `FKb5g9io5h54iwl2inkno50ppln` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKkoxuu4vp8ex6mcc642sa11iyc` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (3,'Pune','2025-07-05','Goa','2025-04-18','PENDING',3,1),(4,'Pune','2025-07-05','Goa','2025-04-18','PENDING',4,1),(5,'Chennai','2025-06-26','Bengluru','2025-06-26','PENDING',1,1),(9,'Makani','2025-07-09','Chennai','2025-07-07','PENDING',5,11),(10,'Killari','2025-07-17','Pccoe','2025-06-07','PENDING',1,11),(11,'xcdv','2026-07-17','asdf','2026-05-07','PENDING',6,10),(12,'asdf','2025-07-26','qwer','2025-07-11','PENDING',9,10),(14,'kolhapur','2025-07-20','karad','2025-07-10','PENDING',15,10),(16,'kolhapur','2025-07-04','karad','2025-07-02','PENDING',16,1),(18,'kolhapur','2025-07-22','karad','2025-07-19','PENDING',18,10),(19,'kolhapur','2025-07-14','karad','2025-07-12','PENDING',15,23),(20,'Singapur','2025-07-07','karad','2025-07-05','PENDING',20,10),(21,'Killari','2025-07-21','Udaypur','2025-07-19','PENDING',21,26),(22,'Killari','2025-07-12','karad','2025-07-11','PENDING',23,28);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Pune, India','shraddha@example.com','Shraddha','$2a$10$HCcSmHcCIOqAvL/w0sFUrubK5lNPWWNPzH8.SNNuHlXx3HH0po4lS','9876543210','CUSTOMER'),(2,'Pune, India','vasu@example.com','Vasudha','$2a$10$eoA9i/KhugnM7rE7hmDmQeryMua2jdWg6r99EZ612OeHbrL0vWnK6','8776543210','CUSTOMER'),(3,'Karad, India','ro@example.com','Rahul','$2a$10$fmLcVJKriRU4BviezjzycueITA3JHEsSnLqgSEq7cfNv4syppXVJS','8076543210','CUSTOMER'),(4,'HQ','admin@example.com','Admin','$2a$10$tvr34H7vwzItUhuXEqTAH.3Uq9h5OdroHvQgF3qydld9AQAjZVtPW','9999999999','CUSTOMER'),(5,'Mumbai','avani@123.com','Avani','$2a$10$Mbtl5PQLIU5dF8oxJaOwDe8d2QYJQEa.jiggTG10hh7.U8df7TKwC','6547895236','CUSTOMER'),(6,'Bengluru','virat@123.com','Virat','$2a$10$L2N3KD4J.B8/.PuAM5G5uel4lw4w.VhLrVr75h9SjlvmpxwiQ6bR2','5263895236','CUSTOMER'),(7,'Killari','sonali@123.com','Sonali','$2a$10$3d1jyqqdH4xAXdvjvJ.H/Oi8Pnj3QwmHZj6tS56nPikqJm/3tJllq','9874563214','CUSTOMER'),(10,'Akurdi','swami@example.com','Swami','$2a$10$l.lE7En0KbXges4jC7YO/.V1ggUr9Dx6BucrSl00wA88jdMOjuBjW','8796523698','CUSTOMER'),(11,'Killari bhag 2, Tq- Ausa, Dist-Latur','shru@example.com','Shraddha Gavkare','$2a$10$Io8VPK2qyEKH9Mg9wF5OFeH6SdPOHECSUXVbes8w3TLgItsHZR6gG','8766828263','CUSTOMER'),(17,'Admin Office','admings@example.com','AdminUser','$2a$10$exeHFlMJZCrWSAw/H.Y3GugcvF1Tqd3J2x995ISwRULC0mIseyZDO','9876543210','ADMIN'),(20,'Paris','shraddhagav@gmail.com','shraddha gav','$2a$10$mQEXLfNW9r2ebkZ35tBowubv8CoYJHs8y0qBWzrx0j5d6y3bTmFwi','8755263695','ADMIN'),(21,'Lohara','kittu@gmail.com','Kittu','$2a$10$uFFIDWUGgpIpopGirgb9xugny5kT8XhK86KQ3dxlwCrc0E/f4kJCy','8529637415','CUSTOMER'),(23,'Mumbai','shraddhagavkare19@gmail.com','Shivani','$2a$10$IC3f2G8Ra5lov/0ANO7gOudg.s00wuvpFpnUVak60Z6q9MtJGOZcm','7894561236','CUSTOMER'),(24,'Latur','kartik@gmail.com','kartik','$2a$10$VkoojGdz5xnRjsKlW16kCO/62tpuoD3lEGbyF0SH3L1ID2cMmQIdO','7894561234','CUSTOMER'),(25,'Mumbai','demo@gmail.com','Demo user','$2a$10$EkpyEzZV6Q9og8H/C.7xk.iiI66cMJEmAa35D1naXAQWR6zWlp7um','7894561236','CUSTOMER'),(26,'Mumbai','shraddha.gavkare22@pccoepune.org','Demo user','$2a$10$wcmaPTJOG7I8rwKPpshiku2dyrF8VwT8SiomuApQzZpepPu.IHXxe','7894561236','CUSTOMER'),(27,'Mumbai','shraddha.gavkare22@pccoepuneorg','Shraddha Gavkare','$2a$10$uivUQ.EDWVTBlz5pGocMCeLTJJPoZfBIq1SMcM31kgEMzp2RMktV2','7894561236','CUSTOMER'),(28,'Mumbai','shraddhagavkare13@gmail.com','Shraddha Gavkare','$2a$10$Umlt4UNApOmiH5/p26SjPuvYaqmpWFXv43V8um5fgFk4Qq/NBrp3u','7894561236','CUSTOMER');
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

-- Dump completed on 2025-07-19  8:03:36
