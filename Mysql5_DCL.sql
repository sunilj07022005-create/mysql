use db1;
select * from  students;

-- 1	karan	34		nathnagar	8020234758	12
-- 2	arjun	65	c	nath nagar2	6978934785	12
-- 3	nilesh	89	b++	vistarithnath	9507989877	12
-- 4	ritesh	98	a++	vistarithnath	9507089877	12
-- 5	vishal	57	c	vistarithnath	9507089877	12
-- 6	pandu	78	b++	nathnagar	7880347857	12
-- 7	gaju	67	c	nathnagar1	7880347857	12
-- 8	sagar	99	a++	vistarithnath1	9507089877	12
-- 9	hrshan	79	A++	nathnager	7987085896	12
-- 10	hrshan	79	A++	nathnager	7987085896	12
-- 11	hrshan	79	A++	nathnager	7987085896	12
-- 12	hrshan	79	A++	nathnager	7987085896	12
-- 13	bapni	97	A++	nathnager2	9287085849	12
-- 14	sajana	97	A++	nathnager1	9787085880	12				

create user 'sunil'@'localhost' identified by 'sunil12';   -- create user 

grant select, update on db1.students to 'sunil'@'sunil';    -- gives permission 
show grants for 'sunil'@'localhost';						-- check the permissions

select user, host from mysql.user where User = 'sunil';    -- checking the permissionss

revoke update on db1.students from 'sunil'@'localhost';     -- revoke permmision 
-- revoke all privileges on  db1.students from 'sunil'@'localhost';

show grants for 'sunil'@'localhost';     
REVOKE DELETE ON college.* FROM 'sunil'@'localhost';    -- granting the delete permission 

revoke all privileges on db1.students from 'sunil'@'localhost';

SELECT * FROM students;

CREATE USER IF NOT EXISTS 'sunil'@'localhost' IDENTIFIED BY 'Student@123';

GRANT SELECT ON college.* TO 'sunil'@'localhost';


SHOW GRANTS FOR 'sunil'@'localhost';

GRANT INSERT ON college.* TO 'student_user'@'localhost';

GRANT UPDATE ON college.* TO 'sunil'@'localhost';

GRANT DELETE ON college.* TO 'sunil'@'localhost';

SHOW GRANTS FOR 'sunil'@'localhost';

REVOKE DELETE ON college.* FROM 'sunil'@'localhost';

SHOW GRANTS FOR 'sunil'@'localhost';

REVOKE INSERT ON college.* FROM 'sunil'@'localhost';

SHOW GRANTS FOR 'sunil'@'localhost';

REVOKE ALL PRIVILEGES ON college.* FROM 'sunil'@'localhost';

SHOW GRANTS FOR 'sunil'@'localhost';

use db1;
show tables;