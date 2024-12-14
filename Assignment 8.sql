create database a;
use a;

CREATE TABLE Country (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population BIGINT,
    Area FLOAT
);

-- Insert 10 rows into Country
INSERT INTO Country (Country_name, Population, Area)
VALUES
    ('United States', 331002651, 9833517),
    ('India', 1380004385, 3287263),
    ('China', 1439323776, 9596961),
    ('Brazil', 212559417, 8515767),
    ('Russia', 145934462, 17098242),
    ('Canada', 37742154, 9984670),
    ('Australia', 25499884, 7692024),
    ('Germany', 83783942, 357022),
    ('France', 65273511, 551695),
    ('Japan', 126476461, 377975);

CREATE TABLE Persons (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population bigint,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

-- Insert 10 rows into Persons
INSERT INTO Persons (Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES
    ('Alice', 'Johnson', 0, 4.5, 1, 'United States'),
    ('Bob', 'Smith', 0, 4.7, 2, 'India'),
    ('Charlie', 'Brown', 0, 4.5, 3, 'China'),
    ('Diana', 'Ross', 0, 4.8, 4, 'Brazil'),
    ('Ethan', 'Hunt', 0, 4.3, 5, 'Russia'),
    ('Fiona', 'Clark', 0, 4.6, 6, 'Canada'),
    ('George', 'White', 0, 4.4, 7, 'Australia'),
    ('Hannah', 'Adams', 0, 4.9, 8, 'Germany'),
    ('Ivy', 'Taylor', 0, 4.1, 9, 'France'),
    ('Jack', 'Wilson', 0, 4.5, 1, 'United States');
    
##Find the number of persons in each country.

select Country_name,count(*) as count_of_persons from Persons group by Country_name;


##Find the number of persons in each country sorted from high to low. 

select Country_name ,Count(*) as Count_of_persons from Persons Group by Country_name order by Count_of_persons  desc;

## Find out an average rating for Persons in respective countries if the average is greater than 3.0.

select Country_name, round( avg(Rating),1 )as average_rating from Persons group by Country_name having average_rating>3.0;

##Find the countries with the same rating as the USA. (Use Subqueries).

select distinct Country_name  from Persons where rating in(select rating from Persons where Country_name ='United States');


##Select all countries whose population is greater than the average population of all nations.

select Country_name from Country where Population>(select avg(Population) from Country);

CREATE DATABASE Product;

USE Product;

CREATE TABLE Customer (
    Customer_Id INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Email VARCHAR(100),
    Phone_no VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Zip_code VARCHAR(20),
    Country VARCHAR(100)
);
 INSERT INTO Customer (First_name, Last_name, Email, Phone_no, Address, City, State, Zip_code, Country)
VALUES
    ('Jett', 'Han', 'jett@example.com', '123-456-7890', '123 Sky Lane', 'Los Angeles', 'California', '90001', 'South Korea'),
    ('Phoenix', 'Adeyemi', 'phoenix@example.com', '123-456-7891', '456 Blaze Ave', 'London', 'England', 'W1A 1AA', 'United Kingdom'),
    ('Sage', 'Wei', 'sage@example.com', '123-456-7892', '789 Healing Rd', 'Shanghai', 'Shanghai', '200000', 'China'),
    ('Reyna', 'Mondragón', 'reyna@example.com', '123-456-7893', '321 Vengeful Blvd', 'Mexico City', 'CDMX', '01000', 'Mexico'),
    ('Raze', 'Alves', 'raze@example.com', '123-456-7894', '654 Explosive St', 'Rio de Janeiro', 'Rio de Janeiro', '20000-000', 'Brazil'),
    ('Breach', 'Torsten', 'breach@example.com', '123-456-7895', '987 Earthquake Ln', 'Stockholm', 'Stockholm', '10000', 'Sweden'),
    ('Omen', 'Redacted', 'omen@example.com', '123-456-7896', '159 Shadow Way', 'Istanbul', 'Istanbul', '34000', 'Turkey'),
    ('Killjoy', 'Böhringer', 'killjoy@example.com', '123-456-7897', '123 Tech St', 'Berlin', 'Berlin', '10115', 'Germany'),
    ('Viper', 'Callas', 'viper@example.com', '123-456-7898', '654 Toxic Blvd', 'New York', 'New York', '10001', 'United States'),
    ('Cypher', 'El Amari', 'cypher@example.com', '123-456-7899', '987 Surveillance Rd', 'Casablanca', 'Casablanca-Settat', '20000', 'Morocco'),
    ('Brimstone', 'Byrne', 'brimstone@example.com', '123-456-7900', '321 Firepower St', 'Las Vegas', 'Nevada', '89101', 'United States'),
    ('Sova', 'Novikov', 'sova@example.com', '123-456-7901', '654 Tracker Ln', 'Moscow', 'Moscow', '101000', 'Russia'),
    ('Astra', 'Danso', 'astra@example.com', '123-456-7902', '159 Cosmos Rd', 'Accra', 'Greater Accra', '00100', 'Ghana'),
    ('Yoru', 'Kiritani', 'yoru@example.com', '123-456-7903', '321 Reality Blvd', 'Tokyo', 'Tokyo', '100-0001', 'Japan'),
    ('KAY/O', 'Unknown', 'kayo@example.com', '123-456-7904', '654 Disruptor Ln', 'Los Angeles', 'California', '90001', 'United States'),
    ('Harbor', 'Batra', 'harbor@example.com', '123-456-7905', '123 Waterway Rd', 'Mumbai', 'Maharashtra', '400001', 'India'),
    ('Gekko', 'Armendáriz De la Fuente', 'gekko@example.com', '123-456-7906', '456 Earthquake St', 'Los Angeles', 'California', '90001', 'United States'),
    ('Iso', 'Yu', 'isova@example.com', '123-456-7907', '789 Infinity Blvd', 'Tokyo', 'Tokyo', '100-0001', 'Japan'),
    ('Deadlock', 'Unknown', 'deadlock@example.com', '123-456-7908', '987 Gale Ln', 'Sydney', 'New South Wales', '2000', 'Australia'),
    ('Vyse', 'Smith', 'vyse@example.com', '123-456-7908', '987 Gale Ln', 'Sydney', 'New South Wales', '2000', 'Australia');

##Create a view named customer_info for the Customer table that displays Customer’s Full name and email address. Then perform the SELECT operation for the customer_info view. 

create view Customer_info as
select concat(First_name,' ',Last_name) as Full_name,Email from Customer;
 
SELECT * FROM customer_info;

##Create a view named US_Customers that displays customers located in the US.

create view US_Customers as
select * from Customer where Country='United states';

select * from US_Customers;

# Create another view named Customer_details with columns full name(Combine first_name and last_name), email, phone_no, and state.

create view Customer_details as
select concat(First_name,' ',Last_name) as Full_name ,Email,Phone_no,State from Customer;

select * from Customer_details;

##Update phone numbers of customers who live in California for Customer_details view.


SET SQL_SAFE_UPDATES = 0;
update  Customer  set phone_no = '123-456-999' WHERE State = 'California';
select * from Customer_details;

##Count the number of customers in each state and show only states with more than 5 customers.

select state, count(*) as number_customer from customer group by state having number_customer>5;

##Write a query that will return the number of customers in each state, based on the "state" column in the "customer_details" view.

select state,count(*) as number_of_customer from Customer_details group by state;

##Write a query that returns all the columns from the "customer_details" view, sorted by the "state" column in ascending order.

select * from Customer_details order by state asc;

