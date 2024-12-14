create database b;
use b;

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
    Population INT,
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
    ('Charlie', 'Brown', 0, 4.2, 3, 'China'),
    ('Diana', 'Ross', 0, 4.8, 4, 'Brazil'),
    ('Ethan', 'Hunt', 0, 4.3, 5, 'Russia'),
    ('Fiona', 'Clark', 0, 4.6, 6, 'Canada'),
    ('George', 'White', 0, 4.4, 7, 'Australia'),
    ('Hannah', 'Adams', 0, 4.9, 8, 'Germany'),
    ('Ivy', 'Taylor', 0, 4.1, 9, 'France'),
    ('Jack', 'Wilson', 0, 4.5, 10, 'Japan');
##Add a new column called DOB in Persons table with data type as Date

alter table persons add dob date;

update persons set dob = '2000-12-22' where id= 1;
UPDATE Persons SET DOB = '1990-04-15' WHERE Id = 2; 
UPDATE Persons SET DOB = '1985-06-08' WHERE Id = 3; 
UPDATE Persons SET DOB = '1975-09-25' WHERE Id = 4;
UPDATE Persons SET DOB = '2000-01-01' WHERE Id = 5;
UPDATE Persons SET DOB = '1995-05-18' WHERE Id = 6;
UPDATE Persons SET DOB = '1988-11-22' WHERE Id = 7; 
UPDATE Persons SET DOB = '1965-02-14' WHERE Id = 8; 
UPDATE Persons SET DOB = '1978-03-30' WHERE Id = 9; 
UPDATE Persons SET DOB = '1992-08-20' WHERE Id = 10; 

select * from persons;
 ##Write a user-defined function to calculate age using DOB
 
 delimiter //
 create function age(dob date)
 returns int
 deterministic
 begin
        declare age int;
	    set age = timestampdiff(year, dob, curdate());
        return age;
end //
delimiter ;        

##Write a select query to fetch the Age of all persons using the function that has been created.

SELECT Fname, Lname, age(DOB) AS Age FROM Persons;

## Find the length of each country name in the Country table. 

select Country_name,length(Country_name) as length from Country;


##Extract the first three characters of each country's name in the Country table.

select substr(Country_name,1,3) as characters from Country;

 ##Convert all country names to uppercase and lowercase in the Country table.
 
 select upper(Country_name) as Upper_case ,Lower(Country_name) as Lower_case from Country;


