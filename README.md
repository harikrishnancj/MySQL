# MySQL


  ## DDL Commands
  ### Assignment 1
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

