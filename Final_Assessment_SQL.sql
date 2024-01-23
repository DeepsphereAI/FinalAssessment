-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: lva
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `q10_delivery`
--

DROP TABLE IF EXISTS `q10_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q10_delivery` (
  `delivery_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `customer_pref_delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q10_delivery`
--

LOCK TABLES `q10_delivery` WRITE;
/*!40000 ALTER TABLE `q10_delivery` DISABLE KEYS */;
INSERT INTO `q10_delivery` VALUES (1,1,'2019-08-01','2019-08-02'),(2,2,'2019-08-02','2019-08-02'),(3,1,'2019-08-11','2019-08-12'),(4,3,'2019-08-24','2019-08-24'),(5,3,'2019-08-21','2019-08-22'),(6,2,'2019-08-11','2019-08-13'),(7,4,'2019-08-09','2019-08-09');
/*!40000 ALTER TABLE `q10_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q11_champions`
--

DROP TABLE IF EXISTS `q11_champions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q11_champions` (
  `Year` int DEFAULT NULL,
  `Wimbledon` int DEFAULT NULL,
  `Fr_open` int DEFAULT NULL,
  `US_open` int DEFAULT NULL,
  `AU_open` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q11_champions`
--

LOCK TABLES `q11_champions` WRITE;
/*!40000 ALTER TABLE `q11_champions` DISABLE KEYS */;
INSERT INTO `q11_champions` VALUES (2018,1,1,1,1),(2019,1,1,2,2),(2020,2,1,2,2);
/*!40000 ALTER TABLE `q11_champions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q11_players`
--

DROP TABLE IF EXISTS `q11_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q11_players` (
  `player_id` int DEFAULT NULL,
  `player_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q11_players`
--

LOCK TABLES `q11_players` WRITE;
/*!40000 ALTER TABLE `q11_players` DISABLE KEYS */;
INSERT INTO `q11_players` VALUES (1,'Nadal'),(2,'Federer'),(3,'Novak');
/*!40000 ALTER TABLE `q11_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q12_product`
--

DROP TABLE IF EXISTS `q12_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q12_product` (
  `product_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q12_product`
--

LOCK TABLES `q12_product` WRITE;
/*!40000 ALTER TABLE `q12_product` DISABLE KEYS */;
INSERT INTO `q12_product` VALUES (1,10.00),(2,25.00),(3,15.00);
/*!40000 ALTER TABLE `q12_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q12_sales`
--

DROP TABLE IF EXISTS `q12_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q12_sales` (
  `sale_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q12_sales`
--

LOCK TABLES `q12_sales` WRITE;
/*!40000 ALTER TABLE `q12_sales` DISABLE KEYS */;
INSERT INTO `q12_sales` VALUES (1,1,101,10),(2,3,101,7),(3,1,102,9),(4,2,102,6),(5,3,102,10),(6,1,102,6);
/*!40000 ALTER TABLE `q12_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q13_scores`
--

DROP TABLE IF EXISTS `q13_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q13_scores` (
  `student_id` int DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `assignment1` int DEFAULT NULL,
  `assignment2` int DEFAULT NULL,
  `assignment3` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q13_scores`
--

LOCK TABLES `q13_scores` WRITE;
/*!40000 ALTER TABLE `q13_scores` DISABLE KEYS */;
INSERT INTO `q13_scores` VALUES (309,'Owen',88,47,87),(321,'Claire',98,95,37),(338,'Julian',100,64,43),(423,'Peyton',60,44,47),(896,'David',32,37,50),(235,'Camila',31,53,69);
/*!40000 ALTER TABLE `q13_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q14_rides`
--

DROP TABLE IF EXISTS `q14_rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q14_rides` (
  `id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `distance` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q14_rides`
--

LOCK TABLES `q14_rides` WRITE;
/*!40000 ALTER TABLE `q14_rides` DISABLE KEYS */;
INSERT INTO `q14_rides` VALUES (1,1,120),(2,2,317),(3,3,222),(4,7,100),(5,13,312),(6,19,50),(7,7,120),(8,19,400),(9,7,230);
/*!40000 ALTER TABLE `q14_rides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q14_users`
--

DROP TABLE IF EXISTS `q14_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q14_users` (
  `id` int DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q14_users`
--

LOCK TABLES `q14_users` WRITE;
/*!40000 ALTER TABLE `q14_users` DISABLE KEYS */;
INSERT INTO `q14_users` VALUES (1,'Alice'),(2,'Bob'),(3,'Alex'),(4,'Donald'),(7,'Lee'),(13,'Jonathan'),(19,'Elvis');
/*!40000 ALTER TABLE `q14_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q15_followers`
--

DROP TABLE IF EXISTS `q15_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q15_followers` (
  `user_id` int DEFAULT NULL,
  `follower_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q15_followers`
--

LOCK TABLES `q15_followers` WRITE;
/*!40000 ALTER TABLE `q15_followers` DISABLE KEYS */;
INSERT INTO `q15_followers` VALUES (0,1),(1,0),(2,0),(2,1);
/*!40000 ALTER TABLE `q15_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q16_course`
--

DROP TABLE IF EXISTS `q16_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q16_course` (
  `Student` varchar(1) DEFAULT NULL,
  `Class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q16_course`
--

LOCK TABLES `q16_course` WRITE;
/*!40000 ALTER TABLE `q16_course` DISABLE KEYS */;
INSERT INTO `q16_course` VALUES ('A','Math'),('B','English'),('C','Math'),('D','Biology'),('E','Math'),('F','Computer'),('G','Math'),('H','Math'),('I','Math');
/*!40000 ALTER TABLE `q16_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q17_useractivity`
--

DROP TABLE IF EXISTS `q17_useractivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q17_useractivity` (
  `user_id` int DEFAULT NULL,
  `activity_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q17_useractivity`
--

LOCK TABLES `q17_useractivity` WRITE;
/*!40000 ALTER TABLE `q17_useractivity` DISABLE KEYS */;
INSERT INTO `q17_useractivity` VALUES (1,'2024-01-10'),(1,'2024-01-15'),(1,'2024-01-20'),(2,'2024-01-05'),(3,'2024-01-07'),(3,'2024-01-13'),(4,'2024-02-11'),(4,'2024-02-15'),(4,'2024-02-20'),(4,'2024-02-25'),(5,'2024-02-01'),(5,'2024-02-02'),(6,'2024-03-10'),(6,'2024-03-11'),(6,'2024-03-12'),(7,'2024-03-20'),(7,'2024-03-21'),(7,'2024-03-22');
/*!40000 ALTER TABLE `q17_useractivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q18_mynumbers`
--

DROP TABLE IF EXISTS `q18_mynumbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q18_mynumbers` (
  `num` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q18_mynumbers`
--

LOCK TABLES `q18_mynumbers` WRITE;
/*!40000 ALTER TABLE `q18_mynumbers` DISABLE KEYS */;
INSERT INTO `q18_mynumbers` VALUES (8),(8),(3),(3),(1),(4),(5),(6);
/*!40000 ALTER TABLE `q18_mynumbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q19_course_enrollment`
--

DROP TABLE IF EXISTS `q19_course_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q19_course_enrollment` (
  `student_id` int DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q19_course_enrollment`
--

LOCK TABLES `q19_course_enrollment` WRITE;
/*!40000 ALTER TABLE `q19_course_enrollment` DISABLE KEYS */;
INSERT INTO `q19_course_enrollment` VALUES (1,'Alice','Mathematics'),(1,'Alice','Physics'),(2,'Bob','Chemistry'),(3,'Charlie','Biology'),(3,'Charlie','Physics'),(3,'Charlie','Mathematics');
/*!40000 ALTER TABLE `q19_course_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q1_user_transaction`
--

DROP TABLE IF EXISTS `q1_user_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q1_user_transaction` (
  `transaction_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `spend` decimal(10,2) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q1_user_transaction`
--

LOCK TABLES `q1_user_transaction` WRITE;
/*!40000 ALTER TABLE `q1_user_transaction` DISABLE KEYS */;
INSERT INTO `q1_user_transaction` VALUES (1001,2001,1500.60,'2019-12-31 08:00:00'),(1002,2001,1000.20,'2020-12-31 08:00:00'),(1003,2001,1246.44,'2021-12-31 08:00:00'),(1004,2001,2145.32,'2022-12-31 08:00:00');
/*!40000 ALTER TABLE `q1_user_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q20_employees`
--

DROP TABLE IF EXISTS `q20_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q20_employees` (
  `employee_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q20_employees`
--

LOCK TABLES `q20_employees` WRITE;
/*!40000 ALTER TABLE `q20_employees` DISABLE KEYS */;
INSERT INTO `q20_employees` VALUES (2,'Meir',3000.00),(3,'Michael',3800.00),(7,'Addilyn',7400.00),(8,'Juan',6100.00),(9,'Kannon',7700.00);
/*!40000 ALTER TABLE `q20_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q2_transactions`
--

DROP TABLE IF EXISTS `q2_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q2_transactions` (
  `transaction_id` int DEFAULT NULL,
  `merchant_id` int DEFAULT NULL,
  `creditcard_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `transaction_timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q2_transactions`
--

LOCK TABLES `q2_transactions` WRITE;
/*!40000 ALTER TABLE `q2_transactions` DISABLE KEYS */;
INSERT INTO `q2_transactions` VALUES (1,101,1,200.00,'2022-09-25 12:00:00'),(2,101,1,200.00,'2022-09-25 12:08:00'),(3,101,1,200.00,'2022-09-25 12:28:00'),(4,102,2,300.00,'2022-09-25 12:00:00'),(5,102,2,400.00,'2022-09-25 14:00:00');
/*!40000 ALTER TABLE `q2_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q3_productspend`
--

DROP TABLE IF EXISTS `q3_productspend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q3_productspend` (
  `category` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `spend` decimal(10,2) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q3_productspend`
--

LOCK TABLES `q3_productspend` WRITE;
/*!40000 ALTER TABLE `q3_productspend` DISABLE KEYS */;
INSERT INTO `q3_productspend` VALUES ('appliance','refrigerator',165,246.00,'2021-12-26 12:00:00'),('appliance','refrigerator',123,299.99,'2022-03-02 12:00:00'),('appliance','Washing machine',123,219.80,'2022-03-02 12:00:00'),('electronics','vacuum',178,152.00,'2022-04-05 12:00:00'),('electronics','headset',156,249.90,'2022-07-08 12:00:00'),('electronics','vacuum',145,189.00,'2022-07-15 12:00:00');
/*!40000 ALTER TABLE `q3_productspend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q4_users`
--

DROP TABLE IF EXISTS `q4_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q4_users` (
  `user_id` int DEFAULT NULL,
  `signup_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q4_users`
--

LOCK TABLES `q4_users` WRITE;
/*!40000 ALTER TABLE `q4_users` DISABLE KEYS */;
INSERT INTO `q4_users` VALUES (1001,'2022-06-01 12:00:00','2022-07-05 12:00:00'),(1002,'2022-06-03 12:00:00','2022-06-15 12:00:00'),(1003,'2022-06-02 12:00:00','2022-06-15 12:00:00'),(1004,'2022-06-15 12:00:00','2022-06-27 12:00:00'),(1005,'2022-06-16 12:00:00','2022-07-22 12:00:00');
/*!40000 ALTER TABLE `q4_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q5_flights`
--

DROP TABLE IF EXISTS `q5_flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q5_flights` (
  `flight_id` int DEFAULT NULL,
  `capacity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q5_flights`
--

LOCK TABLES `q5_flights` WRITE;
/*!40000 ALTER TABLE `q5_flights` DISABLE KEYS */;
INSERT INTO `q5_flights` VALUES (1,2),(2,2),(3,1);
/*!40000 ALTER TABLE `q5_flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q5_passengers`
--

DROP TABLE IF EXISTS `q5_passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q5_passengers` (
  `passenger_id` int DEFAULT NULL,
  `flight_id` int DEFAULT NULL,
  `booking_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q5_passengers`
--

LOCK TABLES `q5_passengers` WRITE;
/*!40000 ALTER TABLE `q5_passengers` DISABLE KEYS */;
INSERT INTO `q5_passengers` VALUES (101,1,'2023-07-10 16:30:00'),(102,1,'2023-07-10 17:45:00'),(103,1,'2023-07-10 12:00:00'),(104,2,'2023-07-05 13:23:00'),(105,2,'2023-07-05 09:00:00'),(106,3,'2023-07-08 11:10:00'),(107,3,'2023-07-08 09:10:00');
/*!40000 ALTER TABLE `q5_passengers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q6_candidates`
--

DROP TABLE IF EXISTS `q6_candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q6_candidates` (
  `employee_id` int DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `salary` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q6_candidates`
--

LOCK TABLES `q6_candidates` WRITE;
/*!40000 ALTER TABLE `q6_candidates` DISABLE KEYS */;
INSERT INTO `q6_candidates` VALUES (1,'Junior',10000),(9,'Junior',10000),(2,'Senior',20000),(11,'Senior',20000),(13,'Senior',50000),(4,'Junior',40000);
/*!40000 ALTER TABLE `q6_candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q7_matches`
--

DROP TABLE IF EXISTS `q7_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q7_matches` (
  `player_id` int DEFAULT NULL,
  `match_day` date DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q7_matches`
--

LOCK TABLES `q7_matches` WRITE;
/*!40000 ALTER TABLE `q7_matches` DISABLE KEYS */;
INSERT INTO `q7_matches` VALUES (1,'2022-01-17','Win'),(1,'2022-01-18','Win'),(1,'2022-01-25','Win'),(1,'2022-01-31','Draw'),(1,'2022-02-08','Win'),(2,'2022-02-06','Lose'),(2,'2022-02-08','Lose'),(3,'2022-03-30','Win');
/*!40000 ALTER TABLE `q7_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q8_employee`
--

DROP TABLE IF EXISTS `q8_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q8_employee` (
  `id` int DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Department` varchar(1) DEFAULT NULL,
  `ManagerId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q8_employee`
--

LOCK TABLES `q8_employee` WRITE;
/*!40000 ALTER TABLE `q8_employee` DISABLE KEYS */;
INSERT INTO `q8_employee` VALUES (101,'John','A',NULL),(102,'Dan','A',101),(103,'James','A',101),(104,'Amy','A',101),(105,'Anne','A',101),(106,'Ron','B',101);
/*!40000 ALTER TABLE `q8_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q9_customer`
--

DROP TABLE IF EXISTS `q9_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q9_customer` (
  `customer_id` int DEFAULT NULL,
  `product_key` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q9_customer`
--

LOCK TABLES `q9_customer` WRITE;
/*!40000 ALTER TABLE `q9_customer` DISABLE KEYS */;
INSERT INTO `q9_customer` VALUES (1,5),(2,6),(3,5),(3,6),(1,6);
/*!40000 ALTER TABLE `q9_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q9_product`
--

DROP TABLE IF EXISTS `q9_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q9_product` (
  `product_key` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q9_product`
--

LOCK TABLES `q9_product` WRITE;
/*!40000 ALTER TABLE `q9_product` DISABLE KEYS */;
INSERT INTO `q9_product` VALUES (5),(6);
/*!40000 ALTER TABLE `q9_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-22 10:22:11
