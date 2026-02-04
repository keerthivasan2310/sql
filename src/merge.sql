use master1;

select* from Employees;
alter table employees drop column salary;

select* from products;

MERGE Employees AS T
USING products as s
ON T.empid = s.ID

WHEN MATCHED THEN
UPDATE SET T.Name = S.Name

WHEN NOT MATCHED BY TARGET THEN
INSERT (empID,Name)
VALUES (S.ID, S.Name)

WHEN NOT MATCHED BY SOURCE THEN
DELETE;
