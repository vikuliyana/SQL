/* 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами */
select id_employee, employee_name, id_salary, monthly_salary from employees
inner join employee_salary on employees.id = id_employee
inner join salary on salary.id = id_salary;

/* 2. Вывести всех работников у которых ЗП меньше 2000 */
select id_employee, employee_name, id_salary, monthly_salary from employees
inner join employee_salary on employees.id = id_employee
inner join salary on salary.id = id_salary
where monthly_salary < 2000;

/* 3.  Вывести все зарплатные позиции, но работник по ним не назначен*/
select id_employee, employee_name, monthly_salary from employees
inner join employee_salary on employees.id = id_employee
right join salary on salary.id = id_salary
where employee_name is null;

/* 4. Вывести все зарплатные позиции меньше 2000, но работник по ним не назначен*/
select id_employee, employee_name, monthly_salary from employees
inner join employee_salary on employees.id = id_employee
right join salary on salary.id = id_salary
where employee_name is null and monthly_salary < 2000;

/* 5. Найти всех работников кому не начислена ЗП*/
select employee_name, monthly_salary from salary
inner join employee_salary on salary.id = id_salary
right join employees on employees.id = id_employee
where monthly_salary is null;

/* 6. Вывести всех работников с названиями их должности*/
select id_employee, employee_name, id_role, role_name from employees
inner join roles_employee on employees.id = id_employee
inner join roles on id_role = roles.id;

/* 7. Вывести имена и должность только Java разработчиков*/
select id_employee, employee_name, id_role, role_name from employees
inner join roles_employee on employees.id = id_employee
inner join roles on id_role = roles.id
where role_name like '%Java%';

/* 8. Вывести имена и должность только Python разработчиков*/
select id_employee, employee_name, id_role, role_name from employees
inner join roles_employee on employees.id = id_employee
inner join roles on id_role = roles.id
where role_name like '%Python%';

/* 9. Вывести имена и должность всех QA инженеров*/
select id_employee, employee_name, id_role, role_name from employees
inner join roles_employee on employees.id = id_employee
inner join roles on id_role = roles.id
where role_name like '%QA%';

/* 10. Вывести имена и должность ручных QA инженеров*/
select id_employee, employee_name, id_role, role_name from employees
inner join roles_employee on employees.id = id_employee
inner join roles on id_role = roles.id
where role_name like '%Manual QA%';

/* 11. Вывести имена и должность автоматизаторов QA*/
select id_employee, employee_name, id_role, role_name from employees
inner join roles_employee on employees.id = id_employee
inner join roles on id_role = roles.id
where role_name like '%Automation QA%';

/* 12. Вывести имена и зарплаты Junior специалистов*/
select employee_salary.id_employee, employee_name, monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Junior%';

/* 13.Вывести имена и зарплаты Middle специалистов */
select employee_salary.id_employee, employee_name, monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Middle%';

/* 14.Вывести имена и зарплаты Senior специалистов */
select employee_salary.id_employee, employee_name, monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Senior%';

/* 15. Вывести зарплаты Java разработчиков*/
select monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Java%';

/* 16. Вывести зарплаты Python разработчиков*/
select monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Python%';

/* 17. Вывести имена и зарплаты Junior Python разработчиков*/
select employee_name, monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Junior Python%';

/* 18. Вывести имена и зарплаты Middle JS разработчиков*/
select employee_name, monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Middle JavaScript%';

/* 19. Вывести имена и зарплаты Senior Java разработчиков*/
select employee_name, monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Senior Java%';

/* 20. Вывести зарплаты Junior QA инженеров*/
select monthly_salary from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Junior%QA%';

/* 21. Вывести среднюю зарплату всех Junior специалистов*/
select avg(monthly_salary) from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%Junior%';

/* 22. Вывести сумму зарплат JS разработчиков*/
select sum(monthly_salary) from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%JavaScript%';

/* 23. Вывести минимальную ЗП QA инженеров*/
select min(monthly_salary) from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%QA%';

/* 24.  Вывести максимальную ЗП QA инженеров*/
select max(monthly_salary) from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%QA%';

/* 25. Вывести количество QA инженеров*/
select count(role_name) from roles
where role_name like '%QA%';

/* 26. Вывести количество Middle специалистов*/
select count(role_name) from roles
where role_name like '%Middle%';

/* 27. Вывести количество разработчиков*/
select count(role_name) from roles
where role_name like '%developer%';

/* 28. Вывести фонд (сумму) зарплаты разработчиков*/
select sum(monthly_salary) from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where role_name like '%developer%';

/* 29. Вывести имена, должности и ЗП всех специалистов по возрастанию*/
select employee_name, monthly_salary, role_name from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
order by monthly_salary;

/* 30.  Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300*/
select employee_name, monthly_salary, role_name from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

/* 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300*/
select employee_name, monthly_salary, role_name from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where monthly_salary < 2300
order by monthly_salary;

/* 32.  Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000 */
select employee_name, monthly_salary, role_name from employees
inner join roles_employee on employees.id = roles_employee.id_employee
inner join employee_salary on employees.id = employee_salary.id_employee
inner join salary on salary.id = id_salary
inner join roles on id_role = roles.id
where monthly_salary in ( 1100, 1500, 2000)
order by monthly_salary;