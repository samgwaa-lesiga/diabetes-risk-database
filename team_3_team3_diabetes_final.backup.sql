-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (x86_64)
--
-- Host: localhost    Database: team3_diabetes_final
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `Cholesterol`
--

DROP TABLE IF EXISTS `Cholesterol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cholesterol` (
  `Cholesterol_ID` int NOT NULL,
  `Cholesterol_Levels` int NOT NULL,
  PRIMARY KEY (`Cholesterol_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cholesterol`
--

LOCK TABLES `Cholesterol` WRITE;
/*!40000 ALTER TABLE `Cholesterol` DISABLE KEYS */;
INSERT INTO `Cholesterol` VALUES (1,201),(2,121),(3,185),(4,151),(5,146),(6,208),(7,237),(8,157),(9,185),(10,259),(11,193),(12,195),(13,191),(14,126),(15,163),(16,260),(17,153),(18,144),(19,239),(20,165),(21,179),(22,289),(23,164),(24,276),(25,142),(26,157),(27,255),(28,170),(29,277),(30,102);
/*!40000 ALTER TABLE `Cholesterol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Diabetes_Type`
--

DROP TABLE IF EXISTS `Diabetes_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Diabetes_Type` (
  `Diabetes_Type_ID` int NOT NULL,
  `Diabetes_Type_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Diabetes_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diabetes_Type`
--

LOCK TABLES `Diabetes_Type` WRITE;
/*!40000 ALTER TABLE `Diabetes_Type` DISABLE KEYS */;
INSERT INTO `Diabetes_Type` VALUES (1,'Steroid-Induced Diabetes'),(2,'Neonatal Diabetes Mellitus (NDM)'),(3,'Prediabetic'),(4,'Type 1 Diabetes'),(5,'Wolfram Syndrome'),(6,'LADA'),(7,'Type 2 Diabetes'),(8,'Wolcott-Rallison Syndrome'),(9,'Secondary Diabetes'),(10,'Type 3c Diabetes (Pancreatogenic Diabetes)'),(11,'Gestational Diabetes'),(12,'Cystic Fibrosis-Related Diabetes (CFRD)'),(13,'MODY');
/*!40000 ALTER TABLE `Diabetes_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Early_Onset_Symptoms`
--

DROP TABLE IF EXISTS `Early_Onset_Symptoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Early_Onset_Symptoms` (
  `Symptom_ID` int NOT NULL,
  `Early_Onset_Symptoms` varchar(45) NOT NULL,
  `Birth_Weight` int NOT NULL,
  `Pancreatic_Health` varchar(45) NOT NULL,
  `Smoking_Status` varchar(45) NOT NULL,
  PRIMARY KEY (`Symptom_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Early_Onset_Symptoms`
--

LOCK TABLES `Early_Onset_Symptoms` WRITE;
/*!40000 ALTER TABLE `Early_Onset_Symptoms` DISABLE KEYS */;
INSERT INTO `Early_Onset_Symptoms` VALUES (1,'No',2629,'36','Smoker'),(2,'Yes',1881,'26','Non-Smoker'),(3,'Yes',3622,'56','Smoker'),(4,'No',3542,'49','Smoker'),(5,'No',1770,'10','Smoker'),(6,'Yes',3835,'40','Non-Smoker'),(7,'No',4426,'62','Non-Smoker'),(8,'Yes',1644,'13','Smoker'),(9,'No',3721,'91','Smoker'),(10,'No',4206,'86','Non-Smoker'),(11,'No',3965,'64','Non-Smoker'),(12,'No',2947,'67','Smoker'),(13,'No',3588,'63','Smoker'),(14,'No',2202,'16','Non-Smoker'),(15,'No',2984,'76','Non-Smoker'),(16,'No',4239,'75','Non-Smoker'),(17,'Yes',2620,'65','Non-Smoker'),(18,'No',1523,'13','Non-Smoker'),(19,'No',4335,'38','Smoker'),(20,'No',2940,'41','Non-Smoker'),(21,'Yes',3963,'76','Non-Smoker'),(22,'No',2766,'42','Smoker'),(23,'Yes',1937,'25','Non-Smoker'),(24,'No',3094,'45','Smoker'),(25,'No',2325,'37','Smoker'),(26,'No',3684,'49','Smoker'),(27,'Yes',3769,'26','Smoker'),(28,'No',2827,'30','Smoker'),(29,'Yes',2587,'52','Non-Smoker'),(30,'Yes',2786,'16','Smoker');
/*!40000 ALTER TABLE `Early_Onset_Symptoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genetic_Information`
--

DROP TABLE IF EXISTS `Genetic_Information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genetic_Information` (
  `Genetic_ID` int NOT NULL,
  `Genetic_Markers` varchar(45) NOT NULL,
  `Genetic_Testing` varchar(45) NOT NULL,
  `Autoantibodies` varchar(45) NOT NULL,
  PRIMARY KEY (`Genetic_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genetic_Information`
--

LOCK TABLES `Genetic_Information` WRITE;
/*!40000 ALTER TABLE `Genetic_Information` DISABLE KEYS */;
INSERT INTO `Genetic_Information` VALUES (1,'Positive','Positive','Negative'),(2,'Positive','Negative','Negative'),(3,'Positive','Negative','Positive'),(4,'Negative','Positive','Positive'),(5,'Negative','Positive','Negative'),(6,'Positive','Negative','Negative'),(7,'Negative','Negative','Negative'),(8,'Positive','Negative','Negative'),(9,'Negative','Positive','Positive'),(10,'Positive','Positive','Negative'),(11,'Negative','Negative','Positive'),(12,'Positive','Negative','Negative'),(13,'Positive','Positive','Negative'),(14,'Positive','Negative','Positive'),(15,'Negative','Positive','Negative'),(16,'Positive','Negative','Negative'),(17,'Negative','Positive','Negative'),(18,'Positive','Positive','Negative'),(19,'Positive','Negative','Negative'),(20,'Negative','Positive','Positive'),(21,'Positive','Negative','Negative'),(22,'Negative','Negative','Negative'),(23,'Positive','Negative','Negative'),(24,'Positive','Positive','Positive'),(25,'Positive','Positive','Negative'),(26,'Negative','Negative','Negative'),(27,'Positive','Positive','Negative'),(28,'Negative','Negative','Negative'),(29,'Positive','Negative','Negative'),(30,'Negative','Negative','Negative');
/*!40000 ALTER TABLE `Genetic_Information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Health_Assesments`
--

DROP TABLE IF EXISTS `Health_Assesments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Health_Assesments` (
  `Health_Assesment_ID` int NOT NULL,
  `Blood_Pressure` int NOT NULL,
  `Glucose_Tolerance_Test` varchar(45) NOT NULL,
  `BMI` varchar(45) NOT NULL,
  PRIMARY KEY (`Health_Assesment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Health_Assesments`
--

LOCK TABLES `Health_Assesments` WRITE;
/*!40000 ALTER TABLE `Health_Assesments` DISABLE KEYS */;
INSERT INTO `Health_Assesments` VALUES (1,124,'168','38'),(2,73,'178','17'),(3,121,'105','24'),(4,100,'121','16'),(5,103,'289','17'),(6,127,'142','26'),(7,115,'186','31'),(8,80,'206','18'),(9,138,'160','25'),(10,136,'192','24'),(11,134,'192','29'),(12,91,'114','23'),(13,128,'113','28'),(14,71,'175','19'),(15,116,'136','22'),(16,128,'200','37'),(17,106,'132','31'),(18,67,'168','17'),(19,149,'190','32'),(20,102,'126','18'),(21,123,'93','33'),(22,121,'167','25'),(23,87,'234','19'),(24,121,'161','29'),(25,100,'287','23'),(26,125,'170','31'),(27,140,'198','23'),(28,90,'146','19'),(29,148,'156','39'),(30,102,'178','23');
/*!40000 ALTER TABLE `Health_Assesments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Life_Style_Factors`
--

DROP TABLE IF EXISTS `Life_Style_Factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Life_Style_Factors` (
  `Life_Style_ID` int NOT NULL,
  `Physical_Activity` varchar(45) NOT NULL,
  `Dietary_Habits` varchar(45) NOT NULL,
  `Socioeconomic_Factors` varchar(45) NOT NULL,
  PRIMARY KEY (`Life_Style_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Life_Style_Factors`
--

LOCK TABLES `Life_Style_Factors` WRITE;
/*!40000 ALTER TABLE `Life_Style_Factors` DISABLE KEYS */;
INSERT INTO `Life_Style_Factors` VALUES (1,'High','Healthy','Medium'),(2,'High','Healthy','High'),(3,'High','Unhealthy','Medium'),(4,'Low','Unhealthy','High'),(5,'High','Healthy','Low'),(6,'Moderate','Healthy','Low'),(7,'Moderate','Healthy','High'),(8,'Low','Unhealthy','Low'),(9,'High','Healthy','High'),(10,'Low','Unhealthy','High'),(11,'Low','Healthy','Medium'),(12,'Low','Unhealthy','Low'),(13,'Low','Healthy','Medium'),(14,'Low','Unhealthy','Medium'),(15,'Moderate','Healthy','High'),(16,'Low','Unhealthy','Low'),(17,'High','Unhealthy','High'),(18,'Moderate','Unhealthy','High'),(19,'Moderate','Healthy','Medium'),(20,'Low','Unhealthy','Medium'),(21,'Low','Healthy','Low'),(22,'Moderate','Healthy','Medium'),(23,'Low','Healthy','High'),(24,'Moderate','Unhealthy','High'),(25,'Low','Unhealthy','Medium'),(26,'High','Unhealthy','High'),(27,'High','Healthy','Medium'),(28,'Moderate','Unhealthy','High'),(29,'Moderate','Healthy','Low'),(30,'High','Unhealthy','Medium');
/*!40000 ALTER TABLE `Life_Style_Factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medical_History`
--

DROP TABLE IF EXISTS `Medical_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medical_History` (
  `Med_History_ID` int NOT NULL,
  `Family_History` varchar(45) NOT NULL,
  `Previous_Gestantional_Diabetes` varchar(45) NOT NULL,
  `Smoking_Status` varchar(45) NOT NULL,
  PRIMARY KEY (`Med_History_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medical_History`
--

LOCK TABLES `Medical_History` WRITE;
/*!40000 ALTER TABLE `Medical_History` DISABLE KEYS */;
INSERT INTO `Medical_History` VALUES (1,'No','No','Smoker'),(2,'No','No','Non-Smoker'),(3,'Yes','No','Smoker'),(4,'No','Yes','Smoker'),(5,'Yes','Yes','Smoker'),(6,'Yes','No','Non-Smoker'),(7,'No','Yes','Non-Smoker'),(8,'No','Yes','Smoker'),(9,'No','No','Smoker'),(10,'Yes','No','Non-Smoker'),(11,'No','No','Non-Smoker'),(12,'No','No','Smoker'),(13,'No','No','Smoker'),(14,'No','No','Non-Smoker'),(15,'No','Yes','Non-Smoker'),(16,'Yes','No','Non-Smoker'),(17,'No','Yes','Non-Smoker'),(18,'No','No','Non-Smoker'),(19,'No','Yes','Smoker'),(20,'Yes','No','Non-Smoker'),(21,'Yes','Yes','Non-Smoker'),(22,'No','No','Smoker'),(23,'No','No','Non-Smoker'),(24,'No','No','Smoker'),(25,'Yes','Yes','Smoker'),(26,'Yes','Yes','Smoker'),(27,'Yes','Yes','Smoker'),(28,'Yes','No','Smoker'),(29,'No','No','Non-Smoker'),(30,'Yes','No','Smoker');
/*!40000 ALTER TABLE `Medical_History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patients`
--

DROP TABLE IF EXISTS `Patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patients` (
  `Patient_ID` int NOT NULL,
  `Age` int NOT NULL,
  `Ethnicity` varchar(45) NOT NULL,
  `BMI` varchar(45) NOT NULL,
  `Smoking_Status` varchar(45) NOT NULL,
  `Alchohol_Consumption` varchar(45) NOT NULL,
  `Waist_Circumference` int NOT NULL,
  `Med_History_ID` int NOT NULL,
  `Pregnancy_History_ID` int NOT NULL,
  `Genetic_ID` int NOT NULL,
  `Cholesterol_ID` int NOT NULL,
  `Health_Assesment_ID` int NOT NULL,
  `Life_Style_ID` int NOT NULL,
  `Symptom_ID` int NOT NULL,
  `Diabetes_Type_ID` int NOT NULL,
  PRIMARY KEY (`Patient_ID`),
  KEY `Med_History_ID_idx` (`Med_History_ID`),
  KEY `Pregnancy_History_ID_idx` (`Pregnancy_History_ID`),
  KEY `Genetic_ID_idx` (`Genetic_ID`),
  KEY `Cholesterol_ID_idx` (`Cholesterol_ID`),
  KEY `Health_Assesment_ID_idx` (`Health_Assesment_ID`),
  KEY `Symptom_ID_idx` (`Symptom_ID`),
  KEY `Life_Style_ID_idx` (`Life_Style_ID`),
  KEY `Diabetes_Type_ID_idx` (`Diabetes_Type_ID`),
  CONSTRAINT `Cholesterol_ID` FOREIGN KEY (`Cholesterol_ID`) REFERENCES `Cholesterol` (`Cholesterol_ID`),
  CONSTRAINT `Diabetes_Type_ID` FOREIGN KEY (`Diabetes_Type_ID`) REFERENCES `Diabetes_Type` (`Diabetes_Type_ID`),
  CONSTRAINT `Genetic_ID` FOREIGN KEY (`Genetic_ID`) REFERENCES `Genetic_Information` (`Genetic_ID`),
  CONSTRAINT `Health_Assesment_ID` FOREIGN KEY (`Health_Assesment_ID`) REFERENCES `Health_Assesments` (`Health_Assesment_ID`),
  CONSTRAINT `Life_Style_ID` FOREIGN KEY (`Life_Style_ID`) REFERENCES `Life_Style_Factors` (`Life_Style_ID`),
  CONSTRAINT `Med_History_ID` FOREIGN KEY (`Med_History_ID`) REFERENCES `Medical_History` (`Med_History_ID`),
  CONSTRAINT `Pregnancy_History_ID` FOREIGN KEY (`Pregnancy_History_ID`) REFERENCES `Pregnancy_History` (`Pregnancy_History_ID`),
  CONSTRAINT `Symptom_ID` FOREIGN KEY (`Symptom_ID`) REFERENCES `Early_Onset_Symptoms` (`Symptom_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patients`
--

LOCK TABLES `Patients` WRITE;
/*!40000 ALTER TABLE `Patients` DISABLE KEYS */;
INSERT INTO `Patients` VALUES (1,44,'Low Risk','38','Smoker','High',50,1,1,1,1,1,1,1,1),(2,1,'Low Risk','17','Non-Smoker','Moderate',24,2,2,2,2,2,2,2,2),(3,36,'Low Risk','24','Smoker','High',36,3,3,3,3,3,3,3,3),(4,7,'Low Risk','16','Smoker','Moderate',29,4,4,4,4,4,4,4,4),(5,10,'Low Risk','17','Smoker','Moderate',33,5,5,5,5,5,5,5,5),(6,41,'Low Risk','26','Non-Smoker','Low',32,6,6,6,6,6,6,6,6),(7,30,'High Risk','31','Non-Smoker','Low',43,7,7,7,7,7,7,7,7),(8,3,'High Risk','18','Smoker','Low',29,8,8,8,8,8,8,8,8),(9,47,'Low Risk','25','Smoker','Low',40,9,9,9,9,9,9,9,9),(10,72,'High Risk','24','Non-Smoker','Low',36,10,10,10,10,10,10,10,9),(11,67,'High Risk','29','Non-Smoker','Low',42,11,11,11,11,11,11,11,9),(12,29,'High Risk','23','Smoker','Moderate',33,12,12,12,12,12,12,12,4),(13,59,'Low Risk','28','Smoker','Moderate',32,13,13,13,13,13,13,13,3),(14,0,'Low Risk','19','Non-Smoker','Moderate',20,14,14,14,14,14,14,14,2),(15,45,'High Risk','22','Non-Smoker','High',42,15,15,15,15,15,15,15,6),(16,53,'High Risk','37','Non-Smoker','Low',41,16,16,16,16,16,16,16,1),(17,36,'Low Risk','31','Non-Smoker','Moderate',37,17,17,17,17,17,17,17,6),(18,1,'High Risk','17','Non-Smoker','Moderate',22,18,18,18,18,18,18,18,2),(19,60,'High Risk','32','Smoker','High',48,19,19,19,19,19,19,19,10),(20,16,'High Risk','18','Non-Smoker','High',30,20,20,20,20,20,20,20,4),(21,35,'High Risk','33','Non-Smoker','High',30,21,21,21,21,21,21,21,11),(22,44,'Low Risk','25','Smoker','Low',43,22,22,22,22,22,22,22,1),(23,14,'High Risk','19','Non-Smoker','Moderate',26,23,23,23,23,23,23,23,8),(24,64,'High Risk','29','Smoker','High',48,24,24,24,24,24,24,24,10),(25,9,'Low Risk','23','Smoker','High',31,25,25,25,25,25,25,25,5),(26,29,'High Risk','31','Smoker','Moderate',28,26,26,26,26,26,26,26,12),(27,65,'Low Risk','23','Smoker','Moderate',47,27,27,27,27,27,27,27,9),(28,34,'Low Risk','19','Smoker','Moderate',35,28,28,28,28,28,28,28,12),(29,51,'Low Risk','39','Non-Smoker','Low',47,29,29,29,29,29,29,29,7),(30,11,'High Risk','23','Smoker','Moderate',30,30,30,30,30,30,30,30,8);
/*!40000 ALTER TABLE `Patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pregnancy_History`
--

DROP TABLE IF EXISTS `Pregnancy_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pregnancy_History` (
  `Pregnancy_History_ID` int NOT NULL,
  `Pregnancy_History` varchar(45) NOT NULL,
  `Waist_Circumference` int NOT NULL,
  PRIMARY KEY (`Pregnancy_History_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pregnancy_History`
--

LOCK TABLES `Pregnancy_History` WRITE;
/*!40000 ALTER TABLE `Pregnancy_History` DISABLE KEYS */;
INSERT INTO `Pregnancy_History` VALUES (1,'Normal',50),(2,'Normal',24),(3,'Normal',36),(4,'Normal',29),(5,'Complications',33),(6,'Normal',32),(7,'Normal',43),(8,'Normal',29),(9,'Complications',40),(10,'Normal',36),(11,'Normal',42),(12,'Complications',33),(13,'Normal',32),(14,'Complications',20),(15,'Normal',42),(16,'Complications',41),(17,'Complications',37),(18,'Normal',22),(19,'Normal',48),(20,'Normal',30),(21,'Complications',30),(22,'Complications',43),(23,'Normal',26),(24,'Normal',48),(25,'Complications',31),(26,'Normal',28),(27,'Normal',47),(28,'Normal',35),(29,'Normal',47),(30,'Normal',30);
/*!40000 ALTER TABLE `Pregnancy_History` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-15 15:04:00

-- Calling the database
USE Team3_Diabetes_Final;

/*We are going to use aggregate to find the average cholesterol
levels by diabetes type*/
DROP VIEW IF EXISTS Diabetes_Cholesterol_Average;
CREATE VIEW Diabetes_Cholesterol_Average AS
	SELECT
		COUNT(p.Patient_ID) AS 'Number of Patients',
		dtn.Diabetes_Type_Name AS 'Diabetes Type',
        MIN(c.Cholesterol_Levels) AS 'Min_Cholesterol_lvls',
        MAX(c.Cholesterol_Levels) AS 'Max_Cholesterol_lvls',
        ROUND(AVG(c.Cholesterol_Levels), 2) AS 'Average_Cholesterol_lvls'
FROM Patients p
	JOIN Diabetes_Type dtn ON p.Diabetes_Type_ID = dtn.Diabetes_Type_ID
    JOIN Cholesterol c ON p.Cholesterol_ID = c.Cholesterol_ID
GROUP BY dtn.Diabetes_Type_Name
ORDER BY Average_Cholesterol_lvls DESC;


/* This query examines which lifestyle are most frequently associated with wolfram syndrome*/
DROP VIEW IF EXISTS Lifestyle_Wolfram_Syndrome;
CREATE VIEW Lifestyle_Wolfram_Syndrome AS 
	SELECT
		dtn.Diabetes_Type_Name AS 'Type of Diabetes',
        lsf.Physical_Activity AS 'Physical Levels',
        lsf.Dietary_Habits AS 'Dietary',
        lsf.Socioeconomic_Factors AS 'Socioeconmic Levels',
		COUNT(p.Patient_ID) AS 'Number of Patients'
FROM Patients p 
	JOIN Diabetes_Type dtn ON p.Diabetes_Type_ID = dtn.Diabetes_Type_ID
    JOIN Life_Style_Factors lsf ON p.Life_Style_ID = lsf.Life_Style_ID
WHERE Diabetes_Type_Name = "Wolfram Syndrome"
GROUP BY lsf.Physical_Activity, lsf.Dietary_Habits, lsf.Socioeconomic_Factors
ORDER BY COUNT(p.Patient_ID) DESC;


/*This query examines what are the top three genetic markers linked to Steroid-Induced Diabetes?*/
DROP VIEW IF EXISTS Genetic_Markers_SID;
CREATE VIEW Genetic_Markers_SID AS 
	SELECT
		COUNT(p.Patient_ID) AS 'Number of Patients',
        gm.Genetic_Markers AS 'Genetic Markers',
        dtn.Diabetes_Type_Name AS 'Type of Diabetes'
FROM Patients p
	JOIN Diabetes_Type dtn ON p.Diabetes_Type_ID = dtn.Diabetes_Type_ID
    JOIN Genetic_Information gm ON p.Genetic_ID = gm.Genetic_ID
WHERE Diabetes_Type_Name = 'Steroid-Induced Diabetes'
GROUP BY gm.Genetic_Markers
ORDER BY COUNT(p.Patient_ID) DESC;

/* Finds the most common types of diabetes recorded in the dataset */
DROP VIEW IF EXISTS Most_Common_Diabetes;
CREATE VIEW Most_Common_Diabetes AS
SELECT  
    dt.diabetes_type_name AS 'Type of Diabetes',  
    CONCAT(COUNT(p.patient_id), ' patients') AS '# of Patients'  
FROM  
    patients AS p  
JOIN  
    diabetes_type AS dt ON p.diabetes_type_id = dt.diabetes_type_id  
GROUP BY  
    dt.diabetes_type_name  
ORDER BY  
    COUNT(p.patient_id) DESC;
   
/* Finds the number of patients that have a family history of diabetes */
DROP VIEW IF EXISTS Family_History_Count;
CREATE VIEW Family_History_Counts AS
SELECT  
    Family_History,  
    COUNT(Med_History_ID) AS 'Number of Patients'  
FROM  
    medical_history  
GROUP BY Family_History;

# Physical activities more frequent than average
DROP VIEW IF EXISTS Physical_Activities_More_Frequent_Than_Average;
CREATE VIEW Physical_Activities_More_Frequent_Than_Average AS
SELECT 'Physical_Activities_More_Frequent_Than_Average' AS Description, Physical_Activity AS Result, NULL AS CountValue
FROM Life_Style_Factors
GROUP BY Physical_Activity
HAVING COUNT(Physical_Activity) > (
    SELECT AVG(activity_count)
    FROM (
        SELECT COUNT(Physical_Activity) AS activity_count
        FROM Life_Style_Factors
        GROUP BY Physical_Activity
    ) AS sub
)

UNION ALL

# Count of patients with high blood pressure (>140)
SELECT 'High_BP_Cases' AS Description, NULL AS Result, COUNT(Health_Assesment_ID) AS CountValue
FROM Health_Assesments
WHERE Blood_Pressure > 140

UNION ALL

# Count of patients by glucose tolerance test results
SELECT CONCAT('Glucose_Tolerance_Test_', Glucose_Tolerance_Test) AS Description, NULL AS Result, COUNT(Health_Assesment_ID) AS CountValue
FROM Health_Assesments
GROUP BY Glucose_Tolerance_Test;


/* Which patients exhibit genetic markers associated with Type 1 Diabetes?  */
DROP VIEW IF EXISTS Type_1_diabetes_genetic;
CREATE VIEW Type_1_diabetes_genetic AS
SELECT Patient_ID AS 'Type 1 Diabete patients who have positive genetic markers', Genetic_Markers 
FROM Genetic_Information
JOIN Patients
ON Genetic_Information.Genetic_ID = Patients.Genetic_ID
JOIN Diabetes_Type
ON Patients.Diabetes_Type_ID = Diabetes_Type.Diabetes_Type_ID
WHERE Genetic_Information.Genetic_Markers = 'Positive' AND Diabetes_Type.Diabetes_Type_ID = 4;

/* What is the average age of patients diagnosed with Prediabetes?  */
DROP VIEW IF EXISTS Prediabetes_Avg_age;
CREATE VIEW Prediabetes_Avg_age AS
SELECT Patients.Diabetes_Type_ID AS 'People with Prediabetes in dataset', FLOOR(AVG(Age)) AS 'Age'
FROM Patients
JOIN Diabetes_Type ON Patients.Diabetes_Type_ID=Diabetes_Type.Diabetes_Type_ID
WHERE Patients.Diabetes_Type_ID = 3
GROUP BY Patients.Diabetes_Type_ID;

/* Counts all the patients who are smoking/not smoking, linking table example */

DROP VIEW IF EXISTS Patient_Smoking_Status;
CREATE VIEW  Patient_Smoking_Status AS
SELECT  
    eos.smoking_status,  
    COUNT(mh.med_history_id) AS 'Number of Patients'  
FROM  
    early_onset_symptoms AS eos  
JOIN  
    medical_history AS mh ON eos.smoking_status = mh.smoking_status  
GROUP BY  
    eos.smoking_status  
ORDER BY  
    COUNT(mh.med_history_id) DESC;

-- Create a view with patient details

DROP VIEW IF EXISTS patient_details; 

CREATE VIEW patient_details AS
SELECT p.Patient_ID, p.Age, p.Ethnicity, p.BMI, dt.Diabetes_Type_Name
	FROM Patients p
		JOIN `Diabetes_Type` dt ON p.Diabetes_Type_ID = dt.Diabetes_Type_ID
ORDER BY Age;

-- Query for youngest and oldest patients
DROP VIEW IF EXISTS young_old_patients; 

CREATE VIEW young_old_patients AS

SELECT MIN(Age) AS Youngest_Patient_Age, MAX(Age) AS Oldest_Patient_Age
	FROM patient_details;


-- Create view for diabetes and BMI correlation
DROP VIEW IF EXISTS diabetes_bmi_correlation; 

CREATE VIEW diabetes_bmi_correlation AS
SELECT p.Patient_ID, p.BMI, p.Waist_Circumference, dt.Diabetes_Type_Name
	FROM patients p
		JOIN `Diabetes_Type` dt ON p.Diabetes_Type_ID = dt.Diabetes_Type_ID
ORDER BY Patient_ID;

-- Query analyzing obesity and Type 2 Diabetes correlation
SELECT 
    CASE 
        WHEN p.BMI >= '30' THEN 'Obese'
        WHEN p.BMI >= '25' THEN 'Overweight'
        ELSE 'Normal/Underweight'
    END AS Weight_Category,
    COUNT(p.Patient_ID) AS Total_Patients,
    SUM(CASE WHEN dt.Diabetes_Type_Name = 'Type 2' THEN 1 ELSE 0 END) AS Type2_Diabetes_Count,
    ROUND((SUM(CASE WHEN dt.Diabetes_Type_Name = 'Type 2' THEN 1 ELSE 0 END) / COUNT(p.Patient_ID)) * 100, 2) AS Type2_Diabetes_Percentage
	FROM patients p
		JOIN `Diabetes_Type` dt ON p.Diabetes_Type_ID = dt.Diabetes_Type_ID
WHERE p.BMI IS NOT NULL
GROUP BY Weight_Category
ORDER BY Type2_Diabetes_Percentage DESC;
