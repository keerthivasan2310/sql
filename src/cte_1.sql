create database db1;
use db1;

CREATE TABLE Employees
(
    EmpID INT,
    EmpName VARCHAR(50),
    Dept VARCHAR(50),
    Salary INT
);

INSERT INTO Employees VALUES
(1,'Ravi','IT',30000),
(2,'Anita','HR',40000),
(3,'John','IT',35000),
(4,'Meena','IT',35000),
(5,'Suresh','HR',38000),
(6,'Kavya','Sales',25000),
(7,'Arun','Sales',27000);

select * from Employees;

-- without using cte

select empId,empname,e.dept, e.salary  from employees e join (
select dept, max(salary) as salary from employees 
group by dept) m 
on e.dept = m.dept and e.salary = m.salary;

-- with cte

with max_sal as(
select dept, max(salary) as salary from employees 
group by dept)

select empId, empname,e.dept, e.salary 
from employees e 
join max_sal m
on e.dept = m.dept and e.salary = m.salary
order by salary desc ;