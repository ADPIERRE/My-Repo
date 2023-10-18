select * from countries
select * from departments 
select * from employees
select * from job_history
select * from locations
select * from jobs 
select * from regions

--1.) Display the minimum salary.
select min(salary) from employees

--2.) Display the highest salary.
select max(salary) from employees

--3.) Display the total salary of all employees.
select sum(salary) from employees

--4.) Display the average salary of all employees.
select avg(salary) from employees

--5.) Issue a query to count the number of rows in the employee table. The result should be just one row.
select count(*) from employees

--6.) Issue a query to count the number of employees that make commission. The result should be just one row.
select count(commission_pct) from employees

--7.) Issue a query to count the number of employees’ first name column. The result should be just one row.
select count(first_name) from employees

--8.) Display all employees that make less than Peter Hall.

select first_name, last_name, salary from employees where salary<
(select salary from employees where first_name = 'peter' and last_name = 'hall')


--9.) Display all the employees in the same department as Lisa Ozer.

select first_name, last_name, department_id from employees where department_id =
(select department_id from employees where first_name = 'lisa' and last_name = 'ozer')

--10.) Display all the employees in the same department as Martha Sullivan and that make more than TJ Olson.

select first_name, last_name, department_id, salary from employees where department_id=
(select department_id from employees where first_name = 'martha' and last_name = 'sullivan') and salary>
(select salary from employees where first_name ='tj' and last_name = 'olson')
