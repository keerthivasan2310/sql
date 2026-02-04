use master1;

create table at_in ( id int primary key identity(1,1),name varchar(20));

insert into at_in values('ram');
insert into at_in values('rahul');


insert into at_in values(3,'mass'); -- its not executing 'at_in' can only be specified when a column list is used and IDENTITY_INSERT is ON.

select * from at_in;

-- sequence

CREATE TABLE CUSTOMERS (
   ID INT,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
);

INSERT INTO CUSTOMERS VALUES 
(NULL, 'Ramesh', 32, 'Ahmedabad', 2000.00),
(NULL, 'Khilan', 25, 'Delhi', 1500.00),
(NULL, 'Kaushik', 23, 'Kota', 2000.00),
(NULL, 'Chaitali', 25, 'Mumbai', 6500.00),
(NULL, 'Hardik', 27, 'Bhopal', 8500.00),
(NULL, 'Komal', 22, 'Hyderabad', 4500.00),
(NULL, 'Muffy', 24, 'Indore', 10000.00 );

create sequence my_seq as int
start with 1
increment by 1
minvalue 1
maxvalue 8
cycle;

UPDATE CUSTOMERS SET ID = NEXT VALUE FOR my_Seq;

select * from CUSTOMERS;