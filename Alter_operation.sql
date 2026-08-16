use db1;
select * from students;
/* id    name   mark   grade    address    mo_no
1	karan	34		nathnagar	8020234758
2	arjun	65	c	nath nagar2	6978934785
3	nilesh	89	b++	vistarithnath	9507989877
4	ritesh	98	a++	vistarithnath	9507089877
5	vishal	57	c	vistarithnath	9507089877
6	pandu	78	b++	nathnagar	7880347857
7	gaju	67	c	nathnagar1	7880347857
8	sagar	99	a++	vistarithnath1	9507089877
9	hrshan	79	A++	nathnager	7987085896
10	hrshan	79	A++	nathnager	7987085896
11	hrshan	79	A++	nathnager	7987085896
12	hrshan	79	A++	nathnager	7987085896
13	bapni	97	A++	nathnager2	9287085849
14	sajana	97	A++	nathnager1	9787085880
*/
-- used to get all informtion about the table 
desc students;
describe students;

-- used as adding column 
alter table students add column standerd varchar(15);


-- used for changing or modifying datatype and column name 
alter table students modify column standerd int;

set sql_safe_updates=0;
update students set standerd='12';

-- used to add and drop the constraints
alter table students add column result varchar(15);  -- adding constraint 
ALTER TABLE students MODIFY COLUMN result VARCHAR(16) NOT NULL;-- adding constraint and the modify size
alter table students modify column result varchar(16) null;    -- removing the not constraint from not null

-- drop column 
alter table students drop column result;    -- drop the column 	
/* remaining command : 
Rename table
Add/modify indexes
Primary key / foreign key changes
ALTER DATABASE
ALTER VIEW
ALTER PROCEDURE
Common MySQL, PostgreSQL, SQL Server, and Oracle variations*/

select * from students;