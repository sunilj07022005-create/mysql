use db1;
select * from student_subject;

-- 1	101	Karan	DBMS	80	A720
-- 1	102	Karan	Java	90	A721
-- 2	101	Arjun	DBMS	75	B720
-- 2	102	Arjun	Java	85	B721
-- 3	101	Nilesh	DBMS	88	C720
-- 4	101	Ritesh	DBMS	82	A820
-- 4	102	Ritesh	Java	78	A821
-- 4	103	Python	Python	91	A822
-- 5	101	Vishal	DBMS	69	B820
-- 5	102	Vishal	Java	84	B821
-- 5	103	Python	Python	76	B822
-- 6	101	Sagar	DBMS	95	C820
-- 6	102	Sagar	Java	89	C821
-- 6	103	Python	Python	93	C822

-- distinct used  for the all column or single column 
select distinct student_id  from student_subject;
select row_number() over() as row_no, student_name from student_subject;
select row_number() over() as row_no, student_name from (select distinct student_name from student_subject)  student_subject;

-- Find all unique student names.
select distinct student_name from student_subject;

-- Find all the unique subjects available in the table
select distinct subject_name as subject from student_subject;

-- Find all the unique marks obtained by students.
select distinct marks from student_subject;

-- limit

-- Display only the first 5 rows from the student_subject table.
select * from student_subject limit 5;

-- Display the 3 students who have the highest marks from the student_subject table.
select * from student_subject order by marks desc limit 3;

-- Skip the first 3 rows and display the next 5 rows.
select * from student_subject limit 5 offset 3;

-- Display the first 3 unique student names.
select distinct student_name from student_subject limit 3;

-- Display the unique student names, skip the first 2, and display the next 3 names
select distinct student_name from student_subject limit 3 offset 2;

-- Display all unique student names in alphabetical order.
select distinct student_name from student_subject order by student_name;

-- Display the first 3 student names alphabetically.
select distinct student_name from student_subject order by student_name limit 3;

-- Display the 4th, 5th, and 6th student names in alphabetical order.
select distinct student_name from student_subject order by student_name limit 3 offset 3;

-- Find the 3 rows with the highest marks from the table
select * from student_subject order by marks desc limit 3;

-- Display the 4th, 5th, and 6th rows when arranged by marks from highest to lowest.
select * from student_subject order by marks desc limit 3 offset 3;

-- Display each different combination of student name and subject name from the table.
select distinct student_name ,subject_name from student_subject;

-- Find the 5 highest marks, but each mark should appear only once.
select distinct marks from student_subject order by marks desc limit 5;

-- Display the different subject_name values in alphabetical order, but skip the first one and show the next two.
select distinct subject_name from student_subject order by subject_name limit 2 offset 1;

-- Find the 3rd highest different mark from the table.
select  distinct marks from student_subject order by marks desc limit 1 offset 2;

-- Find the top 3 different marks and display them from highest to lowest
select distinct marks from student_subject order by marks desc limit 3;

-- The student must have Marks greater than 80 OR Marks equal to 80.
select student_name from student_subject where marks>=80;

-- The student must not be studying Python
select student_name from student_subject where subject_name!="python";
select student_name from student_subject where subject_name<>"python";

-- Their Marks must be greater than the average marks of all records.
select marks from student_subject where ( select avg(marks) from student_subject);

-- Their Marks must also satisfy the arithmetic condition:
-- (Marks * 2) - 10 >= 150
select marks from student_subject where((marks*2)-10)>=150;

-- The Code must start with either A or C.
select ans_sheet_no from student_subject where ans_sheet_no like 'C%' or  ans_sheet_no like 'A%';


-- The student must belong to ID 1, 3, 4, or 6.
select * from student_subject where student_id in(1, 3, 4,6);

-- Sort the resulting records by:
-- highest Marks first
-- if marks are equal, sort by Name alphabetically
select * from student_subject order by  marks desc ,student_name asc;

-- Skip the first 2 records using OFFSET.
select * from student_subject limit 2 offset 2;

-- Then display only the next 3 records using LIMIT
select * from student_subject limit 2 offset 2;

-- combinig all 

select marks ,subject_name ,ans_sheet_no 
from student_subject 
where marks >=80 
	and subject_name <>'python' 
    and marks >(select avg(marks) from student_subject)
	and ((marks*2)-10)>=150 
    and (ans_sheet_no like 'a%' or ans_sheet_no like 'c%' )
    and  student_id in (1,4,3,6) 
	order by marks desc, student_name asc limit 3 offset 2;


