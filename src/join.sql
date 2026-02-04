use master1;

SELECT name
FROM sys.tables;


insert into employees values(204,'mass',8000);

select * from employees;
select * from products;

select * from orders;

-- inner
select * from employees e
join 
products p
on e.empid = p.id;

-- left
select * from employees e
left join 
products p
on e.empid = p.id;

-- right
select * from employees e
right join 
products p
on e.empid = p.id;

-- full
select * from employees e
full outer join
products p
on e.empid = p.id;

-- cross

select * from employees e
cross join
products p


-- semi join

-- exists
select * from employees e
where exists( select * from
products p
where e.empid = p.id)

-- in
select * from employees
where empId in (select id from products)

