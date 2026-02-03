SELECT USER_NAME();

SELECT COUNT(*) AS Total_Logins
FROM sys.server_principals
WHERE type_desc = 'SQL_LOGIN';
 
select name
FROM sys.server_principals
WHERE type_desc = 'SQL_LOGIN';
 

EXEC sp_helpuser;

DROP USER DemoUser;

DROP LOGIN NewUser;



revert;