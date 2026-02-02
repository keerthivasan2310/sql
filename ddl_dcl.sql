use master1
;

ALTER table t1 drop column age;

truncate table t1;

select * from t1;

insert into t1 values(2, 'sachin', 100000);

UPDATE T1 SET NAME ='DHONI';

delete from t1 where name = 'dhoni';