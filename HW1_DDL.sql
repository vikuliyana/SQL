/*
Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
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
Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.
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
Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
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
Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:
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
Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:
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


