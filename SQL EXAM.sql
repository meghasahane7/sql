#SET-1B01
#que1
create database exam2;
use exam2;
create table students(student_id int primary key,s_name varchar(255) not null,age int unique);

#que2
insert into students (student_id,s_name,age) values (student_id=1001,s_name='Meera', age=24),
(student_id=5002, s_name='riya', age=34),(student_id=6002,s_name='poorva', age=32);

#que3
use hr3;
select first_name from employees where first_name like "%d";

#que4
use hr3;
select first_name, last_name, salary from employees 
order by salary limit 3;

#que5
use hr3;
select concat(first_name," ", last_name) as full_name from employees 
where salary>(select avg(salary) from employees);

#que6
use hr3;
select e.department_id, count(e.employee_id) as no_of_emp, d.location_id from employees e 
inner join departments d on e.department_id=d.department_id
where timestampdiff(year,e.hire_date,curdate())>5
group by e.department_id;

#que7
use hr3;
select j.job_title, count(j.job_title), count(e.employee_id), employee_id from employees e inner join jobs j
on e.job_id=j.job_id
group by j.job_title
order by e.hire_date;


#MongoDb
#que1 db.restaurant.find({borough:"Manhattan"})
#que2 db.restaurant.find().sort({name:1})