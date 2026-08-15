create database basic_opration;
use basic_opration;
create table basic_opration(id int, name varchar(20),salary double(6,2),address varchar(30),email varchar(25),from_time timestamp default current_timestamp(),mobile varchar(10));

alter table basic_opration modify id int auto_increment primary key ;
Alter table basic_opration modify salary double(10,2);
insert into basic_opration (name, salary,address,email,mobile)values('karan',24500.50,'hingne_colani','karan12@gmail.com',"8786965412");
select * from basic_opration;
insert into basic_opration (name, salary,address,email,mobile)values('ram',79500.50,'digamber_colani','ram12@gmail.com',"7030660282"),
('arjun',76000.67,'aumdumber colni','arjun12@gmial.com',"988089009"),
('yash',50700.69,'warjw-marwadi','yash12@gmail.com','8909679856');


