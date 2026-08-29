use db1;
create table practice(student_name  varchar(20),subject varchar(20),marks bigint);
insert into practice(student_name,subject,marks) values('Amit','Math',80),
('Amit','Science',70),('Amit','English',90),('Rahul','Math',60),
('Rahul','Science',80),('Rahul'	,'English',	70),('Priya','Math',90),
('Priya','Science',	90),('Priya','English',	80),('John'	,'Math',	60),
('John','Science',	70),('John','English',	60);

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

-- incorrect
select student_name, sum(marks) from practice group by student_name;
SELECT student_name, subject, SUM(marks) AS total_marks FROM student_subject GROUP BY student_name, subject;
