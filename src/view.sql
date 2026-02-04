select * from emp;

create view emp_view
as 
select name, salary from emp;

select* from emp_view where salary >30000;