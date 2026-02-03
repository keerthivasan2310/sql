select user_name();

SELECT SYSTEM_USER;

CREATE LOGIN AppLogin WITH PASSWORD='App@123';

SELECT name FROM sys.databases;


USE master1;

CREATE USER AppUser FOR LOGIN AppLogin;

SELECT SYSTEM_USER;   -- AppLogin
SELECT USER_NAME();  -- AppUser

CREATE TABLE Products(Id INT, Name VARCHAR(50));
INSERT INTO Products VALUES(1,'Pen');

EXECUTE AS USER = 'AppUser';

SELECT USER_NAME();   -- AppUser
SELECT SYSTEM_USER;  -- Still Admin login

SELECT * FROM Products;

REVERT;

GRANT SELECT ON Products TO AppUser;

EXECUTE AS USER='AppUser';
SELECT * FROM Products;

REVERT;

REVOKE SELECT ON Products FROM AppUser;

EXECUTE AS USER='AppUser';
SELECT * FROM Products;
