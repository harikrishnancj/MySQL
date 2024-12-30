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


## Assignment 4

**SQL Query Keywords**

 1. List Distinct Country Names
- `SELECT`, `DISTINCT`, `FROM`

 2. Use Aliases for Columns
- `SELECT`, `AS`
 3. Find Persons with Rating > 4.0
- `SELECT`, `FROM`, `WHERE`, `>`
 4. Find Countries with Population > 1,000,000
- `SELECT`, `FROM`, `WHERE`, `>`
 5. Find Persons from 'USA' or with Rating > 4.5
- `SELECT`, `FROM`, `WHERE`, `OR`, `>`
 6. Find Persons with Country Name as NULL
- `SELECT`, `FROM`, `WHERE`, `IS NULL`
 7. Find Persons from Specific Countries ('USA', 'Canada', 'UK')
- `SELECT`, `FROM`, `WHERE`, `IN`
 8. Find Persons Not from Specific Countries ('India', 'Australia')
- `SELECT`, `FROM`, `WHERE`, `NOT IN`
 9. Find Countries with Population Between 5 Lakhs and 20 Lakhs
- `SELECT`, `FROM`, `WHERE`, `BETWEEN`
 10. Find Countries Whose Names Do Not Start with 'C'
- `SELECT`, `FROM`, `WHERE`, `NOT LIKE`
 ## Assignment 5
 **sorting and limiting**
- where
- having
- order by
- limit
- group by
- count
- min
- max
- avg

## Assignment 6
**Union and Join**
- Inner Join
- Left Join
- Right Join
- Union
- Union All

## Assignment 7
**Functions**

A MySQL function is created using the `CREATE FUNCTION` statement. Here's the basic syntax:

```sql
CREATE FUNCTION function_name (parameters)
RETURNS return_type
[characteristics]
DETERMINISTIC|NOT DETERMINISTIC
SQL DATA ACCESS
BEGIN
    -- Function body
    -- SQL statements
    RETURN expression;
END;

```
function calling

select function name(parmeter);

## Assignment 8
**Subqueries and Views**
# MySQL Subquery Syntax

**1. Single-Row Subquery**

A single-row subquery returns exactly one value (one row and one column). It is used in queries where you compare a column to a single value.

### Syntax:

```sql
SELECT column1, column2
FROM table_name
WHERE column1 = (SELECT column_name FROM another_table WHERE condition);

```

**2. Multi-Row Subquery**
A multi-row subquery returns multiple rows. It is often used with operators like IN, ANY, or ALL to compare a column with multiple values.

### Syntax:

```sql
Copy code
SELECT column1, column2
FROM table_name
WHERE column1 IN (SELECT column_name FROM another_table WHERE condition);

```


**3. Nested Subquery**

A nested subquery is a subquery within another subquery. It can be used for more complex queries and can appear in various parts of the SQL statement.

###Syntax:
```sql
Copy code
SELECT column1
FROM table_name
WHERE column1 = (SELECT column_name FROM (SELECT column_name FROM another_table) AS alias);
```
**4. Correlated Subquery**
A correlated subquery refers to columns from the outer query. It is executed once for each row of the outer query and often compares a value from the outer query with a value returned by the subquery.

###Syntax:
```sql
Copy code
SELECT column1, column2
FROM table_name outer
WHERE column1 = (SELECT column_name FROM another_table inner WHERE inner.column_name = outer.column_name);
```

## Creating a View

A **view** is created using the `CREATE VIEW` statement, followed by a `SELECT` query. The result set of the `SELECT` query is stored as a virtual table.

### Syntax:


```sql
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```
## Assignment 9
**Stored Procedures**

### MySQL Stored Procedure Syntax

The basic structure for creating a stored procedure in MySQL is as follows:

```sql
DELIMITER //

CREATE PROCEDURE procedure_name (
    [parameter1 datatype [IN | OUT | INOUT]],
    [parameter2 datatype [IN | OUT | INOUT]],
    ...
)
BEGIN
    -- SQL Statements to be executed
    -- Can include SELECT, INSERT, UPDATE, DELETE, etc.
END //

DELIMITER ;
```
### Parameters:

You can define parameters for the procedure:

**IN**: Input parameter, passed when calling the procedure.

**OUT**: Output parameter, will hold the result when the procedure finishes execution.

**INOUT**: Can be used for both input and output (i.e., the parameter is modified inside the procedure).

## Assignment 10
**TRigger**
```sql
### BEFORE INSERT Trigger

DELIMITER //
CREATE TRIGGER trigger_name
BEFORE INSERT ON table_name
FOR EACH ROW
BEGIN
    -- Trigger logic here
END //
DELIMITER ;

### AFTER INSERT Trigger

DELIMITER //
CREATE TRIGGER trigger_name
AFTER INSERT ON table_name
FOR EACH ROW
BEGIN
    -- Trigger logic here
END //
DELIMITER ;

### BEFORE DELETE Trigger

DELIMITER //
CREATE TRIGGER trigger_name
BEFORE DELETE ON table_name
FOR EACH ROW
BEGIN
    -- Trigger logic here
END //
DELIMITER ;

### AFTER DELETE Trigger

DELIMITER //
CREATE TRIGGER trigger_name
AFTER DELETE ON table_name
FOR EACH ROW
BEGIN
    -- Trigger logic here
END //
DELIMITER ;

### BEFORE UPDATE Trigger

DELIMITER //
CREATE TRIGGER trigger_name
BEFORE UPDATE ON table_name
FOR EACH ROW
BEGIN
    -- Trigger logic here
END //
DELIMITER ;

### AFTER UPDATE Trigger
DELIMITER //
CREATE TRIGGER trigger_name
AFTER UPDATE ON table_name
FOR EACH ROW
BEGIN
    -- Trigger logic here
END //
DELIMITER ;

# Library Management System

## Topic: Library Management System  

This project is based on a Library Management System that tracks all information about books in the library, their cost, status, and the total number of books available.  

---

## Database Structure  

### **Database Name:**  
`library`  

### **Tables:**  
1. **Branch**  
2. **Employee**  
3. **Books**  
4. **Customer**  
5. **IssueStatus**  
6. **ReturnStatus**  

---

### **Attributes for the Tables:**  

#### **1. Branch**  
- `Branch_no` - Set as **PRIMARY KEY**  
- `Manager_Id`  
- `Branch_address`  
- `Contact_no`  

#### **2. Employee**  
- `Emp_Id` - Set as **PRIMARY KEY**  
- `Emp_name`  
- `Position`  
- `Salary`  
- `Branch_no` - Set as **FOREIGN KEY** and refers to `Branch_no` in the **Branch** table  

#### **3. Books**  
- `ISBN` - Set as **PRIMARY KEY**  
- `Book_title`  
- `Category`  
- `Rental_Price`  
- `Status` [Specify 'Yes' if the book is available and 'No' if not]  
- `Author`  
- `Publisher`  

#### **4. Customer**  
- `Customer_Id` - Set as **PRIMARY KEY**  
- `Customer_name`  
- `Customer_address`  
- `Reg_date`  

#### **5. IssueStatus**  
- `Issue_Id` - Set as **PRIMARY KEY**  
- `Issued_cust` - Set as **FOREIGN KEY** and refers to `Customer_Id` in the **Customer** table  
- `Issued_book_name`  
- `Issue_date`  
- `Isbn_book` - Set as **FOREIGN KEY** and refers to `ISBN` in the **Books** table  

#### **6. ReturnStatus**  
- `Return_Id` - Set as **PRIMARY KEY**  
- `Return_cust`  
- `Return_book_name`  
- `Return_date`  
- `Isbn_book2` - Set as **FOREIGN KEY** and refers to `ISBN` in the **Books** table  

---

### **Queries:**  

1. Retrieve the book title, category, and rental price of all available books.  

2. List the employee names and their respective salaries in descending order of salary.  

3. Retrieve the book titles and the corresponding customers who have issued those books.  

4. Display the total count of books in each category.  

5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.  

6. List the customer names who registered before 2022-01-01 and have not issued any books yet.  

7. Display the branch numbers and the total count of employees in each branch.  

8. Display the names of customers who have issued books in the month of June 2023.  

9. Retrieve book titles from the Books table that belong to the "History" category.  

10. Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.  

11. Retrieve the names of employees who manage branches and their respective branch addresses.  

12. Display the names of customers who have issued books with a rental price higher than Rs. 25.  

