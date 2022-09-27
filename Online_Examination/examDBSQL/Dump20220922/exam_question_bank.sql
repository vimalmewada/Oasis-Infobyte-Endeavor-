-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: exam
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `question_bank`
--

DROP TABLE IF EXISTS `question_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_bank` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `exam_id` varchar(45) DEFAULT NULL,
  `questions` varchar(255) DEFAULT NULL,
  `optionA` varchar(45) DEFAULT NULL,
  `optionB` varchar(45) DEFAULT NULL,
  `optionC` varchar(45) DEFAULT NULL,
  `optionD` varchar(45) DEFAULT NULL,
  `correct_option` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_bank`
--

LOCK TABLES `question_bank` WRITE;
/*!40000 ALTER TABLE `question_bank` DISABLE KEYS */;
INSERT INTO `question_bank` VALUES (1,'java','Number of primitive data types in Java are?','6','7','8','9','C'),(2,'java','What is the size of float and double in java?','32 and 64','32 and 32','64 and 64 ','64 and 32','A'),(3,'java','When an array is passed to a method, what does the method receive?','The reference of the array','A copy of the array','Length of the array','Copy of first element','A'),(4,'java','Who invented Java Programming?','Guido van Rossum','James Gosling','Dennis Ritchie','Bjarne Stroustrup','B'),(5,'java',' Which of these cannot be used for a variable name in Java?','identifier & keyword','identifier','keyword','none of the mentioned','C'),(6,'java','What is the extension of java code files?','.js',' .txt','.class','.java','D'),(7,'java','Which environment variable is used to set the java path?','MAVEN_Path','JavaPATH',' JAVA',' JAVA_HOME','D'),(8,'java','Which of the following is not an OOPS concept in Java?','Polymorphism',' Inheritance','Compilation',' Encapsulation','C'),(9,'java',' Which of these are selection statements in Java?',' break',' continue','for()','if()','D'),(10,'java',' Which of the following is a superclass of every class in Java?','ArrayList','Abstract class','Object class',' String','C');
/*!40000 ALTER TABLE `question_bank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-22 17:08:15
