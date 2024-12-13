create database sort;
use  sort;
create table Country(id int primary key,Country_name varchar(150) not null,Population decimal(12,2)
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
    (8, 'Italy', 60244639, 301340),
    (9, 'Japan', 126476461, 377975),
    (10, 'China', 1393409038, 9596961);
create table Persons(Pid int primary key,Fname varchar(50) not null,Lname varchar(50) ,Population int,
Rating int,id int,Countryname varchar(40),foreign key(id)references Country(id));
INSERT INTO Persons (Pid, Fname, Lname, Population, Rating, Id, Countryname) VALUES
(1, 'John', 'Doe', 331000000, 4.5, 1, 'United States'),
(2, 'Jane', 'Smith', 1393409038, 4.2, 2, 'India'),
(3, 'Wei', 'Wang', 1444216107, 4.7, 3, 'China'),
(4, 'Ivan', 'Ivanov', 146171015, 4.0, 4, 'Russia'),
(5, 'Maria', 'Silva', 213993437, 4.3, 5, 'Brazil'),
(6, 'Emily', 'Brown', 25687041, 4.1, 6, 'Australia'),
(7, 'Michael', 'Clark', 38005238, 3.8, 7, 'Canada'),
(8, 'Hans', 'Müller', 83166711, 4.6, 8, 'Germany'),
(9, 'Taro', 'Yamamoto', 125836021, 4.4, 9, 'Japan'),
(10, 'James', 'Wilson', 68207114, 4.5, 10, 'United Kingdom');

#Write an SQL query to print the first three characters of Country_name from the Country table.

select substr(Country_name,1,3) as First_three_letter from Country;

#Write an SQL query to concatenate first name and last name from Persons table.

Select concat(Fname,' ',Lname) as full_name from Persons;

#Write an SQL query to count the number of unique country names from Persons table. 

select count(distinct countryname) as distinct_countryname from Persons;

#Write a query to print the maximum population from the Country table.

select max(Population) as maximum from Country;

# Write a query to print the minimum population from Persons table.

select min(Population) as minimum from Persons;

#Insert 2 new rows to the Persons table making the Lname NULL. Then write another query to count Lname from Persons table.

INSERT INTO Persons (Pid, Fname, Lname, Population, Rating, Id, Countryname)
VALUES
(11, 'Alice', NULL,331000000, 4.5, 1, 'United States' ),
(12, 'Robert', NULL,68207114, 4.5, 10, 'United Kingdom');
select * from Persons;

SELECT COUNT(*) AS TotalLnameCount
FROM Persons;
     ##withoutnull
select count(Lname) from persons;
select count(*) from persons where Lname is not null;

 ##Write a query to find the number of rows in the Persons table.
 
 select count(*) as totalrow from persons;
 
 ##Write an SQL query to show the population of the Country table for the first 3 rows
 
 select * from Country limit 3;
 
 ##Write a query to print 3 random rows of countries

select * from Country order by rand()limit 3;


##List all persons ordered by their rating in descending order.

select * from Persons order by rating desc;


## Find the total population for each country in the Persons table. 

select Countryname,sum(Population) as total_population from Persons group by Countryname ;

##Find countries in the Persons table with a total population greater than 50,000


select countryname from Persons group by countryname having Sum(Population)>50000;


##List the total number of persons and average rating for each country, but only for countries with more than 2 persons, ordered by the average rating in ascending order.

select Countryname,count(Pid) as number_of_persons,avg(Rating) as Average_rating from Persons group by Countryname having
 count(Pid)>2 order by Average_rating asc;
