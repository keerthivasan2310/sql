use master1
truncate table t1;

select * from t1;

insert into t1 values(22,'keerthi',800000)

begin transaction
 
insert into t1 values(1,'rahul dravid',90000);

save transaction d1;

insert into t1 values(2,'kl rahul',9000);

rollback transaction d1;

rollback;

commit;