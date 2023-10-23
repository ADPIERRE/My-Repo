select * from countries
select * from departments 
select * from employees select * from departments 
select * from job_history
select * from locations select * from departments 
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

NICELY DONE!
select first_name, last_name, department_id, salary from employees where department_id=
(select department_id from employees where first_name = 'martha' and last_name = 'sullivan') and salary>
(select salary from employees where first_name ='tj' and last_name = 'olson')

11.) Display all the departments that exist in the departments table that are not in the employees’ table. Do not use a where clause.

select department_id from departments
except
select distinct department_id from employees

12.) Display all the departments that exist in department tables that are also in the employees’ table. Do not use a where clause.

select department_id from departments
intersect
select distinct department_id from employees


13.) Display all the departments name, street address, postal code, city, and state of each department. Use the departments and locations table for this query.

select d.department_id, d.department_name, l.street_address, l.postal_code, l.city, l.state_province from departments d 
join locations l on d.location_id = l.location_id

14.) Display the first name and salary of all the employees in the accounting departments. 

select e.first_name, e.salary, d.department_name from employees e join departments d on e.department_id = d.department_id where d.department_name = 'accounting'

15.) Display all the last name of all the employees whose department location id are 1700 and 1800.

16.) Display the phone number of all the employees in the Marketing department.

select e.phone_number, d.department_name from employees e join departments d on e.department_id = d.department_id where d.department_name = 'marketing'

17.) Display all the employees in the Shipping and Marketing departments who make more than 3100.
