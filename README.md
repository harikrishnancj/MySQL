
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
