select * from emp;

select * from customers;

with high_sal as(
select * from emp where salary > 30000)

select name,salary from high_sal;