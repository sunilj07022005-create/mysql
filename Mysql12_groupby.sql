use db1;
create table practice(student_name  varchar(20),subject varchar(20),marks bigint);
insert into practice(student_name,subject,marks) values('Amit','Math',80),
('Amit','Science',70),('Amit','English',90),('Rahul','Math',60),
('Rahul','Science',80),('Rahul'	,'English',	70),('Priya','Math',90),
('Priya','Science',	90),('Priya','English',	80),('John'	,'Math',	60),
('John','Science',	70),('John','English',	60);

-- their are five type of aggregation fuction are present in the mysql to work with group by there are follow 
--  min, max, sum, count, avg.
--  In the following querys we some extra keywords that are the as keyword or alises, group_concat function to concat something
--  with the result of the group by somthing nothing but mainly column values that are not present mainly in group by

select * from practice;

-- Find the average marks of each student.
select student_name ,avg(marks) from practice group by student_name;

-- Find the maximum marks obtained in each subject.
select subject, max(marks)as max_marks from practice group by subject;


-- Find how many students got each marks value.
select  count(student_name ), marks from practice group by marks;

-- For each student, display all the subjects they have studied using GROUP_CONCAT().
select student_name, group_concat(subject) from practice group by student_name;

-- For each subject, display the names of students who studied that subject.
select  subject, count(subject) as total_study_subject from practice group by subject;

-- Find students whose average marks are greater than 75.
select student_name, avg(marks)as avg_marks from practice group by student_name having avg(marks) >75 ;

select student_name, avg(marks)as avg_marks from practice  group by student_name;

-- For each student, show their total marks and number of subjects.
select student_name, sum(marks) as total_marks, count(subject)as total_subject from practice group by student_name ;

-- Find the average marks for each student in each subject.
select student_name, avg(marks)as avg_marks from practice  group by student_name, subject;

-- For each marks value, show:
-- the marks
-- number of students
-- names of students who got those marks
select  group_concat(student_name)as student_name ,count(marks)as no_sub ,marks from practice group by marks;

-- Look at this query:
-- SELECT student_name, subject, SUM(marks)
-- FROM student_subject
-- GROUP BY student_name;
-- Is this query correct or incorrect?

-- incorrect -> following are the correct version 
select student_name, sum(marks) from practice group by student_name;
SELECT student_name, subject, SUM(marks) AS total_marks FROM student_subject GROUP BY student_name, subject;

-- Find the average marks of each student and display only students whose average is greater than 75.
select student_name ,avg(marks)as avg_marks from practice  group by student_name having avg(marks)>75;

-- Find the total marks obtained by each student across all subjects and display the result from highest to lowest.
select student_name, sum(marks)as total_marks from practice  group by student_name order by sum(marks) desc ;

-- Find the highest marks obtained by each student and show the student name along with the highest marks.
select student_name,max(marks)as heighest_mark from practice group by student_name;

-- Find the lowest marks obtained in each subject and display the subject and marks.
select subject , min(marks)as min_marks from practice group by subject;

-- Find the average marks for each subject and display only subjects whose average is greater than 70.
select subject ,avg(marks) from practice group by subject having avg(marks)>70;

-- Find the number of subjects taken by each student and display students who have taken all 3 subjects.
select count(subject) as no_of_sub, student_name from practice group by student_name having count(subject)>=3;

-- Find the total number of students who scored each marks value, along with the marks value.
select count(*) as number_of_std from practice group by marks ;

-- For every marks value, display:

-- marks
-- number of students
-- names of students who obtained that marks
-- Find the difference between the highest and lowest marks for each student.
select marks, count(*) as number_of_student, group_concat(student_name)  as student_name from practice group by marks;
select marks, count(*) as number_of_student, group_concat(student_name)  as student_name, group_concat(subject) as subject_name from practice group by marks;

-- Find the difference between the highest and lowest marks for each subject.
select subject,max(marks) as highest_marks, min(marks) as lowest_marks, max(marks)-min(marks) as difference from practice group by subject;

-- HAVING — Slightly Harder
-- Find students whose total marks are greater than 220.
select student_name, sum(marks) from practice group by student_name having sum(marks)>220;

-- Find students whose average marks are greater than the overall average marks of the entire table.
select student_name , avg(marks) as avg_marks from practice group by student_name having avg(marks)>(select avg(marks) from practice) ;

-- Find subjects where the highest marks are greater than 85.

-- Find subjects where at least two students scored more than 70.

-- Find students who have scored more than 75 in at least two subjects.

-- Find students whose minimum marks are greater than 60.

-- Find students whose maximum marks are exactly 90.

-- Find subjects where the average marks are higher than 75 and the lowest marks are greater than 60.

-- Subqueries
-- Find the student who has the highest total marks.

-- Find the student who has the highest average marks.

-- Find the student who has the lowest average marks.

-- Find all students whose average marks are greater than Amit's average marks.

-- Find all students who scored higher than the average marks of all students.

-- Find the students who scored the highest marks in Math.

-- Find the students who scored higher than the average marks in Science.

-- Advanced — Multi-level Aggregation
-- Find the subject in which the overall average marks are highest.

-- Find the student who has the largest difference between their highest and lowest marks.

-- Find the student whose total marks are closest to the overall average total marks of all students.

-- Find the second-highest average-mark student without using LIMIT.

-- Find the student(s) who have scored above the average marks in every subject they took.
