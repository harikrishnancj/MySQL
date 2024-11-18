-- MySQL

-- Assignment 1: DDL Commands

-- CREATE
CREATE DATABASE database_name;
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
);

-- ALTER
ALTER TABLE table_name ADD column_name datatype;
ALTER TABLE table_name DROP COLUMN column_name;

-- DROP
DROP DATABASE database_name;
DROP TABLE table_name;

-- RENAME
RENAME TABLE old_table_name TO new_table_name;

-- TRUNCATE
TRUNCATE TABLE table_name;


-- Assignment 2: DML Commands

-- ADD A NEW COLUMN TO THE TABLE
ALTER TABLE table_name ADD COLUMN column_name datatype;

-- RENAME TABLE
RENAME TABLE old_table_name TO new_table_name;

-- INSERT ROWS INTO THE TABLE
INSERT INTO table_name (column1, column2, column3, ...)
VALUES 
(value1, value2, value3, ...),
(value1, value2, value3, ...),
...;

-- SELECT SPECIFIC COLUMNS FROM THE TABLE
SELECT column1, column2 FROM table_name;

-- UPDATE A COLUMN VALUE IN THE TABLE
UPDATE table_name
SET column_name = new_value
WHERE condition;

-- DELETE TABLE FROM THE DATABASE
DROP TABLE table_name;
