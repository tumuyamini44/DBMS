CREATE DATABASE Pharmacy;
USE Pharmacy;

CREATE TABLE Tablets(
    Tablet_ID INT,
    Tablet_Name VARCHAR(30),
    Tablet_Weight DECIMAL(5,2),
    Disease VARCHAR(100),
    Symptom VARCHAR(50)
);

INSERT INTO Tablets
VALUES
(1,'Paracetamol',500.50,'Fever','High Temperature'),
(2,'Dolo 650',650.00,'Body Pain','Muscle Pain'),
(3,'Cetirizine',10.00,'Allergy','Sneezing'),
(4,'Crocin',500.90,'Headache','Head Pain'),
(5,'Azithromycin',250.00,'Throat Infection','Sore Throat'),
(6,'Amoxicillin',500.00,'Infection','Fever'),
(7,'Ibuprofen',400.00,'Pain','Joint Pain'),
(8,'Aspirin',350.00,'Heart Disease','Chest Pain'),
(9,'Metformin',850.00,'Diabetes','High Sugar'),
(10,'Omeprazole',20.00,'Acidity','Stomach Pain'),
(11,'Vitamin C',500.00,'Vitamin Deficiency','Weakness'),
(12,'Levocetirizine',5.00,'Allergy','Sneezing'),
(13,'Pantoprazole',40.00,'Acidity','Burning Sensation'),
(14,'Ciprofloxacin',500.00,'Bacterial Infection','Fever'),
(15,'Zinc Tablet',50.00,'Immunity','Weakness');

SELECT * FROM Tablets;

ALTER TABLE Tablets
ADD Cost DECIMAL(8,2);

ALTER TABLE Tablets
RENAME COLUMN Cost TO Tablet_Cost;

UPDATE Tablets SET Tablet_Cost=20.40 WHERE Tablet_ID=1;
UPDATE Tablets SET Tablet_Cost=93.50 WHERE Tablet_ID=2;
UPDATE Tablets SET Tablet_Cost=10.65 WHERE Tablet_ID=3;
UPDATE Tablets SET Tablet_Cost=19.75 WHERE Tablet_ID=4;
UPDATE Tablets SET Tablet_Cost=100.00 WHERE Tablet_ID=5;
UPDATE Tablets SET Tablet_Cost=99.50 WHERE Tablet_ID=6;
UPDATE Tablets SET Tablet_Cost=35.00 WHERE Tablet_ID=7;
UPDATE Tablets SET Tablet_Cost=42.50 WHERE Tablet_ID=8;
UPDATE Tablets SET Tablet_Cost=75.00 WHERE Tablet_ID=9;
UPDATE Tablets SET Tablet_Cost=30.00 WHERE Tablet_ID=10;
UPDATE Tablets SET Tablet_Cost=15.00 WHERE Tablet_ID=11;
UPDATE Tablets SET Tablet_Cost=18.00 WHERE Tablet_ID=12;
UPDATE Tablets SET Tablet_Cost=32.00 WHERE Tablet_ID=13;
UPDATE Tablets SET Tablet_Cost=110.00 WHERE Tablet_ID=14;
UPDATE Tablets SET Tablet_Cost=25.00 WHERE Tablet_ID=15;

ALTER TABLE Tablets
ADD Qty INT;

UPDATE Tablets SET Qty=10 WHERE Tablet_ID=1;
UPDATE Tablets SET Qty=5 WHERE Tablet_ID=2;
UPDATE Tablets SET Qty=12 WHERE Tablet_ID=3;
UPDATE Tablets SET Qty=8 WHERE Tablet_ID=4;
UPDATE Tablets SET Qty=6 WHERE Tablet_ID=5;
UPDATE Tablets SET Qty=9 WHERE Tablet_ID=6;
UPDATE Tablets SET Qty=15 WHERE Tablet_ID=7;
UPDATE Tablets SET Qty=7 WHERE Tablet_ID=8;
UPDATE Tablets SET Qty=10 WHERE Tablet_ID=9;
UPDATE Tablets SET Qty=20 WHERE Tablet_ID=10;
UPDATE Tablets SET Qty=18 WHERE Tablet_ID=11;
UPDATE Tablets SET Qty=11 WHERE Tablet_ID=12;
UPDATE Tablets SET Qty=13 WHERE Tablet_ID=13;
UPDATE Tablets SET Qty=9 WHERE Tablet_ID=14;
UPDATE Tablets SET Qty=16 WHERE Tablet_ID=15;

ALTER TABLE Tablets
ADD Age_Group VARCHAR(20);

UPDATE Tablets SET Age_Group='Adult' WHERE Tablet_ID=1;
UPDATE Tablets SET Age_Group='Child' WHERE Tablet_ID=2;
UPDATE Tablets SET Age_Group='Senior Citizen' WHERE Tablet_ID=3;
UPDATE Tablets SET Age_Group='Adult' WHERE Tablet_ID=4;
UPDATE Tablets SET Age_Group='Child' WHERE Tablet_ID=5;
UPDATE Tablets SET Age_Group='Adult' WHERE Tablet_ID=6;
UPDATE Tablets SET Age_Group='Adult' WHERE Tablet_ID=7;
UPDATE Tablets SET Age_Group='Senior Citizen' WHERE Tablet_ID=8;
UPDATE Tablets SET Age_Group='Adult' WHERE Tablet_ID=9;
UPDATE Tablets SET Age_Group='Child' WHERE Tablet_ID=10;
UPDATE Tablets SET Age_Group='Adult' WHERE Tablet_ID=11;
UPDATE Tablets SET Age_Group='Child' WHERE Tablet_ID=12;
UPDATE Tablets SET Age_Group='Adult' WHERE Tablet_ID=13;
UPDATE Tablets SET Age_Group='Senior Citizen' WHERE Tablet_ID=14;
UPDATE Tablets SET Age_Group='Adult' WHERE Tablet_ID=15;

-- WHERE with AND
SELECT Tablet_ID, Tablet_Name, Tablet_Weight, Disease, Symptom
FROM Tablets
WHERE Disease='Allergy'
AND Tablet_Weight<20;

-- GROUP BY
SELECT Symptom, COUNT(*) AS Total_Tablets
FROM Tablets
GROUP BY Symptom;

-- HAVING
SELECT Age_Group, COUNT(*) AS Total
FROM Tablets
GROUP BY Age_Group
HAVING COUNT(*)>=2;

-- MIN and MAX
SELECT
MIN(Tablet_Weight) AS Minimum_Weight,
MAX(Tablet_Weight) AS Maximum_Weight
FROM Tablets;

-- Total Weight
SELECT
Tablet_ID,
Tablet_Name,
Tablet_Weight*Qty AS Total_Weight,
Symptom
FROM Tablets;

-- Delete one column
ALTER TABLE Tablets
DROP COLUMN Cost ;

-- Display all records
SELECT * FROM Tablets;