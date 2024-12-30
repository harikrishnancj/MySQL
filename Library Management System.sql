create database libary;
use libary;

## Branch Branch_no - Set as PRIMARY KEY Manager_Id Branch_address Contact_no

create table Branch(Branch_no int primary key, Manger_id int,Branch_address varchar(20),Contact_no varchar(10));
INSERT INTO Branch (Branch_no, Manger_id, Branch_address, Contact_no)
VALUES 
(1, 101, 'Downtown', 1234567890),
(2, 102, 'Uptown', 9876543210),
(3, 103, 'Suburban', 5556667777);

##Employee Emp_Id – Set as PRIMARY KEY Emp_name Position Salary Branch_no - Set as FOREIGN KEY and it refer Branch_no in Branch table 

create table Employee(Emp_id int primary key ,Emp_name varchar(20),Position varchar(20),Branch_no int,Salary int ,foreign key (Branch_no) references Branch(Branch_no));
INSERT INTO Employee (Emp_id, Emp_name, Position, Salary, Branch_no)
VALUES 
(201, 'Alice', 'Manager', 60000, 1),
(202, 'Bob', 'Assistant', 40000, 1),
(203, 'Charlie', 'Clerk', 30000, 2),
(204, 'David', 'Manager', 55000, 2),
(205, 'Eve', 'Assistant', 45000, 3);

## Books ISBN - Set as PRIMARY KEY Book_title Category Rental_Price Status [Give yes if book available and no if book not available] Author Publisher

create table Books(ISBN varchar(20) primary key,Book_title varchar(40),Category varchar(20),Rental_price int,Statuss varchar(40) check(Statuss in('Yes','No')));
INSERT INTO Books (ISBN, Book_title, Category, Rental_price, Statuss)
VALUES 
('978-3-16-148410-0', 'Data Science Basics', 'Science', 30, 'Yes'),
('978-0-07-059829-6', 'Introduction to Python', 'Programming', 25, 'No'),
('978-1-84-719670-6', 'History of Europe', 'History', 40, 'Yes'),
('978-0-12-374856-0', 'Java Programming', 'Programming', 35, 'Yes'),
('978-0-13-110362-7', 'Computer Networks', 'Technology', 50, 'No');

## Customer Customer_Id - Set as PRIMARY KEY Customer_name Customer_address Reg_date

create table Customer(Customer_id int primary key,Customer_name varchar(20),Customer_address varchar(20),Reg_date date);
INSERT INTO Customer (Customer_id, Customer_name, Customer_address, Reg_date)
VALUES 
(301, 'John Doe', 'Street 1, City', '2021-06-15'),
(302, 'Jane Smith', 'Street 2, City', '2022-02-20'),
(303, 'Emily Johnson', 'Street 3, City', '2020-11-11'),
(304, 'Michael Brown', 'Street 4, City', '2023-01-25');

##IssueStatus Issue_Id - Set as PRIMARY KEY Issued_cust – Set as FOREIGN KEY and it refer customer_id in CUSTOMER table Issued_book_name Issue_date Isbn_book – Set as FOREIGN KEY and it should refer isbn in BOOKS table.

create table IssueStatus(Issue_id int primary key,Issued_cust int,Issued_book_name varchar(20),Issue_date date,Isbn_book varchar(20),foreign key(Isbn_book ) references Books(ISBN),foreign key (Issued_cust) references Customer(Customer_id));
INSERT INTO IssueStatus (Issue_id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES 
(401, 301, 'Data Science Basics', '2023-06-05', '978-3-16-148410-0'),
(402, 302, 'History of Europe', '2023-06-10', '978-1-84-719670-6');

##ReturnStatus Return_Id - Set as PRIMARY KEY Return_cust Return_book_name Return_date Isbn_book2 - Set as FOREIGN KEY and it should refer isbn in BOOKS.
 
create table ReturnStatus(Return_id int primary key,Return_cust varchar(20),Return_book_name varchar(20),Return_date date,Isbn_book2 varchar(20),foreign key (Isbn_book2) references Books(ISBN));
INSERT INTO ReturnStatus (Return_id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES 
(501, 'John Doe', 'Data Science Basics', '2023-06-20', '978-3-16-148410-0'),
(502, 'Jane Smith', 'History of Europe', '2023-06-25', '978-1-84-719670-6');

select * from Branch;
select * from Employee ;
select * from Books;
select * from Customer;
select * from IssueStatus;
select * from ReturnStatus;


#1. Retrieve the book title, category, and rental price of all available books.

select Book_title, Category, Rental_price from Books;
 

#2. List the employee names and their respective salaries in descending order of salary. 

select Emp_name, Salary from Employee order by salary desc;

#3. Retrieve the book titles and the corresponding customers who have issued those books.

select  Issued_book_name,Issued_cust from IssueStatus;

#4. Display the total count of books in each category.

select count(Book_title) as count_book,Category from Books group by Category;

#5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 

select  Emp_name, Position from Employee where Salary>50000;

#6. List the customer names who registered before 2022-01-01 and have not issued any books yet.

select Customer.Customer_name from Customer left join IssueStatus on Customer.Customer_id=IssueStatus.Issued_cust where Issue_id is null and Reg_date< '2022-01-01';

#7. Display the branch numbers and the total count of employees in each branch. 

select Branch.Branch_no ,count(Emp_name) as count_Employees from Branch left join Employee on Branch.Branch_no =Employee.Branch_no group by Branch_no;

#8. Display the names of customers who have issued books in the month of June 2023. 

select Customer.Customer_name from Customer join IssueStatus on IssueStatus.Issued_cust =Customer.Customer_id where Issue_date >='2023-06-01'and Issue_date <='2023-06-30';

#9. Retrieve book_title from book table containing history.

select Book_title from Books where Category='history';

#10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees

select Branch.Branch_no ,count(Employee.Emp_name) as count_employee from Branch left join Employee on Branch.Branch_no= Employee.Branch_no  group by Branch.Branch_no having count(Employee.Emp_name)>5;

#11. Retrieve the names of employees who manage branches and their respective branch addresses

select Employee.Emp_name, Branch.Branch_address from Employee left join Branch on Branch.Branch_no=Employee.Branch_no where Employee.Position='Manager';

#12. Display the names of customers who have issued books with a rental price higher than Rs. 25. 

select Customer.Customer_name from Customer join IssueStatus on Customer.Customer_id= IssueStatus.Issued_cust join Books on Books.ISBN=IssueStatus.Isbn_book where Rental_price>'25';
