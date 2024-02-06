-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sql_reattempt
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `q1_product`
--

DROP TABLE IF EXISTS `q1_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q1_product` (
  `product_id` int NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q1_product`
--

LOCK TABLES `q1_product` WRITE;
/*!40000 ALTER TABLE `q1_product` DISABLE KEYS */;
INSERT INTO `q1_product` VALUES (1,'S8',1000.00),(2,'G4',800.00),(3,'iPhone',1400.00);
/*!40000 ALTER TABLE `q1_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q1_sales`
--

DROP TABLE IF EXISTS `q1_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q1_sales` (
  `seller_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `buyer_id` int DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  KEY `product_id` (`product_id`),
  CONSTRAINT `q1_sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `q1_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q1_sales`
--

LOCK TABLES `q1_sales` WRITE;
/*!40000 ALTER TABLE `q1_sales` DISABLE KEYS */;
INSERT INTO `q1_sales` VALUES (1,1,1,'2019-01-21',2,2000.00),(1,2,2,'2019-02-17',1,800.00),(2,2,3,'2019-06-02',1,800.00),(3,3,4,'2019-05-13',2,2800.00);
/*!40000 ALTER TABLE `q1_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q2_employee`
--

DROP TABLE IF EXISTS `q2_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q2_employee` (
  `id` int NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q2_employee`
--

LOCK TABLES `q2_employee` WRITE;
/*!40000 ALTER TABLE `q2_employee` DISABLE KEYS */;
INSERT INTO `q2_employee` VALUES (1,100.00),(2,200.00),(3,300.00),(4,400.00);
/*!40000 ALTER TABLE `q2_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q3_enrollment`
--

DROP TABLE IF EXISTS `q3_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q3_enrollment` (
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `grade` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q3_enrollment`
--

LOCK TABLES `q3_enrollment` WRITE;
/*!40000 ALTER TABLE `q3_enrollment` DISABLE KEYS */;
INSERT INTO `q3_enrollment` VALUES (2,2,95),(2,3,95),(1,1,90),(1,2,99),(3,1,80),(3,2,75),(3,3,82);
/*!40000 ALTER TABLE `q3_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q4_q5_movierating`
--

DROP TABLE IF EXISTS `q4_q5_movierating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q4_q5_movierating` (
  `movie_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  KEY `fk_movie_id` (`movie_id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `q4_q5_movies` (`movie_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `q4_q5_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q4_q5_movierating`
--

LOCK TABLES `q4_q5_movierating` WRITE;
/*!40000 ALTER TABLE `q4_q5_movierating` DISABLE KEYS */;
INSERT INTO `q4_q5_movierating` VALUES (1,1,3,'2020-01-12'),(1,2,4,'2020-02-11'),(1,3,2,'2020-02-12'),(1,4,1,'2020-01-01'),(2,1,5,'2020-02-17'),(2,2,2,'2020-02-01'),(2,3,2,'2020-03-01'),(3,1,3,'2020-02-22'),(3,2,4,'2020-02-25');
/*!40000 ALTER TABLE `q4_q5_movierating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q4_q5_movies`
--

DROP TABLE IF EXISTS `q4_q5_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q4_q5_movies` (
  `movie_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q4_q5_movies`
--

LOCK TABLES `q4_q5_movies` WRITE;
/*!40000 ALTER TABLE `q4_q5_movies` DISABLE KEYS */;
INSERT INTO `q4_q5_movies` VALUES (1,'Avengers'),(2,'Frozen 2'),(3,'Joker');
/*!40000 ALTER TABLE `q4_q5_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q4_q5_users`
--

DROP TABLE IF EXISTS `q4_q5_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q4_q5_users` (
  `user_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q4_q5_users`
--

LOCK TABLES `q4_q5_users` WRITE;
/*!40000 ALTER TABLE `q4_q5_users` DISABLE KEYS */;
INSERT INTO `q4_q5_users` VALUES (1,'Daniel'),(2,'Monica'),(3,'Maria'),(4,'James');
/*!40000 ALTER TABLE `q4_q5_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q6_person`
--

DROP TABLE IF EXISTS `q6_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q6_person` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q6_person`
--

LOCK TABLES `q6_person` WRITE;
/*!40000 ALTER TABLE `q6_person` DISABLE KEYS */;
INSERT INTO `q6_person` VALUES (1,'abc@gm.com'),(2,'def@gm.com'),(3,'abc@gm.com');
/*!40000 ALTER TABLE `q6_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q7_users`
--

DROP TABLE IF EXISTS `q7_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q7_users` (
  `user_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q7_users`
--

LOCK TABLES `q7_users` WRITE;
/*!40000 ALTER TABLE `q7_users` DISABLE KEYS */;
INSERT INTO `q7_users` VALUES (1,'aLice'),(2,'bOB');
/*!40000 ALTER TABLE `q7_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q8_q9_q10_department`
--

DROP TABLE IF EXISTS `q8_q9_q10_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q8_q9_q10_department` (
  `department_id` int NOT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q8_q9_q10_department`
--

LOCK TABLES `q8_q9_q10_department` WRITE;
/*!40000 ALTER TABLE `q8_q9_q10_department` DISABLE KEYS */;
INSERT INTO `q8_q9_q10_department` VALUES (1,'HR'),(2,'IT'),(3,'Finance'),(4,'Marketing'),(5,'Operations');
/*!40000 ALTER TABLE `q8_q9_q10_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q8_q9_q10_employees`
--

DROP TABLE IF EXISTS `q8_q9_q10_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q8_q9_q10_employees` (
  `employee_id` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_department` (`department_id`),
  KEY `fk_position` (`position_id`),
  CONSTRAINT `fk_department` FOREIGN KEY (`department_id`) REFERENCES `q8_q9_q10_department` (`department_id`),
  CONSTRAINT `fk_position` FOREIGN KEY (`position_id`) REFERENCES `q8_q9_q10_position` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q8_q9_q10_employees`
--

LOCK TABLES `q8_q9_q10_employees` WRITE;
/*!40000 ALTER TABLE `q8_q9_q10_employees` DISABLE KEYS */;
INSERT INTO `q8_q9_q10_employees` VALUES (1,'John','Doe','john.doe@example.com','2022-01-01',1,1,75000.00),(2,'Jane','Smith','jane.smith@example.com','2022-02-15',2,2,80000.00),(3,'Bob','Johnson','bob.johnson@example.com','2023-03-20',1,3,65000.00),(4,'Alice','Williams','alice.williams@example.com','2022-04-10',3,2,90000.00),(5,'Charlie','Brown','charlie.brown@example.com','2022-05-05',2,1,70000.00),(6,'Eva','Miller','eva.miller@example.com','2022-06-18',3,3,75000.00);
/*!40000 ALTER TABLE `q8_q9_q10_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q8_q9_q10_position`
--

DROP TABLE IF EXISTS `q8_q9_q10_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q8_q9_q10_position` (
  `position_id` int NOT NULL,
  `position_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q8_q9_q10_position`
--

LOCK TABLES `q8_q9_q10_position` WRITE;
/*!40000 ALTER TABLE `q8_q9_q10_position` DISABLE KEYS */;
INSERT INTO `q8_q9_q10_position` VALUES (1,'Manager'),(2,'Developer'),(3,'Accountant'),(4,'Marketing Specialist'),(5,'Operations Manager');
/*!40000 ALTER TABLE `q8_q9_q10_position` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-06 12:45:00
