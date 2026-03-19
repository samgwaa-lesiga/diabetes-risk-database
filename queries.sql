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
