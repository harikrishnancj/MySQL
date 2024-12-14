create database enf;
use enf;
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area DECIMAL(15, 2)
);
CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 2),
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

INSERT INTO Country (Id, Country_name, Population, Area)
VALUES 
(1, 'India', 1380000000, 3287263),
(2, 'China', 1440000000, 9596961),
(3, 'Australia', 25000000, 7692024),
(4, 'Canada', 38000000, 9984670),
(5, 'Brazil', 213000000, 8515767),
(6, 'France', 65000000, 551695),
(7, 'Japan', 126000000, 377975),
(8, 'Italy', 60000000, 301340),
(9, 'USA', 331000000, 9833517),
(10, 'UK', 67000000, 243610);


INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES 
(1, 'Priya', 'Sharma', 1380000000, 4.8, 1, 'India'),
(2, 'Li', 'Wei', 1440000000, 4.2, 2, 'China'),
(3, 'Emma', 'White', 25000000, 4.6, 3, 'Australia'),
(4, 'Liam', 'Smith', 38000000, 4.1, 4, 'Canada'),
(5, 'Carlos', 'Silva', 213000000, 4.7, 5, 'Brazil'),
(6, 'Marie', 'Dubois', 65000000, 3.9, 6, 'France'),
(7, 'Taro', 'Yamamoto', 126000000, 4.9, 7, 'Japan'),
(8, 'Sophia', 'Ricci', 60000000, 4.0, 8, 'Italy'),
(9, 'John', 'Doe', 331000000, 4.5, 9, 'USA'),
(10, 'James', 'Brown', 67000000, 3.8, 10, 'UK');

##List the distinct country names from the Persons table

select distinct Country_name from Persons;

##Select first names and last names from the Persons table with aliases. 

select Fname as first_name,Lname as Last_name from Persons;

##Find all persons with a rating greater than 4.0.

select * from Persons where Rating>4.0;

##Find countries with a population greater than 10 lakhs.

select * from Persons where Population >1000000;

##Find persons who are from 'USA' or have a rating greater than 4.5.

select * from Persons where Country_name='United States' or Rating>4.5;

##Find all persons where the country name is NULL.

select * from Persons Where Country_name is null;

##Find all persons from the countries 'USA', 'Canada', and 'UK'. 

select * from Persons where Country_name IN('USA','canada','UK');

##Find all persons not from the countries 'India' and 'Australia'

select *from Persons where Country_name NOT IN('India','Australia');

##Find all countries with a population between 5 lakhs and 20 lakhs. 

select * from Country where Population between 500000 and 2000000;

##Find all countries whose names do not start with 'C'.

select * from Country where Country_name not like 'C%';


