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
					
-- student_id must be IN (1, 3, 4, 5, 6).
select * from student_subject where student_id in(1,3,4,6);
-- marks must be BETWEEN 75 AND 95.
select * from student_subject where marks between 75 and 95;

-- subject_name must be either DBMS or Java, using IN.
select * from student_subject where subject_name in('dbms','java');

-- ans_sheet_no must start with either A or C, using LIKE.
select * from student_subject where ans_sheet_no like 'A%' or ans_sheet_no like 'c%';

-- ans_sheet_no must NOT be NULL, using IS NOT NULL.
select * from student_subject where ans_sheet_no is not null;

-- marks must satisfy the arithmetic condition:
-- (marks + 10) * 2 >= 180
select * from student_subject where ((marks * 2)+10)>=180; 

-- Exclude students whose name is Python.
select * from student_subject where student_name='python';

-- The student must have at least 2 qualifying subjects after applying the above conditions.
select student_id, student_name from student_subject where marks>=80 group by student_id,student_name having count(distinct subject_id)>=2;  -- 

-- Use GROUP BY to group the results by student.
select student_name, marks from student_subject where marks >60 group by student_name, marks ;

-- Calculate each students average marks using AVG(marks).
select  student_name, avg(marks) as avg_marks from  student_subject group by student_name;

-- Only include students whose average marks are greater than 80.
select student_name, avg(marks) as avg_marks from student_subject group by student_name having avg(marks) > 80;

-- Display:
-- student_name
-- number of qualifying subjects
-- average marks
-- Use DISTINCT somewhere meaningfully in your solution.

select student_name,count(distinct subject_name) as qualifing_subject , avg(marks)as avg_marks from student_subject where marks >=40 group by student_name;

-- Sort by:
-- average marks highest first
-- then student name alphabetically
-- Skip the first 1 student using OFFSET.
select student_name, avg(marks) as avg_marks, subject_name from student_subject group by student_name, subject_name order by student_name asc limit 100 offset 1;

-- Return the next 3 students using LIMIT.
select student_name, subject_name, avg(marks)as avr_mark from student_subject group by student_name ,subject_name order by student_name asc limit 3 offset 1;

-- Student ID must be IN (1, 2, 3, 4, 5, 6).
select student_name, subject_name , avg(marks)as avr_marks  from student_subject where student_id In(1,2,3,4,5,6) group by student_name , subject_name order by student_name asc;

-- Consider only records where marks are BETWEEN 70 and 95.
select student_name ,max(marks) as max_marks from student_subject where marks between 75 and 90 group by student_name;
-- select student_name,subject_name ,max(marks) as max_marks from student_subject group by student_name,subject_name having student_name like 'A%';

-- Subject must be DBMS, Java, or Python.
select subject_name, student_name , avg(marks) from student_subject  where subject_name in ('dbms','python','java') group by subject_name;
-- The answer-sheet number must start with A, B, or C.
-- The answer-sheet number must be NOT NULL.
-- Exclude the student named Python.
-- Apply this arithmetic condition:
-- (marks + 5) * 2 >= 160

-- A student qualifies only if they have at least 2 different subjects.
-- Use GROUP BY student_id, student_name.
-- Calculate:
-- total number of records
-- number of distinct subjects
-- average marks
-- maximum marks
-- minimum marks
-- Average marks must be greater than 78.
-- Maximum marks must be greater than 85 OR minimum marks must be greater than 75.
-- Use HAVING for the aggregate conditions.
-- Use DISTINCT meaningfully.
-- Use both IS NULL and IS NOT NULL somewhere in the query.
-- Sort:
-- average marks descending
-- maximum marks descending
-- student name ascending
-- Skip the first 2 students.
-- Return only the next 3 students.