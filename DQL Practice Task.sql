create table employees(
emp_id int primary key,
emp_name varchar(200),
dept varchar(50),
city varchar(50),
salary int,
hire_date date,
manager_id int);

select * from employees;

insert into employees values
(1,"Aarav Shah","IT","Pune",72000,"2021-03-15",null),
(2,"Sneha Rao","HR","Mumbai",48000,"2021-03-15",1),
(3,"Karan Mehta","Sales","Delhi",55000,"2021-03-15",1),
(4,"Priya Nair","IT","Pune",64000,"2021-03-15",1),
(5,"Ramesh Iyer","Finance","Mumbai",59000,"2021-03-15",null),
(6,"Anita Desai","Sales","Pune",41000,"2021-03-15",3);


-- Que 1
select emp_name,salary from employees where dept="IT";

-- Que 2
select * from employees where salary>50000 and city="Pune";

-- Que 3
select * from employees where hire_date between"2022-01-01" and "2023-12-31";

-- Que 4
select * from employees where city in("Pune","Mumbai","Delhi") and manager_id is null;

-- Que 5
select * from employees where emp_name like "A%";

-- Que 6
select * from employees where emp_name like "%sh";

-- Que 7
select * from employees where emp_name like "%an%";

-- Que 8
select * from employees where emp_name like "_a___";

-- Que 9
select dept, count(*) as No_of_Emp
from employees 
group by dept;

-- Que 10 
select City, avg(salary) as Avg_Salary
from employees 
group by city;

-- Que 11
select dept, sum(salary) as Sum_Dept,max(salary) as Max_salary
from employees 
group by dept;

-- Que 12
select dept,city, count(*) as No_of_Emp
from employees 
where salary>30000
group by dept,city;

-- Que 13
select dept, count(*)
from employees 
group by dept
having count(*)>3;

-- Que 14
select city, avg(salary) as Avg_salary
from employees 
group by city
having avg(salary)>60000;

-- Que 15
select dept, sum(salary) as Total_salary
from employees 
group by dept
having sum(salary) between 100000 and 50000;

-- Que 16
select dept, avg(salary) as avg_salary 
from employees 
where dept <> ("HR")
group by dept
having avg(salary)>45000
order by avg(salary) desc;

-- Que 17
select * from employees order by salary desc
limit 5;

-- Que 18
select * from employees order by hire_date desc
limit 3;

-- Que 19
select * from employees order by salary desc
limit 5 offset 5;

-- Que 20
select * from employees order by salary desc
limit 1 offset 2;

-- Que 21
select city, count(*) as City_count
from employees 
where emp_name like "S%"
group by city;

-- Que 22
select * from employees where city="Pune" order by emp_name ;

-- Que 23
select dept, count(*) as emp_Count,avg(salary) as avg_salary
from employees 
where hire_date>"2021-01-01" 
group by dept
having count(*)>2
order by avg(salary) desc
limit 2 offset 1;

-- Que 24
select city, count(*) as City_count
from employees 
where emp_name like "%ar%"
group by city
limit 3;

