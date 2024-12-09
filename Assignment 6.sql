create database joins;
use  joins;
create table Country(id int primary key,Country_name varchar(150) ,Population decimal(12,2)
,Area decimal(12,5));
INSERT INTO Country (id, Country_name, Population, Area)
VALUES
    (1, 'USA', 331002651, 9833517),
    (2, 'Canada', 37742154, 9984670),
    (3, 'India', 1380004385, 3287263),
    (4, 'Australia', 25499884, 7692024),
    (5, 'UK', 67886011, 243610),
    (6, 'Germany', 83783942, 357022),
    (7, 'France', 65273511, 551695),
    (8, null, 60244639, 233113),
    (9, 'Japan', 126476461, 377975),
    (10, 'China', 1393409038, 9596961);
create table Persons(Pid int primary key,Fname varchar(50) not null,Lname varchar(50) ,Population int,
Rating int,id int,Countryname varchar(40),foreign key(id)references Country(id));
INSERT INTO Persons (Pid, Fname, Lname, Population, Rating, Id, Countryname) VALUES
(1, 'John', 'Doe', 331000000, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 1393409038, 4.2, 2, 'India'),
(3, 'Wei', 'Wang', 1444216107, 4.7, 3, 'China'),
(4, 'Ivan', 'Ivanov', 146171015, 4.0, 4, 'Russia'),
(5, 'Maria', 'Silva', 213993437, 4.3, 5, 'Brazil'),
(6, 'Emily', 'Brown', 25687041, 4.1, 6, 'Australia'),
(7, 'Michael', 'Clark', 38005238, 3.8, 7, 'Canada'),
(8, 'Hans', 'Müller', 83166711, 4.6, 8, 'italy'),
(9, 'Taro', 'Yamamoto', 125836021, 4.4, 9, 'Japan'),
(10, 'James', 'Wilson', 68207114, 4.5, 10, 'UK');


##Perform inner join, Left join, and Right join on the tables.

##Inner Join

select Persons.countryname as country_name ,Persons.pid as personal_id,Persons.Fname as first_name,Persons.Population as Population ,round(Country.Area) as area from Persons inner join Country on Persons.Countryname = Country.Country_name;

##Left Join

SELECT 
    Persons.Pid,
    Persons.Fname,
    Persons.Lname,
    Persons.Population AS Persons_Population,
    Persons.Rating,
    Country.Country_name,
    Country.Population AS Country_Population,
    Country.Area
FROM  Persons LEFT JOIN Country ON Persons.Countryname = Country.Country_name;


#right join

SELECT 
    Persons.Pid,
    Persons.Fname,
    Persons.Lname,
    Persons.Population AS Persons_Population,
    Persons.Rating,
    Country.Country_name,
    Country.Population AS Country_Population,
    Country.Area
FROM  Persons LEFT JOIN Country ON Persons.Countryname = Country.Country_name;


##List all distinct country names from both the Country and Persons tables. 

select Persons.Countryname from Persons 
union
select Country.Country_name from country;


##List all country names from both the Country and Persons tables, including duplicates


select Persons.Countryname from Persons 
union all
select Country.Country_name from country;

##Round the ratings of all persons to the nearest integer in the Persons table.

select round(Rating,0) as Rating ,Fname from Persons;