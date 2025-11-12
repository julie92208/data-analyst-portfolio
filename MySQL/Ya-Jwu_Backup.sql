CREATE DATABASE  IF NOT EXISTS `fitness_app2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fitness_app2`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: fitness_app
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `DiscountID` int NOT NULL AUTO_INCREMENT,
  `Duration` int NOT NULL,
  `DiscountPercentage` decimal(5,2) NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`DiscountID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,30,5.00,'5% discount for a 30-day period'),(2,90,10.00,'10% discount for a 90-day period'),(3,180,15.00,'15% discount for a 180-day period'),(4,365,20.00,'20% discount for a 365-day period');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise`
--

DROP TABLE IF EXISTS `exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise` (
  `ExerciseID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `MuscleGroup` varchar(255) NOT NULL,
  `EquipmentRequired` varchar(255) NOT NULL,
  PRIMARY KEY (`ExerciseID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise`
--

LOCK TABLES `exercise` WRITE;
/*!40000 ALTER TABLE `exercise` DISABLE KEYS */;
INSERT INTO `exercise` VALUES (1,'Push Up','A bodyweight exercise targeting the chest, shoulders, and triceps.','Chest','None'),(2,'Pull Up','An upper-body exercise that targets the back and biceps.','Back','Pull-Up Bar'),(3,'Squat','A lower-body exercise that targets the quads, hamstrings, and glutes.','Legs','None'),(4,'Deadlift','A compound exercise that targets the entire posterior chain.','Back','Barbell'),(5,'Bench Press','A chest exercise performed with a barbell or dumbbells.','Chest','Bench, Barbell'),(6,'Overhead Press','A shoulder exercise performed with a barbell or dumbbells.','Shoulders','Barbell'),(7,'Bicep Curl','An isolation exercise that targets the biceps.','Arms','Dumbbells'),(8,'Tricep Extension','An isolation exercise that targets the triceps.','Arms','Dumbbells'),(9,'Lunge','A lower-body exercise that targets the quads and glutes.','Legs','None'),(10,'Leg Press','A lower-body exercise performed on a leg press machine.','Legs','Leg Press Machine'),(11,'Lat Pulldown','An upper-body exercise that targets the back.','Back','Lat Pulldown Machine'),(12,'Hamstring Curl','A lower-body exercise that targets the hamstrings.','Legs','Hamstring Curl Machine'),(13,'Chest Fly','A chest exercise performed with dumbbells.','Chest','Dumbbells'),(14,'Shoulder Fly','A shoulder exercise performed with dumbbells.','Shoulders','Dumbbells'),(15,'Calf Raise','A lower-body exercise that targets the calves.','Legs','None'),(16,'Plank','A core exercise that targets the abdominals and lower back.','Core','None'),(17,'Russian Twist','A core exercise that targets the obliques.','Core','None'),(18,'Mountain Climber','A full-body exercise that targets the core and legs.','Core','None'),(19,'Bicycle Crunch','A core exercise that targets the abdominals.','Core','None'),(20,'Leg Raise','A core exercise that targets the lower abdominals.','Core','None'),(21,'Dumbbell Row','An upper-body exercise that targets the back.','Back','Dumbbells'),(22,'Face Pull','An upper-body exercise that targets the rear deltoids.','Shoulders','Cable Machine'),(23,'Cable Curl','An isolation exercise that targets the biceps.','Arms','Cable Machine'),(24,'Cable Tricep Pushdown','An isolation exercise that targets the triceps.','Arms','Cable Machine'),(25,'Sit Up','A core exercise that targets the abdominals.','Core','None'),(26,'Side Plank','A core exercise that targets the obliques.','Core','None'),(27,'Dumbbell Shoulder Press','A shoulder exercise performed with dumbbells.','Shoulders','Dumbbells'),(28,'Goblet Squat','A lower-body exercise performed with a dumbbell or kettlebell.','Legs','Dumbbell'),(29,'Kettlebell Swing','A full-body exercise that targets the posterior chain.','Back','Kettlebell'),(30,'Dumbbell Lateral Raise','A shoulder exercise performed with dumbbells.','Shoulders','Dumbbells');
/*!40000 ALTER TABLE `exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progress`
--

DROP TABLE IF EXISTS `progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `progress` (
  `ProgressID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `Date` date NOT NULL,
  `Start_Time` varchar(45) NOT NULL,
  `End_Time` varchar(45) NOT NULL,
  `Weight` decimal(5,2) NOT NULL,
  `Height` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ProgressID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `progress_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progress`
--

LOCK TABLES `progress` WRITE;
/*!40000 ALTER TABLE `progress` DISABLE KEYS */;
INSERT INTO `progress` VALUES (1,1,'2023-12-01','08:00','08:45',70.50,175.50),(2,1,'2024-07-28','08:00','08:45',70.00,175.50),(3,1,'2024-08-01','08:00','08:45',69.80,176.50),(4,2,'2024-01-01','09:00','09:30',65.00,165.00),(5,2,'2024-08-29','09:00','09:30',64.50,165.30),(6,3,'2023-12-05','07:00','07:45',85.00,180.00),(7,3,'2024-09-29','07:00','07:45',84.80,180.15),(8,3,'2024-10-03','07:00','07:45',84.60,180.50),(9,4,'2024-02-01','06:30','07:15',75.00,170.00),(10,4,'2024-11-20','06:30','07:15',74.50,170.00),(11,5,'2023-12-03','18:00','18:45',90.00,185.00),(12,5,'2024-11-16','18:00','18:45',89.70,185.00),(13,5,'2024-11-17','18:00','18:45',90.50,185.00),(14,6,'2024-05-26','17:00','17:30',68.00,160.00),(15,6,'2024-08-05','17:00','17:30',67.50,160.20),(16,7,'2024-07-08','08:30','09:15',95.00,190.00),(17,7,'2024-07-30','08:30','09:15',94.80,190.00),(18,7,'2024-08-22','08:30','09:15',94.60,190.00),(19,8,'2024-07-20','09:30','10:00',55.00,155.00),(20,8,'2024-08-15','09:30','10:00',54.50,155.00),(21,9,'2024-08-11','07:30','08:15',80.00,175.00),(22,9,'2024-08-18','07:30','08:15',79.80,175.00),(23,9,'2024-08-28','07:30','08:15',79.60,175.00),(24,10,'2024-09-16','06:00','06:45',76.00,170.00),(25,10,'2024-09-20','06:00','06:45',75.50,170.00),(26,11,'2024-10-21','17:30','18:15',90.00,185.00),(27,11,'2024-10-28','17:30','18:15',89.80,185.00),(28,11,'2024-11-21','17:30','18:15',89.60,185.00),(29,12,'2024-11-26','16:00','16:45',70.00,165.00),(30,12,'2024-12-05','16:00','16:45',69.50,165.00),(31,13,'2024-12-02','06:30','07:15',85.00,180.00),(32,13,'2024-12-05','06:30','07:15',84.80,180.00),(33,13,'2024-12-08','06:30','07:15',84.60,180.00),(34,14,'2024-12-07','18:30','19:15',65.00,160.00),(35,14,'2024-12-08','18:30','19:15',64.50,160.00),(36,15,'2024-08-09','07:00','07:45',95.00,190.00),(37,15,'2024-08-16','07:00','07:45',94.80,190.00),(38,15,'2024-08-23','07:00','07:45',94.60,190.00),(39,16,'2024-01-08','08:30','09:15',55.00,150.00),(40,16,'2024-08-15','08:30','09:15',54.50,150.00),(41,17,'2024-02-14','06:00','06:45',80.00,170.00),(42,17,'2024-02-21','06:00','06:45',79.80,170.00),(43,17,'2024-03-03','06:00','06:45',79.60,170.00),(44,18,'2024-03-18','17:00','17:45',76.00,165.00),(45,18,'2024-03-23','17:00','17:45',75.50,165.00),(46,19,'2024-04-21','07:30','08:15',90.00,180.00),(47,19,'2024-06-19','07:30','08:15',89.80,180.00),(48,19,'2024-07-26','07:30','08:15',89.60,180.00),(49,20,'2024-05-26','16:30','17:15',70.00,160.00),(50,20,'2024-08-11','16:30','17:15',69.50,160.00);
/*!40000 ALTER TABLE `progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptiontype`
--

DROP TABLE IF EXISTS `subscriptiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptiontype` (
  `SubscriptionTypeID` int NOT NULL AUTO_INCREMENT,
  `Subscription_type` varchar(45) NOT NULL,
  `SubscriptionAmount` decimal(10,2) NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`SubscriptionTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptiontype`
--

LOCK TABLES `subscriptiontype` WRITE;
/*!40000 ALTER TABLE `subscriptiontype` DISABLE KEYS */;
INSERT INTO `subscriptiontype` VALUES (1,'Free Plan',0.00,'Access to 1 workout plan at no cost'),(2,'Premium',49.99,'Access to 3 workout plans for CAD 49.99 per month'),(3,'VIP',99.99,'All access to workout plans for CAD 99.99 per month');
/*!40000 ALTER TABLE `subscriptiontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `TransactionID` int NOT NULL AUTO_INCREMENT,
  `User_UserID` int NOT NULL,
  `Discount_DiscountID` int NOT NULL,
  `SubscriptionTypeID` int NOT NULL,
  `PaymentMethod` varchar(255) NOT NULL,
  `StartDate` date NOT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `Discount_DiscountID` (`Discount_DiscountID`),
  KEY `User_UserID` (`User_UserID`),
  KEY `SubscriptionTypeID` (`SubscriptionTypeID`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`Discount_DiscountID`) REFERENCES `discount` (`DiscountID`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`User_UserID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`SubscriptionTypeID`) REFERENCES `subscriptiontype` (`SubscriptionTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,1,1,1,'Credit Card','2023-12-01'),(2,1,2,2,'Credit Card','2024-07-15'),(3,2,2,2,'PayPal','2024-01-05'),(4,2,3,3,'PayPal','2024-08-20'),(5,3,3,3,'Credit Card','2024-02-10'),(6,3,1,1,'Credit Card','2024-09-25'),(7,4,1,2,'Credit Card','2024-03-15'),(8,4,4,2,'Debit Card','2024-10-30'),(9,5,4,3,'Debit Card','2024-04-20'),(10,5,2,1,'Credit Card','2024-11-15'),(11,6,2,1,'PayPal','2024-05-25'),(12,7,3,2,'Credit Card','2024-06-30'),(13,8,4,3,'Debit Card','2024-07-05'),(14,9,1,1,'Credit Card','2024-08-10'),(15,10,2,3,'PayPal','2024-09-15'),(16,11,3,2,'Credit Card','2024-10-20'),(17,12,4,1,'Debit Card','2024-11-25'),(18,13,1,3,'Credit Card','2024-12-01'),(19,14,2,2,'PayPal','2024-12-06'),(20,15,3,1,'Credit Card','2024-08-01'),(21,16,4,3,'Debit Card','2024-01-05'),(22,17,1,2,'Credit Card','2024-02-10'),(23,18,2,1,'PayPal','2024-03-15'),(24,19,3,3,'Credit Card','2024-04-20'),(25,20,4,2,'Debit Card','2024-05-25');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `FName` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Password` (`Password`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'John','Doe','john.doe@hohoho.com','1985-05-15','Male','password123'),(2,'Jane','Smith','jane.smith@hohoho.com','1990-08-22','Female','securepass456'),(3,'Alex','Johnson','alex.johnson@hohoho.com','1983-11-12','Non-binary','mypassword789'),(4,'Emily','Davis','emily.davis@hohoho.com','1978-02-10','Female','passw0rd'),(5,'Michael','Brown','michael.brown@hohoho.com','1982-07-25','Male','letmein123'),(6,'Sarah','Wilson','sarah.wilson@hohoho.com','1993-03-17','Female','iloveyou456'),(7,'David','Taylor','david.taylor@hohoho.com','1987-09-05','Male','123456789'),(8,'Laura','Anderson','laura.anderson@hohoho.com','1989-12-20','Female','abcdefg123'),(9,'Chris','Thomas','chris.thomas@hohoho.com','1984-06-15','Male','qwerty456'),(10,'Anna','Jackson','anna.jackson@hohoho.com','1992-01-30','Female','password321'),(11,'Ryan','White','ryan.white@hohoho.com','1981-04-14','Male','pass1234'),(12,'Sophia','Harris','sophia.harris@hohoho.com','1986-10-21','Female','secure789'),(13,'James','Martin','james.martin@hohoho.com','1991-07-18','Male','mypassword456'),(14,'Olivia','Garcia','olivia.garcia@hohoho.com','1988-09-12','Female','letmein789'),(15,'Daniel','Clark','daniel.clark@hohoho.com','1979-02-04','Male','iloveyou123'),(16,'Chloe','Lewis','chloe.lewis@hohoho.com','1994-08-23','Female','123secure'),(17,'Ethan','Walker','ethan.walker@hohoho.com','1980-11-29','Male','pass321'),(18,'Isabella','Robinson','isabella.robinson@hohoho.com','1987-03-07','Female','mypassword123'),(19,'Liam','Scott','liam.scott@hohoho.com','1985-01-22','Male','password456'),(20,'Mia','Adams','mia.adams@hohoho.com','1990-05-19','Female','qwerty789');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workout`
--

DROP TABLE IF EXISTS `workout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workout` (
  `WorkoutID` int NOT NULL AUTO_INCREMENT,
  `SubscriptionTypeID` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Duration` int NOT NULL,
  `CaloriesBurned` decimal(6,2) NOT NULL,
  PRIMARY KEY (`WorkoutID`),
  KEY `SubscriptionTypeID` (`SubscriptionTypeID`),
  CONSTRAINT `workout_ibfk_1` FOREIGN KEY (`SubscriptionTypeID`) REFERENCES `subscriptiontype` (`SubscriptionTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout`
--

LOCK TABLES `workout` WRITE;
/*!40000 ALTER TABLE `workout` DISABLE KEYS */;
INSERT INTO `workout` VALUES (1,1,'Basic Full Body Workout','Strength',30,300.00),(2,2,'Intermediate Strength Training','Strength',45,450.00),(3,2,'Cardio Blast','Cardio',60,500.00),(4,2,'Flexibility and Mobility','Flexibility',30,250.00),(5,3,'Advanced HIIT Workout','Cardio',45,600.00),(6,3,'Endurance Training','Cardio',60,700.00),(7,3,'Pilates Core Workout','Core',45,400.00),(8,3,'Strength and Conditioning','Strength',60,550.00),(9,3,'Yoga Flow','Flexibility',60,200.00),(10,3,'Balance and Stability','Balance',30,250.00);
/*!40000 ALTER TABLE `workout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workoutexercise`
--

DROP TABLE IF EXISTS `workoutexercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workoutexercise` (
  `WorkoutID` int NOT NULL,
  `ExerciseID` int NOT NULL,
  PRIMARY KEY (`WorkoutID`,`ExerciseID`),
  KEY `ExerciseID` (`ExerciseID`),
  CONSTRAINT `workoutexercise_ibfk_1` FOREIGN KEY (`WorkoutID`) REFERENCES `workout` (`WorkoutID`),
  CONSTRAINT `workoutexercise_ibfk_2` FOREIGN KEY (`ExerciseID`) REFERENCES `exercise` (`ExerciseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workoutexercise`
--

LOCK TABLES `workoutexercise` WRITE;
/*!40000 ALTER TABLE `workoutexercise` DISABLE KEYS */;
INSERT INTO `workoutexercise` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,7),(3,8),(3,9),(4,10),(4,11),(4,12),(5,13),(5,14),(5,15),(6,16),(6,17),(6,18),(7,19),(7,20),(7,21),(8,22),(8,23),(8,24),(9,25),(9,26),(9,27),(10,28),(10,29),(10,30);
/*!40000 ALTER TABLE `workoutexercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'fitness_app'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-08 10:31:36
