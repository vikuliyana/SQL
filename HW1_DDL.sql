/*
Create a 'salary' table 
- id. Serial primary key,
- monthly_salary. Int, not null
Fill the salary table with 15 rows:
*/

create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

insert into salary (monthly_salary)
values  (1000),
	    (1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

/*
Create an 'employees' table 
- id. serial, primary key,
- employee_name. Varchar(50), not null
Fill the employee table with 70 rows.
*/

create table employees(
	id serial primary key,
	employee_name varchar(50) unique not null
);

insert into employees (employee_name)
values  ('Liam'),
		('Noah'),
		('Oliver'),
		('Elijah'),
		('James'),
		('William'),
		('Benjamin'),
		('Lucas'),
		('Henry'),
		('Theodore'),
		('Jack'),
		('Levi'),
		('Alexander'),
		('Jackson'),
		('Mateo'),
		('Daniel'),
		('Michael'),
		('Mason'),
		('Sebastian'),
		('Ethan'),
		('Logan'),
		('Owen'),
		('Samuel'),
		('Jacob'),
		('Asher'),
		('Aiden'),
		('John'),
		('Joseph'),
		('Wyatt'),
		('David'),
		('Leo'),
		('Luke'),
		('Julian'),
		('Hudson'),
		('Grayson'),
		('Matthew'),
		('Ezra'),
		('Gabriel'),
		('Carter'),
		('Isaac'),
		('Jayden'),
		('Luca'),
		('Anthony'),
		('Dylan'),
		('Lincoln'),
		('Thomas'),
		('Maverick'),
		('Elias'),
		('Josiah'),
		('Charles'),
		('Caleb'),
		('Christopher'),
		('Ezekiel'),
		('Miles'),
		('Jaxon'),
		('Isaiah'),
		('Andrew'),
		('Joshua'),
		('Nathan'),
		('Nolan'),
		('Adrian'),
		('Cameron'),
		('Santiago'),
		('Eli'),
		('Aaron'),
		('Ryan'),
		('Angel'),
		('Cooper'),
		('Waylon'),
		('Easton');

select * from employees;

/*
Create an 'employee_salary' table 
- id. Serial primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Fill the employee_salary table with 40 rows:
- insert non-existent employee_id in 10 lines out of 40
*/

create table employee_salary(
	id serial primary key,
	id_employee int not null,
	id_salary int not null,
	foreign key (id_employee)
		references employees(id),
	foreign key (id_salary)
		references salary(id)
);

insert into employee_salary (id_employee, id_salary)
values  (1, 2),
		(2, 2),
		(3, 6),
		(4, 12),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 6),
		(9, 8),
		(10, 16),
		(11, 12),
		(12, 11),
		(13, 8),
		(14, 15),
		(15, 14),
		(16, 1),
		(17, 1),
		(18, 1),
		(19, 2),
		(20, 2),
		(21, 3),
		(22, 8),
		(23, 6),
		(24, 7),
		(25, 8),
		(26, 7),
		(27, 9),
		(28, 14),
		(29, 1),
		(30, 9);
		
		

select * from employee_salary;

drop table roles;

update employee_salary
set id_employee = 26
where id = 26;

/*
Create a 'roles' table
- id. Serial  primary key,
- role_name. int, not null, unique
Change the column type role_name from int to varchar(30)
Fill the 'roles' table with 20 rows:
*/

create table roles(
	id serial primary key,
	role_name int not null
);

alter table roles
alter column role_name type varchar(50);

insert into roles (role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

select * from roles;

/*
Create a 'roles_employee' table
- id. Serial primary key,
- employee_id. Int, not null, unique (foreign key for the 'employees' table, id field)
- role_id. Int, not null (foreign key for the 'roles' table, id field)
Fill the roles_employee table with 40 rows:
*/

create table roles_employee(
	id serial primary key,
	id_employee int not null,
	id_role int not null,
	foreign key (id_employee)
		references employees(id),
	foreign key (id_role)
		references roles(id)
);

select * from roles_employee;

insert into roles_employee (id_employee, id_role)
values  (1, 2),
		(2, 2),
		(3, 6),
		(4, 12),
		(5, 5),
		(6, 19),
		(7, 7),
		(8, 6),
		(9, 16),
		(10, 16),
		(11, 12),
		(12, 11),
		(13, 8),
		(14, 15),
		(15, 14),
		(16, 1),
		(17, 18),
		(18, 1),
		(19, 2),
		(20, 2),
		(21, 3),
		(22, 19),
		(23, 6),
		(24, 7),
		(25, 8),
		(26, 7),
		(27, 20),
		(28, 14),
		(29, 20),
		(30, 9),
		(31, 3),
		(42, 19),
		(43, 6),
		(66, 7),
		(55, 8),
		(56, 7),
		(49, 20),
		(44, 14),
		(45, 17),
		(59, 9);


