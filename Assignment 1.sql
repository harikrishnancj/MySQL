create database student;
use student;
create table stud(
studentid int primary key,
fullname varchar(20) not null,
Mark  int,
Gender char(1) check(Gender in('M','F','o')));
desc stud;
Alter table stud add column contact varchar(10);
Alter table stud add column grade char(1);
Alter table stud drop column grade;
rename table stud to student;
truncate table student;
drop table student;