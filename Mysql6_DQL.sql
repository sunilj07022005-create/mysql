-- DQL  -> used to retrive data frrom the table 
--      -> lets see the how manu=y ways swe can use 

select * from students;    
select id , name, mark, grade  from  students;
select * from students where  id<=8;
select distinct mark from students;  -- can't used the distinct, multiple time in the same select statement 
select *from students where mark >75 and grade ='a++';
select * from students where mark>75 or grade = 'a++';
select * from students where grade != 'a++';
select * from students where mark  between 60 and 80;
select * from students where mark in(79,97,80,67,65);	
select * from students where grade like 'a%';   -- a%-> start, %a ->end. %a% contain 
select * from  student where grade like 'a__';  -- to check exactly how many words

select name , id from students order by name;
select * from students order by  name desc;

select count(grade), grade  from students group by grade;
select count(grade), grade from students group by grade having grade >'a++';

select * from students limit 5;
select id , name, mark from students limit 5 offset 2;

select id , name as 'frist_name ', mark from students limit 5 offset 2;
select id, name, mark, mark *6 as six_sub_mark from students;

select * from students;
select * from mock1;

select students.id, mock1.id ,students.mark , students.grade, students.address, mo_no,mock1.mark from students inner join mock1 on students.id = mock1.id;
select students.id, mock1.id ,students.mark , students.grade, students.address, mo_no,mock1.mark from students left join mock1 on students.id = mock1.id;
select students.id, mock1.id ,students.mark , students.grade, students.address, mo_no,mock1.mark from students right join mock1 on students.id = mock1.id;

-- for full join 
select students.id, mock1.id ,students.mark , students.grade, students.address, mo_no,mock1.mark from students left join mock1 on students.id = mock1.id 
union 
select students.id, mock1.id ,students.mark , students.grade, students.address, mo_no,mock1.mark from students right join mock1 on students.id = mock1.id;

select s.id, s.name, s.mark, m.id, m.name, m.mark, s.address from students as s cross join mock1.m;