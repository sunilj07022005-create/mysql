-- where and operator 
-- WHERE ,= ,<>, >, <, >=, <=, AND, OR, NOT, BETWEEN, IN, NOT IN, LIKE, IS NULL, IS NOT NULL.

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



-- operators
-- arithmatic operator => +,-,*,/,%
-- relational operator => =,<>/!=,<=,>=,>,<
-- logical operator => and or not 
-- other operator => in, between, like, is null,is not null 


-- Display all records where the marks are greater than 80.
select * from student_subject where marks>80;

-- Display all records where the marks are less than 80.
select * from student_subject where marks<80;

-- Display all records where the marks are exactly 90.
select * from student_subject where marks=90;

-- Display all records where the subject is not Java.
select * from student_subject where subject_name <> "java";

-- Display all records where the marks are greater than or equal to 85.
select * from student_subject where marks>=85;

-- Display all records where the marks are less than or equal to 75.
select * from student_subject where marks<=75;


-- Display all records where the student name is Karan and the marks are greater than 80.
select * from student_subject where marks>80 and student_name="karan";

-- Display all records where the student name is Arjun or Nilesh
select * from student_subject where student_name="arjun" or student_name="nilesh";

-- Display all records where the marks are between 75 and 90, inclusive.
select * from student_subject where marks between 75 and 90;

-- Display all records where the student name is Karan, Ritesh, or Sagar.
select * from student_subject where student_name in('karan','ritesh','sagar');

-- Display all records where the student name is not Karan, Arjun, or Nilesh.
select * from student_subject where student_name not in('karan','arjun','nilesh');

-- Display all records where the student name starts with the letter R.
select * from student_subject where student_name like 'r%';