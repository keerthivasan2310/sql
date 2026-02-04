use master1;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    EmpID INT,
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);

    CREATE TABLE Marks (
    Score INT CHECK (Score >= 0 AND Score <= 100)
);

insert into marks values(129);

CREATE TABLE Accounts (id int,
    Status VARCHAR(10) DEFAULT 'Active'
);
insert into Accounts values(1,'Deactive')
insert into Accounts (id) values(2);

select * from Accounts;

