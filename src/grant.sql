create database CompanyDB;
use CompanyDB;
CREATE LOGIN DemoUser
WITH PASSWORD = 'Demo@123';

CREATE USER DemoUser FOR LOGIN DemoUser;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT
);

INSERT INTO Employees VALUES (1,'Ravi',30000);
INSERT INTO Employees VALUES (2,'Anu',40000);

GRANT SELECT ON Employees TO DemoUser;

EXEC sp_helprotect 'Employees';

select * from Employees;

insert into Employees values(3,'Aathi',50000)

REVOKE SELECT ON Employees FROM DemoUser;

DENY DELETE ON Employees TO DemoUser;


drop database companydb;



EXECUTE AS USER = 'DemoUser';
SELECT SYSTEM_USER;

EXECUTE AS USER = SYSTEM_USER;



SELECT name
FROM sys.server_principals
WHERE type_desc = 'SQL_LOGIN';

use master1
SELECT name
FROM sys.database_principals
WHERE type_desc = 'SQL_USER';


drop user DemoUser;