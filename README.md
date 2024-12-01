# MySQL Commands

## Assignment 1: DDL Commands
- **CREATE**
- **ALTER**
- **DROP**
- **RENAME**
- **TRUNCATE**

## Assignment 2: DML Commands
- **ADD A NEW COLUMN**
- **RENAME TABLE**
- **INSERT ROWS**
- **SELECT COLUMNS**
- **UPDATE A COLUMN**
- **DELETE TABLE**

## Assignment 3:DML Command

- **Create the Managers Table**
- **Insert Data**
- **Retrieve Name and DOB of Manager with Manager_Id 1**
- **Display Annual Income of All Managers**
- **Display Records of All Managers Except 'Aaliya'**
- **Display Managers in IT Department with Salary > 25000**
- **Display Managers with Salary Between 10000 and 35000**


##Assignment 4

1. List distinct country names from the `Persons` table:
    ```sql
    SELECT DISTINCT Country_name FROM Persons;
    ```

2. Select first and last names with aliases:
    ```sql
    SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;
    ```

3. Find all persons with a rating greater than 4.0:
    ```sql
    SELECT * FROM Persons WHERE Rating > 4.0;
    ```

4. Find countries with a population greater than 10 lakhs:
    ```sql
    SELECT * FROM Country WHERE Population > 1000000;
    ```

5. Find persons from 'USA' or with a rating greater than 4.5:
    ```sql
    SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;
    ```

6. Find all persons where the country name is NULL:
    ```sql
    SELECT * FROM Persons WHERE Country_name IS NULL;
    ```

7. Find all persons from 'USA', 'Canada', and 'UK':
    ```sql
    SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');
    ```

8. Find all persons not from 'India' and 'Australia':
    ```sql
    SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');
    ```

9. Find all countries with a population between 5 lakhs and 20 lakhs:
    ```sql
    SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;
    ```

10. Find all countries whose names do not start with 'C':
    ```sql
    SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';
    ```
