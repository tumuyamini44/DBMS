create database company;
use company;

create table Department(
 dept_id int primary key,
 dept_name varchar(50)not null,
 location varchar(50)
 );
 create table Employee(
  emp_id int primary key,
  emp_name varchar(50)not null,
  age int,salary decimal(10,3),
  dept_id int,
  foreign key(dept_id)
   references Department(dept_id)
   );
   -- Insert data into Department
INSERT INTO Department (dept_id, dept_name, location)
VALUES
(1, 'HR', 'Hyderabad'),
(2, 'IT', 'Bangalore'),
(3, 'Finance', 'Chennai'),
(4, 'Marketing', 'Mumbai'),
(5, 'Sales', 'Delhi');

-- Insert data into Employee
INSERT INTO Employee (emp_id, emp_name, age, salary, dept_id)
VALUES
(101, 'Rahul', 25, 35000.00, 1),
(102, 'Priya', 28, 45000.00, 2),
(103, 'Arjun', 30, 55000.00, 3),
(104, 'Sneha', 26, 40000.00, 4),
(105, 'Kiran', 32, 60000.00, 5),
(106, 'Anjali', 24, 32000.00, 2),
(107, 'Ravi', 29, 48000.00, 1),
(108, 'Divya', 27, 42000.00, 4),
(109, 'Vikram', 35, 70000.00, 3),
(110, 'Pooja', 31, 58000.00, 5);
select emp_id,emp_name,dept_id
from employee;
create view de as
select dept_name,location
from department where location='chennai';
CREATE VIEW Employee_View AS
SELECT emp_id, emp_name, salary
FROM Employee;
 
SELECT * FROM Employee_View;