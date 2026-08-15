--  create opration 
create database basic_opration;
use basic_opration;
create table basic_opration(id int, name varchar(20),salary double(6,2),address varchar(30),email varchar(25),from_time timestamp default current_timestamp(),mobile varchar(10));


-- update operaton 
-- 			alter table basic_opration modify id int auto_increment primary key ;
-- 			Alter table basic_opration modify salary double(10,2);
set sql_safe_updates = 0;    -- use when updation resticted by the mysql 
update basic_opration set mobile='988089090' where name= "arjun";
update basic_opration set mobile='703066028' where name= "ram";
update basic_opration set mobile='8786965412' where name= "karan";
update basic_opration set mobile='890967985' where name= "yash";
alter table basic_opration rename to basic_command;   -- using alter 
select * from basic_command;
rename table basic_command to curd_operation;


-- 	insert opration 
insert into curd_operation (name, salary,address,email,mobile)values('karan',24500.50,'hingne_colani','karan12@gmail.com',"8786965412");
insert into curd_operation (name, salary,address,email,mobile)
values('ram',79500.50,'digamber_colani','ram12@gmail.com',"7030660282"),
('arjun',76000.67,'aumdumber colni','arjun12@gmial.com',"9880890090"),
('yash',50700.69,'warjw-marwadi','yash12@gmail.com','8909679856');

-- read operation
 select * from curd_operation;
 select id, name, email, from_time, address from curd_operation;
 
 
 

