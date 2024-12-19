create database w;
use w;
CREATE TABLE Worker (
   Worker_Id INT PRIMARY KEY,
    FirstName CHAR(25),
    LastName CHAR(25),
    Salary decimal(10,2),
    JoiningDate DATETIME,
    Department CHAR(25)
);
##Create a stored procedure that takes in IN parameters for all the columns in the Worker table and adds a new record to the table and then invokes the procedure call.

delimiter //
create procedure addi(in pWorker_Id int, in pFirstName varchar(25),in pLastName varchar(25),in pSalary decimal(10,2) ,in pJoiningDate date,in pDepartment varchar(25))
begin
     insert into Worker ( Worker_Id ,FirstName ,LastName ,Salary,JoiningDate,Department) values( pWorker_Id , pFirstName ,pLastName , pSalary , pJoiningDate ,pDepartment);
end //

delimiter ;

call addi (1, 'John', 'Doe', 75000.50, '2015-06-01 09:00:00', 'HR');
call addi(2, 'Jane', 'Smith', 65000.25, '2018-03-15 10:30:00', 'IT');
call addi(3, 'Alice', 'Johnson', 80000.75, '2020-07-22 14:45:00', 'Finance');
call addi(4, 'Bob', 'Brown', 58000.00, '2012-11-05 08:20:00', 'Marketing');
call addi(5, 'Charlie', 'Davis', 72000.80, '2017-09-12 12:00:00', 'Operations');
call addi(6, 'Emily', 'Taylor', 69000.50, '2021-01-25 11:10:00', 'Sales');
call addi(7, 'Frank', 'Wilson', 61000.00, '2019-04-18 16:30:00', 'IT');
call addi(8, 'Grace', 'Martin', 95000.90, '2013-05-14 09:15:00', 'Finance');
call addi(9, 'Henry', 'Lee', 56000.40, '2016-08-08 10:05:00', 'HR');
call addi(10, 'Ivy', 'Clark', 87000.60, '2022-02-20 15:50:00', 'Operations');

select * from Worker;

##Write stored procedure takes in an IN parameter for WORKER_ID and an OUT parameter for SALARY. It should retrieve the salary of the worker with the given ID and returns it in the p_salary parameter. 

delimiter //
create procedure sal(in Pworker_Id int,out Psalary decimal(10,2))
begin
     select Salary INTO Psalary from Worker where Worker_Id=Pworker_Id;
end //
delimiter ;

set @Psalary=0;
call sal('1',@Psalary);
select @psalary as workSAlary;

##Create a stored procedure that takes in IN parameters for WORKER_ID and DEPARTMENT. It should update the department of the worker with the given ID. 

delimiter //
create procedure cal(in Pdepartment varchar(20),in Pworker_Id int)
begin
   update Worker set Department =Pdepartment where Worker_Id=Pworker_Id;
end //
delimiter ;

call cal('HR','3');
select * from Worker;

##Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT parameter for p_workerCount. It should retrieve the number of workers in the given department and returns it in the p_workerCount parameter.
 
 delimiter //
 create procedure kal(in Pdepartment varchar(20),out P_workerCount int)
 begin 
      select count(*) into P_workerCount from Worker where Department =Pdepartment ;
end //
delimiter ;
 
 set @P_workerCount=0;
 call kal('HR',@P_workerCount);
 select @p_workerCount as worker_Count;
 
##Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT parameter for p_avgSalary. It should retrieve the average salary of all workers in the given department and returns it in the p_avgSalary parameter and call the procedure.
  
  delimiter //
  create procedure kall( in Pdepartment varchar(25),out P_avgSalary decimal(10,2) )
  begin
        select avg(Salary) into P_avgSalary from Worker where Department=Pdepartment;
  end //
  delimiter ;
  
  set @P_avgSalary=0;
  call kall('HR',@P_avgSalary);
  select @P_avgSalary as Average_Salary;
  
  
  
  
  
  
 
 
 

