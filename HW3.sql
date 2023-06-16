/* 1. Output all employees whose salaries are in the database, along with salaries */
select id_employee, employee_name, id_salary, monthly_salary from employees
inner join employee_salary on employees.id = id_employee
inner join salary on salary.id = id_salary;

/* 2. Output all employees whose salary is less than 2000 */
select id_employee, employee_name, id_salary, monthly_salary from employees
inner join employee_salary on employees.id = id_employee
inner join salary on salary.id = id_salary
where monthly_salary < 2000;

/* 3. Output all salary positions, but no employee has been assigned to them */
select id_employee, employee_name, monthly_salary from employees
inner join employee_salary on employees.id = id_employee
right join salary on salary.id = id_salary
where employee_name is null;

/* 4. Output all salary positions less than 2000, but no employee has been assigned to them */
select id_employee, employee_name, monthly_salary from employees
inner join employee_salary on employees.id = id_employee
right join salary on salary.id = id_salary
where employee_name is null and monthly_salary < 2000;

/* 5. Find all employees who have not been paid*/
select employee_name, monthly_salary from salary
inner join employee_salary on salary.id = id_salary
right join employees on employees.id = id_employee
where monthly_salary is null;

/* 6. Output all employees with their job titles*/
select id_employee, employee_name, id_role, role_name from employees
inner join roles_employee on employees.id = id_employee
inner join roles on id_role = roles.id;

/* 7. Output the names and position of Java developers only*/
select id_employee, employee_name, id_role, role_name from employees
inner join roles_employee on employees.id = id_employee
inner join roles on id_role = roles.id
where role_name like '%Java%';

/* 8. Output the names and position of Python developers only */
select id_employee, employee_name, id_role, role_name from employees
inner join roles_employee on employees.id = id_employee
inner join roles on id_role = roles.id
where role_name like '%Python%';

/* 9. Output the names and position of all QA engineers */
select id_employee, employee_name, id_role, role_name from employees
inner join roles_employee on employees.id = id_employee
inner join roles on id_role = roles.id
where role_name like '%QA%';

/* 10. Output the names and position of manual QA engineers */
select id_employee, employee_name, id_role, role_name from employees
inner join roles_employee on employees.id = id_employee
inner join roles on id_role = roles.id
where role_name like '%Manual QA%';

/* 11. Output the names and positions of Automation QA*/
select id_employee, employee_name, id_role, role_name from employees
inner join roles_employee on employees.id = id_employee
inner join roles on id_role = roles.id
where role_name like '%Automation QA%';

/* 12. Output names and salaries of Junior specialists*/
select employee_salary.id_employee, employee_name, monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Junior%';

/* 13. Output the names and salaries of Middle specialists */
select employee_salary.id_employee, employee_name, monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Middle%';

/* 14. Output the names and salaries of Senior specialists */
select employee_salary.id_employee, employee_name, monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Senior%';

/* 15. Output salaries of Java developers*/
select monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Java%';

/* 16. Output Python developers' salaries*/
select monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Python%';

/* 17. Output names and salaries of Junior Python developers*/
select employee_name, monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Junior Python%';

/* 18. Output the names and salaries of Middle JS developers*/
select employee_name, monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Middle JavaScript%';

/* 19. Output names and salaries of Senior Java developers*/
select employee_name, monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Senior Java%';

/* 20. Output salaries of Junior QA engineers*/
select monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Junior%QA%';

/* 21. Output the average salary of all Junior specialists*/
select avg(monthly_salary) from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Junior%';

/* 22. Withdraw the amount of salaries of JS developers*/
select sum(monthly_salary) from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%JavaScript%';

/* 23. Output the minimum salary of QA engineers*/
select min(monthly_salary) from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%QA%';

/* 24.  Output the maximum salary of QA engineers*/
select max(monthly_salary) from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%QA%';

/* 25. Output the number of QA engineers*/
select count(role_name) from roles
where role_name like '%QA%';

/* 26. Output the number of Middle Specialists*/
select count(role_name) from roles
where role_name like '%Middle%';

/* 27. Output the number of developers*/
select count(role_name) from roles
where role_name like '%developer%';

/* 28. Output the developer salary fund (amount)*/
select sum(monthly_salary) from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%developer%';

/* 29. Print the names, positions and PO of all specialists in ascending order*/
select employee_name, monthly_salary, role_name from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
order by monthly_salary;

/* 30.  Print the names, positions and PO of all specialists in ascending order from specialists who have a PO from 1700 to 2300*/
select employee_name, monthly_salary, role_name from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

/* 31. Print the names, positions and salary of all specialists in ascending order from specialists whose salary is less than 2300*/
select employee_name, monthly_salary, role_name from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where monthly_salary < 2300
order by monthly_salary;

/* 32. Print the names, positions and salaries of all specialists in ascending order from specialists whose salary is equal to 1100, 1500, 2000 */
select employee_name, monthly_salary, role_name from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where monthly_salary in ( 1100, 1500, 2000)
order by monthly_salary;
