-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: studentrecordsdb
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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `Class_Id` int NOT NULL,
  `Class_Number` varchar(20) DEFAULT NULL,
  `Class_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Class_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'COM 201','Introduction to Communication I'),(2,'COM 202','Introduction to Communication II'),(3,'COM 210','Introductory Communication Topics'),(4,'COM 220','Introduction to Public Speaking'),(5,'ENGL 101','Writing from Sources I (5)'),(6,'ENGL 102','Critical Reading & Writing (5)'),(7,'ENGL 103','Writing from Sources'),(8,'ENGL 109','Introductory Composition'),(9,'ENGL 111','Composition: Literature'),(10,'ECON 200','Introduction to Microeconomics'),(11,'ECON 201','Introduction to Macroeconomics'),(12,'ECON 235','Introduction to Environmental Economics'),(13,'ECON 300','Intermediate Microeconomics'),(14,'ECON 301','Intermediate Macroeconomics');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `student_id` int NOT NULL,
  `Class_Id` int NOT NULL,
  `semester_id` int NOT NULL,
  `grades` varchar(5) DEFAULT NULL,
  KEY `student_id` (`student_id`),
  KEY `Class_Id` (`Class_Id`),
  KEY `semester_id` (`semester_id`),
  CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`),
  CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`Class_Id`) REFERENCES `courses` (`Class_Id`),
  CONSTRAINT `grades_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (22590,1,1,'A'),(22591,2,2,'B+'),(22592,3,2,'A-'),(22593,4,3,'B'),(22594,5,3,'C+'),(22595,6,4,'A'),(22596,7,4,'B-'),(22597,8,5,'A'),(22598,9,5,'B+'),(22599,10,6,'C');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester` (
  `semester_id` int NOT NULL,
  `semester` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (1,'Fall 2019','2019-09-01'),(2,'Spring 2020','2020-01-15'),(3,'Summer 2020','2020-05-10'),(4,'Fall 2020','2020-09-01'),(5,'Spring 2021','2021-01-12'),(6,'Summer 2021','2021-05-17'),(7,'Fall 2021','2021-09-06'),(8,'Spring 2022','2022-01-10'),(9,'Summer 2022','2022-05-16'),(10,'Fall 2022','2022-09-05'),(11,'Spring 2023','2023-01-09');
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_info` (
  `student_id` int NOT NULL,
  `studentName` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `current_age` int NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `payment_Records` int NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_info`
--

LOCK TABLES `student_info` WRITE;
/*!40000 ALTER TABLE `student_info` DISABLE KEYS */;
INSERT INTO `student_info` VALUES (22590,'emmanuelouma','2025-05-25',25,'MALE','ouma20@gmail.com',15000),(22591,'janedoe','2000-04-12',25,'FEMALE','janedoe@gmail.com',18000),(22592,'michaelkimani','1999-09-10',26,'MALE','mkimani@gmail.com',20000),(22593,'lucywanjiku','2001-03-05',24,'FEMALE','lucyw@gmail.com',17000),(22594,'kevinotieno','2002-07-25',22,'MALE','kotieno@gmail.com',15500),(22595,'anitamwende','1998-11-30',26,'FEMALE','anitamwende@gmail.com',16000),(22596,'johnmutiso','2000-01-20',25,'MALE','jmutiso@gmail.com',14500),(22597,'ruthnyambura','2001-05-14',24,'FEMALE','ruthny@gmail.com',19000),(22598,'davidkiptoo','1999-12-01',25,'MALE','davidk@gmail.com',17500),(22599,'susanmburu','2003-02-18',22,'FEMALE','susanmburu@gmail.com',14000),(22600,'elvisomondi','2002-06-09',23,'MALE','elviso@gmail.com',21000),(22601,'mercycherono','2001-08-30',24,'FEMALE','mcherono@gmail.com',19500),(22602,'peterkaranja','1999-10-17',26,'MALE','pkaranja@gmail.com',18500),(22603,'gracenyawira','2000-12-25',24,'FEMALE','gracenyawira@gmail.com',15500),(22604,'tonyngugi','2001-04-03',24,'MALE','tonyngugi@gmail.com',16500),(22605,'fionarotich','2003-11-11',21,'FEMALE','fionarotich@gmail.com',15000);
/*!40000 ALTER TABLE `student_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-11 11:07:21
