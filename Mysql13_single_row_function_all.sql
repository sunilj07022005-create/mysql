-- 1. String functions  -> These work on text.
-- UPPER(),LOWER(),LENGTH(),CHAR_LENGTH(),CONCAT(),CONCAT_WS(),SUBSTRING(),LEFT(),RIGHT(),TRIM(),LTRIM(),RTRIM(),REPLACE(),REVERSE(),

-- 2. Numeric functions  -> These work on numbers.
-- ROUND(),CEIL(),FLOOR(),ABS(),POWER(),SQRT(),MOD().

-- 3. Date & time functions -> These work on dates/times.
-- NOW(),CURDATE(),CURTIME(),YEAR(),MONTH(),DAY(),HOUR(),MINUTE(),SECOND(),DATEDIFF(),DATE_ADD(),DATE_SUB()

-- variable 

set @fristname = 'Karan';
set @lastname ='potdar';
select upper(@fristname) as frist_name ,upper(@lastname) as last_name;
select lower(@fristname)as frist_name, lower(@lastname) as last_name;
select upper(@fristname)as frist_name, lower(@lastname) as last_name ;

use db1;
select * from practice;

-- Basic String Functions

select  upper(student_name) as student_name ,lower(subject) as subject_name  from practice;
select ucase(student_name) as student_name , lcase(subject) as subject_name  from practice;  

select  *  from practice;
select length(student_name) as name_length, char_length(subject) as subject_name from practice;

select concat(student_name,' ',subject) as concated_column from practice;
select concat_ws('  ',student_name,subject) as concated_column  from practice;
select concat_ws(' , ',student_name,subject)as concated_column from practice;

select substring('helloSunilfromNanded',6,9) as substring;   -- starting point and how many letter forward 
set @string = '   helloSunilfromNanded ';
select substring(@string,6,9) as substring;

select left(@string,5) as left_substring ;
select right(@string,5) as right_substring ; 

select trim(@string);
select ltrim(@string);
select rtrim(@string);

-- Substring / Extraction Functions

select substr(@string, 5,9) as substring;
select substring(@string,5,9) as substring;
SELECT MID(@string, 5, 9) AS substring;

-- Searching / Position Functions

select instr(@string,'n');  -- give th elocaation where the frist letter is present similar to you search
select locate('l','hello') as where_letter_present;
select locate('e',@string) as where_letter_present;
select position('l'in@string) as where_letter_present;
select find_in_set('a','s','i') as where_letter_present;

-- replace and modify
set @string2 = 'check what which letter';
select replace(@string2,'what','where') as replaced_string;
select insert('who',1,2,'Xx');
select reverse(@string) as reverse_form;
-- select upper(repeat('karan',5)) as repeaated;

--  syntax -> rpad(exixting content ,size, what we add)
select rpad('123',9,4 )as  left_padding;
select lpad('123',9,4) as right_padding;
select format(12345.74324,3) as result;
select format(12345.65,'5' ) as result;
select elt(4,'ar','dt','ct','yt') as result;
select field('a','b','c','a','y','k','r') as result;

-- chacteral or numaral
select ascii('A');
select char(66) as chare from dual;
select bin(281) as binary_form from dual;
select hex(281) as hex_form from dual;
select oct(281) as octal_form from dual;


SELECT CONCAT('Hello', SPACE(3), 'World') as result; -- for adding space
select quote('hello') from dual;  -- along woths quote
SELECT SOUNDEX('Smith') as sound;
select soundex('kurant') as sound;

select ord('a') as ascii_code  from dual;
select char_length('karan_arjun') as size from dual;
select bit_length('hello') as bit_lengthoutput from dual;  -- 5 letter -> 5 byte -> 1 byte = 8 bits  so, answer is 40

-- number fuction

select abs(-79) as result from dual; -- convert negative to positive 
select ceil(12.3);
select ceil(-12.3);
select floor(12.9);
select floor(-12.3);
select round(12.7);
select round(12.3678,2);
select truncate(12.3678,2);
select mod(10,3);
select power(2,3);
select sqrt(26);
select round(sqrt(26));
select sign(-50)as number;
select round(rand()*100); -- genrating the random floating number between 0.-- to 0.9999999++
select pi();
select exp(6);   -- 
select ln(10);
select log(10);
select log10(1000);
select log(2,8);
select log(2,12);
select cos(0);
select tan(pi()/4);
select asin(1);
select acos(0);
select atan(1);
select atan2(1,1);
select degrees(pi());
select radians(180);
select radians(360);
select greatest(1,6,8,59,485,987,345,098,5);	
select least(1,6,8,59,485,987,345,098,5);
select conv(1010,2,10);


-- date  and time function 
select curdate();
select current_date();
select curtime();
select current_time();
select now();
select current_timestamp();
select localtime();
select localtimestamp();
select utc_date();
select utc_time();
select utc_timestamp();
select year('2023-03-21') as year_;
select month('2023-03-21');
select monthname('2023-03-21');
select day('2023-03-21');
select dayname('2005-02-07');
select dayname('2005-09-23');
select dayname('2005-12-17');
select dayname('2005-09-17');

select dayofmonth('2005-02-07');
select dayofweek('2005-02-07');
select dayofyear('2005-02-07');
select dayofweek('2005-02-07');

select week('2005-02-07');
select weekofyear('2005-02-07');

select quarter('2005-02-07');
select hour('21:53:30');
select minute('21:53:30');
select second('21:53:30');
select sec_to_time('21:53:30');
select microsecond('21:53:30');

select extract(year from now());
select extract(month from now());
select extract(day from now());
select extract(hour from now());
select extract(minute from now());
select extract(second from now());
select extract(microsecond from now());
select extract(quarter from now());
select extract(week from now());
select extract(day_hour from now());
select extract(day_minute from now());
select extract(day_second from now());
select extract(hour_minute from now());
select extract(hour_second from now());
select extract(minute_second from now());

-- result to finding after the gap 
SELECT DATE_ADD('2026-08-30', INTERVAL 1 YEAR);
SELECT DATE_ADD('2026-08-30', INTERVAL 2 MONTH);
SELECT DATE_ADD('2026-08-30', INTERVAL 10 DAY);
SELECT DATE_ADD('2026-08-30', INTERVAL 5 HOUR);
SELECT DATE_ADD('2026-08-30', INTERVAL 30 MINUTE);
SELECT DATE_ADD('2026-08-30', INTERVAL 20 SECOND);

select adddate('2026-08-30',7);

SELECT DATE_SUB(NOW(), INTERVAL 1 YEAR);
SELECT DATE_SUB(NOW(), INTERVAL 2 MONTH);
SELECT DATE_SUB(NOW(), INTERVAL 7 DAY);
SELECT DATE_SUB(NOW(), INTERVAL 3 HOUR);

select subdate('2026-08-30',7);

select datediff('2026-08-30','2026-08-20');
select timediff('01:30:00','11:30:00');
select timediff('19:30:00','11:30:00');

-- select timestampdiff(unit,start_date, end_date);
select timestampdiff(year, '2000-01-01','2026-08-30');
select timestampdiff(month, '2000-01-01','2026-08-30');
select timestampdiff(day, '2000-01-01','2026-08-30');
select timestampdiff(hour, '2000-01-01','2026-08-30');
select timestampdiff(minute, '2000-01-01','2026-08-30');
select timestampdiff(second, '2000-01-01','2026-08-30');
select timestampdiff(week, '2000-01-01','2026-08-30');
select timestampdiff(quarter, '2000-01-01','2026-08-30');
-- %Y->2026, %y->26, %m->08, %c->8, %M->august, %b->aug, %e=>1date, %D->20th, %W->sunday, %a->sun, %H->21, %h->09, %i->53minute, %s->00, %p->am/pm, %f->microseconds
--  %j -> day of year(234), %U-> 35, %V->35

SELECT STR_TO_DATE('30-08-2026', '%d-%m-%Y');   -- converting the string to date
SELECT STR_TO_DATE('30/08/2026 21:30:00','%d/%m/%Y %H:%i:%s');
SELECT TIME('2026-08-30 21:30:45');
SELECT DATE('2026-08-30 21:30:45');
SELECT TIME_TO_SEC('01:30:00');
SELECT SEC_TO_TIME(5400);
SELECT UNIX_TIMESTAMP();
SELECT FROM_UNIXTIME(1788091200, '%Y-%m-%d');


SELECT MAKEDATE(2026, 242);
SELECT MAKETIME(21, 30, 45);

SELECT LAST_DAY('2026-08-15');


