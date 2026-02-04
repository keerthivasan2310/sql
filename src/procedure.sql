use master1;


CREATE TABLE Emp (
ID INT PRIMARY KEY,
Name VARCHAR(50),
Dept VARCHAR(20),
Salary INT
);

INSERT INTO Emp VALUES
(1,'Ravi','IT',30000),
(2,'Anita','HR',40000),
(3,'John','IT',35000);


create procedure getAllemp
as
begin
select * from emp;
end;

exec getAllemp;

-- execution using the input

create procedure getemp
@id int
as
begin
select * from emp where id = @id;
end;

drop procedure getemp;

exec getemp 2;


-- output parameter 
-- its like return

CREATE PROCEDURE EmployeeCount
@Total INT OUTPUT
AS
BEGIN
    SELECT @Total = COUNT(*) FROM Emp;
END;

DECLARE @Result INT;

EXEC EmployeeCount @Result OUTPUT;

SELECT @Result AS TotalEmployees;

-- if condition

drop procedure checkemp;

create procedure checkemp
@id int
as 
begin
if exists(select 1 from emp where id = @id)
print 'employee exists'
else
print 'employee not exists'
end;

exec checkemp 'ravi'

alter procedure checkemp
@name varchar(20)
as
begin
if exists(select 1 from emp where name = @name)
print 'emp exists'
else
print 'emp not exists'
end;