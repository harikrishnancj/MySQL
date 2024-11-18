create database Sales;
use Sales;
create table Orders(orderid int primary key,customername varchar(30) not null,productcategory varchar(10) not null,ordereditem varchar(20),contactnum varchar(12));
alter table Orders add column orderquantity int;
rename table Orders to sales_orders;
alter table sales_orders modify productcategory varchar(20);
INSERT INTO sales_orders
VALUES
(1, 'Alice', 'Electronics', 'Laptop', '1234560', 1),
(2, 'Bob', 'Groceries', 'Rice', '9876543', 5),
(3, 'Charlie', 'Clothing', 'T-Shirt', '1234509', 2),
(4, 'Diana', 'Electronics', 'Mobile Phone', '6543210', 1),
(5, 'Eve', 'Furniture', 'Chair', '3216540', 4),
(6, 'Frank', 'Groceries', 'Milk', '789012', 3),
(7, 'Grace', 'Clothing', 'Jeans', '6789012', 1),
(8, 'Hank', 'Furniture', 'Table', '8901234', 2),
(9, 'Ivy', 'Electronics', 'Headphones', '456789', 1),
(10, 'Jack', 'Clothing', 'Jacket', '5678901', 1);
select customername,ordereditem from sales_orders;
UPDATE sales_orders SET orderquantity = 5 WHERE OrderId = 10;
select*from sales_orders;
drop table sales_orders;
