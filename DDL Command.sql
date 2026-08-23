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
alter table table1 add age int after name ;   -- add the column at specific location 
alter table table1 add  column t_id int first;  -- add the column at the first position 

-- change the colum name, dtatype, size, and adding and removing the constraint or other thing which called  column defination 
alter table table1 rename column mono to mobile_no;
alter table table1 modify mobile_no varchar(20);
alter table table1 add primary key(id);   -- adding a key 
alter table table1 modify name varchar(25)not null;  -- adding constraint 

alter table table1 drop  primary key;  -- removing the key 
alter table table1 modify name varchar(25) null ;  -- the way1
alter table table1 modify name varchar(25);    -- the seconde way2 -> can yoou drop at one time in above command 

alter table table1 alter bonus set default 1000;  -- add conttaint 
alter table table1 alter bonus drop default;	-- drop constraint 

-- rename command 

-- rename table name 
rename table table1 to table2;   -- change table name 
alter table table2 rename  table1;   -- by this way also 

-- renameing or changing the column name 

alter table table1 rename column mobile_no to mo_no;
alter table table1 change  name full_name varchar(25);
show tables;

-- drop command 
alter table table1 drop column mo_no;  -- drop specific column 

drop table table1l;    -- drop whole table 
drop table if exists students ;

drop database SQL1;  -- it delete whole database
-- drop database if exists collage ;

-- later use in upcommining the files 
alter table table_name drop key idx_name;
alter table table_name drop index idx_name;

alter table table_name drop primary key;   -- already see in alter command
alter table table_name drop foreign key key_name;

drop view view_name;
drop trigger trigger_name;
drop procedure procedure_name;
drop function function_name;
drop event delete_old_data;

use SQL1;
desc table1;
select *from table1;