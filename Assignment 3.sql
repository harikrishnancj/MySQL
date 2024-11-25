-- Step 1: Create the Database
CREATE DATABASE man;
USE man;

-- Step 2: Create the Managers table with the required fields and constraints
CREATE TABLE Managers (
    Manager_id INT PRIMARY KEY,
    F_name VARCHAR(20) NOT NULL,
    L_name VARCHAR(20) NOT NULL,
    Dob DATE NOT NULL,
    Age INT CHECK (Age >= 18), -- Ensure age is 18 or above
    L_updates VARCHAR(20) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F', 'O')), -- Gender constraint to only allow 'M', 'F', or 'O'
    Depsalary INT NOT NULL -- Department salary, can't be NULL
);

-- Step 3: Insert records into the Managers table
INSERT INTO Managers (Manager_id, F_name, L_name, Dob, Age, L_updates, Gender, Depsalary)
VALUES
(1, 'Phoenix', 'Lukas', '1998-04-23', 26, '2024-11-01', 'M', 75000),
(2, 'Jett', 'Sunjoo', '2000-06-20', 24, '2024-10-25', 'F', 72000),
(3, 'Viper', 'Sabine', '1987-08-17', 37, '2024-09-15', 'F', 88000),
(4, 'Sage', 'Ling', '1995-03-07', 29, '2024-08-05', 'F', 75000),
(5, 'Brimstone', 'Liam', '1983-01-12', 41, '2024-07-20', 'M', 92000),
(6, 'Killjoy', 'Klara', '2001-10-16', 23, '2024-06-10', 'F', 62000),
(7, 'Cypher', 'Aamir', '1989-05-29', 35, '2024-05-15', 'M', 81000),
(8, 'Reyna', 'Zyanya', '1994-09-19', 30, '2024-04-25', 'F', 68000),
(9, 'Breach', 'Erik', '1985-11-03', 39, '2024-03-05', 'M', 73000),
(10, 'Sova', 'Andrei', '1990-02-27', 34, '2024-02-18', 'M', 78000),
(11, 'Chamber', 'Vincent', '1986-10-12', 38, '2024-01-30', 'M', 87000),
(12, 'Neon', 'Tala', '2003-02-14', 21, '2024-11-15', 'F', 60000),
(13, 'Astra', 'Efia', '1988-08-25', 36, '2024-08-10', 'F', 85000),
(14, 'Yoru', 'Ryō', '1999-07-02', 25, '2024-07-05', 'M', 70000),
(15, 'Skye', 'Hazel', '1997-11-18', 26, '2024-06-01', 'F', 65000),
(16, 'Harbor', 'Varun', '1984-09-05', 40, '2024-05-25', 'M', 89000),
(17, 'Fade', 'Hazan', '1993-03-29', 31, '2024-04-15', 'F', 72000),
(18, 'Raze', 'Tayane', '1996-01-09', 28, '2024-03-01', 'F', 70000),
(19, 'Kay/O', 'Unit01', '2017-06-15', 18, '2024-02-05', 'O', 65000),
(20, 'Clove', 'Maddox', '2003-08-11', 21, '2024-12-10', 'M', 74000),
(21, 'Gekko', 'Izan', '2004-05-04', 20, '2024-09-22', 'M', 71000),
(22, 'Iso', 'Zara', '2002-11-21', 22, '2024-11-01', 'F', 67000);

-- Step 4: Query to retrieve the name and date of birth of the manager with Manager_Id = 1
SELECT F_name, L_name, Dob
FROM Managers
WHERE Manager_Id = 1;

-- Step 5: Query to display the annual income (Depsalary * 12) of all managers
SELECT F_name, L_name, Depsalary * 12 AS AnnualSalary
FROM Managers;

-- Step 6: Query to display records of all managers except 'Skye'
SELECT *
FROM Managers
WHERE F_name != 'Skye';

-- Step 7: Add the 'Department' column to the Managers table
ALTER TABLE Managers
ADD COLUMN Department VARCHAR(50);

-- Step 8: Update the Department for each manager
UPDATE Managers
SET Department = 'HR'
WHERE Manager_Id = 1;

UPDATE Managers
SET Department = 'Finance'
WHERE Manager_Id = 2;

UPDATE Managers
SET Department = 'IT'
WHERE Manager_Id = 3;

UPDATE Managers
SET Department = 'Sales'
WHERE Manager_Id = 5;

UPDATE Managers
SET Department = 'Operations'
WHERE Manager_Id = 4;

UPDATE Managers
SET Department = 'Admin'
WHERE Manager_Id = 6;

UPDATE Managers
SET Department = 'IT'
WHERE Manager_Id = 7;

UPDATE Managers
SET Department = 'Marketing'
WHERE Manager_Id = 9;

UPDATE Managers
SET Department = 'Finance'
WHERE Manager_Id = 10;

UPDATE Managers
SET Department = 'Support'
WHERE Manager_Id = 12;

UPDATE Managers
SET Department = 'Design'
WHERE Manager_Id = 13;

UPDATE Managers
SET Department = 'Legal'
WHERE Manager_Id = 14;

UPDATE Managers
SET Department = 'Sales'
WHERE Manager_Id = 15;

UPDATE Managers
SET Department = 'Legal'
WHERE Manager_Id = 16;

UPDATE Managers
SET Department = 'Support'
WHERE Manager_Id = 17;

UPDATE Managers
SET Department = 'Design'
WHERE Manager_Id = 18;

UPDATE Managers
SET Department = 'Support'
WHERE Manager_Id = 19;

UPDATE Managers
SET Department = 'HR'
WHERE Manager_Id = 20;

UPDATE Managers
SET Department = 'Design'
WHERE Manager_Id = 21;

UPDATE Managers
SET Department = 'Marketing'
WHERE Manager_Id = 22;

-- Step 9: Query to display details of managers in the IT department who earn more than 25000 per month
SELECT *
FROM Managers
WHERE Department = 'IT' AND Depsalary >= 25000;

-- Step 10: Query to display details of managers whose salary is between 10,000 and 35,000
SELECT *
FROM Managers
WHERE Depsalary BETWEEN 10000 AND 35000;
