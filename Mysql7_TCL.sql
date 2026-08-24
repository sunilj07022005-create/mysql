use db1;

SELECT @@autocommit=1;   -- used to check the auto commit on or not 
SELECT @@in_transaction;

insert into bank values (104,'arjun',40000.70);
-- 101	Rahul	10000.00
-- 102	Priya	15000.00
-- 103	Amit	20000.70
-- 104	arjun	30000.70

start transaction;		-- is on the temporary mode   ->every time you want run program newly form the start transaction 
update bank set balance = 30002.40 where account_id=104;
rollback;

insert into bank values (105,'dnayu',50000.80);   
select * from bank where account_id=105;

commit;
rollback;   -- afetr commit you can't rollback 

-- save point use when we want some are commit or some are rollback
start transaction;
update bank set balance=50000.70 where account_id=105;
savepoint sp1;					-- create savepoint
update bank set balance=30000.70 where account_id=104;
rollback to savepoint sp1;		-- rollback up to savepoint
update bank set name ="karn" where balance =30001.40;
release savepoint sp1;  -- release savepoint mean deleting savepoint because you no longer need it
commit;

select * from bank;
