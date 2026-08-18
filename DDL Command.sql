-- learning the DDL(Data defination language)commamd

-- Commands in DDL -->create, alter, truncate, drop 

-- create  --> used to create a table, databases, view, user, index, procedure, function, trigger, event, user, role, create server,create tablespace, create logfile group
-- here we not neccessary to know the all this things just learn with flow 

create database SQL1;   -- command used to create database;
create table table1( id int , name varchar(20),salary double(10,2),address varchar(20));

-- alter  --> used to add one or more column, modify the column name, datatype, size,and defination of the column 
		  -- -> rename column, rename table ,droping column, adding and droppping the key and the constraint 
		  -- change somthing that alearly exist /change existing structure 

-- add colum n and datatype
alter table table1 add email varchar(20);   -- add column 
alter table table1 add mono varchar(14), add bonus double(10,2); -- add multipe column a time 

-- change the colum name, dtatype, size, and adding and removing the constraint or other thing which called  column defination 
alter table table1 rename column mono to mobile_no;
alter table table1 modify mobile_no varchar(20);
alter table table1 add primary key(id);   -- adding a key 
alter table table1 modify name varchar(25)not null;  -- adding constraint 

alter table table1 drop  primary key;  -- removing the key 
alter table table1 modify name varchar(25) null ;  -- the way1
alter table table1 modify name varchar(25);    -- the seconde way2 -> can yoou drop at one time in above command 

alter table table1 alter bonus set default 1000;  -- add conttaint 
alter table table1 alter age drop default;	-- drop constraint 

-- delete  command 


-- drop command 



select *from table1;