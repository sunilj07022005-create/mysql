-- learning the DML command 

-- commands in the DML -> insert, update, delete
create table table1 ( id int , fullname varchar(20),salary double(10,2),address varchar(20),email varchar(20), mo_no varchar(20), bonus double(10,2)); -- this is your table 

-- insert command 
insert into table1 values(1, 'karan',30790.67,'amdumber colani','karan12@gimail.com',7040795463,576.79);  -- here sequence matter

insert into table1 (full_name, id, address, salary, bonus, email, mo_no) values("arjun",2,"nath nagar",50600.50,6008.90,"arjun12@gmail.com",8080434321);  -- column value match with data type
 
insert into table1 values (3,"vishal",50049.78,'higne coluny ', 'vishal12@gmail.com',8998456797,567.98),(4,'pandu',40006.80,'karve brige','pandu12@gmail.com',9545037568,450.90); -- insert multipe value at a time 

insert into table1 (id , full_name, mo_no,bonus) values (5,'gangadhar',9065986970,100);   -- remaing column feild with null value if datatype is varchar other you ned to mension the default value or null  
-- bonus double DEFAULT 18

insert into table1(id, salary)select emp_no, dept_no from dept_manger2;   -- takeing from another table and insert into table1
-- insert ignore into table1 (id, full_name, mo_no) values (1, 'Rahul', 9876543210);   -- if primary key is define on id column and if 1 allready exist then after next insertion 1 is allowed because we using the ignore.

-- update 
set sql_safe_updates=0;
update table1 set salary="54060.70" where full_name = 'gangadhar';   -- update one row at a time 
update table1 set address="hingne colani", bonus =1000 where mo_no="9065986970";    -- update multiple row at a time 

update table1 set bonus=1800 where salary>=50000;   -- update using where 
update table1 set bonus=2000;						-- this effect on the all one column
update table1 set bonus=2100,salary=50000;			-- update multiple values 
update table1 set salary = (select avg_salary from (select avg(salary) as avg_salary from table1)as temp)+110 where id=3;

-- delete command 
delete from table1 where id = 5;     -- delete single row 
delete from table1 where id<=avg(id);    -- delete multiple row on the basis of the where condition 
delete from table1;					-- delete all column without structure delete all ;

select * from table1;
desc table1;
