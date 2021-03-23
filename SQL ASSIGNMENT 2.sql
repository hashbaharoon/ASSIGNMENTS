use assignment;

-- 1

select * from employee where deptno=10 and salary > 3000 ;

-- 2.a

select COUNT(*) from students
where marks >= 50 and marks <=80  ;

-- 2.b

select count(*) from students
where marks >=80 and marks <=100;

-- 3

select distinct city from station
where id %2=0; 

-- 4

select count(city) -count(distinct city) as  Difference from station;

-- 5.a

SELECT distinct CITY FROM STATION WHERE LEFT(CITY,1) IN  ('a', 'e', 'i', 'o', 'u');

-- 5.b

SELECT distinct city FROM STATION
where LEFT(CITY,1) IN  ('a', 'e', 'i', 'o', 'u') and RIGHT(CITY,1) IN  ('a', 'e', 'i', 'o', 'u');

-- 5.c

SELECT distinct city FROM STATION
where  LEFT(CITY,1)   NOT IN  ('a', 'e', 'i', 'o', 'u');

-- 5.d

SELECT distinct city FROM STATION
where LEFT(CITY,1) NOT IN  ('a', 'e', 'i', 'o', 'u') and RIGHT(CITY,1) NOT IN  ('a', 'e', 'i', 'o', 'u');


-- 7

select emp_no ,first_name , last_name, salary , hire_date  from emp where salary > 2000 
AND TIMESTAMPDIFF(month, hire_date , now()) <=10
order by emp_no;

-- 8 .12.

select sum(salary) , deptno from emp 
group by deptno ;

-- 9

select count(name) as  Numberofcities from city where population > 100000;

-- 10

select sum(population) , district from city where  district = "California";

-- 11

select countrycode , avg(population) from city
group by countrycode;






 
 
 
