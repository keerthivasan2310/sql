use master1;
select * from emp;

SELECT *
FROM Emp E
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Emp
    WHERE Dept = E.Dept
);

select * from emp  
where dept in (select dept from emp where dept = 'it')