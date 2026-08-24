use db1;
select * from bank;

SELECT @@autocommit=1;   -- used to check the auto commit on or not 
SELECT @@in_transaction;

insert into bank values (104,'arjun',40000.70);
-- 101	Rahul	10000.00
-- 102	Priya	15000.00
-- 103	Amit	20000.70
-- 104	arjun	30000.70

start transaction;		-- is on the temporary mode   evevery time you want run program newly form the start transaction 
update bank set balance = 30002.40 where account_id=104;
rollback;

select * from bank where account_id=104;

SELECT VERSION();
SHOW CREATE TABLE bank;