--1. Создать таблицу employees

create table Employees(
	id serial primary key,
	Employee_name varchar(50) unique not null
);

select * from Employees;

--2. Наполнить таблицу employee 70 строками.

insert into Employees(employee_name)
values ('Joan Ballard'),
('Sharon Baldwin'),
('Tyler Luna'),
('Sharon Murphy'),
('Thomas Bush'),
('Michelle Ward'),
('Marilyn Sandoval'),
('Steven Gregory'),
('Dawn Becker'),
('Wayne Craig'),
--10
('Robert Rogers'),
('Karen Phillips'),
('Edna Willis'),
('Dawn Holt'),
('Karen Weber'),
('John West'),
('Alfredo Garner'),
('Stephen Johnson'),
('Mary Reese'),
('Shelly Johnson'),
--20
('Carolyn Stewart'),
('Sally West'),
('Paul Martinez'),
('Paul Griffin'),
('Richard Davis'),
('Jack Mendoza'),
('Harold Massey'),
('John Byrd'),
('Debra Morgan'),
('Michael Ward'),
--30
('Margaret Burgess'),
('Betty Lyons'),
('Kirk Mitchell'),
('Sally Murphy'),
('Phillip Brown'),
('Richard Lowe'),
('Annie Simpson'),
('Michael Walker'),
('Armando Edwards'),
('Mary Hawkins'),
--40
('Andre Simon'),
('Andrew Coleman'),
('Joel Thompson'),
('Loretta Thomas'),
('Billy Moore'),
('Wilma Rodriquez'),
('Lester Brown'),
('Edward Simpson'),
('Gerald Houston'),
('Brian Johnson'),
--50
('Pamela Smith'),
('Florence Jensen'),
('William Miller'),
('Nancy Wright'),
('Katie Hanson'),
('Sandra Mendoza'),
('Frank Nelson'),
('Michael Bradley'),
('Robert Anderson'),
('Carmen Peterson'),
--60
('Gabriel Chavez'),
('Peggy Hayes'),
('Amanda Smith'),
('Jesse Mendez'),
('Ann Myers'),
('John Hernandez'),
('Kim Stevens'),
('Craig Adams'),
('Danielle Miller'),
('Brent Watson');
--70

select * from Employees;

--3. Создать таблицу salary

create table Salary(
id serial primary key,
monthly_salary int not null
);

select * from Salary;

--4. Наполнить таблицу salary 16 строками: от 1000 до 2500

insert into Salary(monthly_salary)
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
		
select * from Salary;

--5. Создать таблицу employee_salary ( id. Serial  primary key,  employee_id. Int, not null, unique, salary_id. Int, not null)

create table Employees_Salary(
id serial primary key,
Employees_id int not null unique,
Salary_id int not null
);

--6. Наполнить таблицу employee_salary 40 строками:  в 10 строк из 40 вставить несуществующие employee_id

insert into Employees_Salary(Employees_id, Salary_id)
values  (1, 15),
		(2, 14),
		(3, 13),
		(4, 12),
		(5, 11),
		(6, 10),
		(7, 9),
		(8, 8),
		(9, 7),
		(10, 6),
		--10
		(20, 5),
		(21, 4),
		(22, 3),
		(23, 2),
		(24, 1),
		(25, 15),
		(26, 14),
		(27, 13),
		(28, 12),
		(29, 11),
		--20
		(40, 10),
		(41, 9),
		(42, 8),
		(43, 7),
		(44, 6),
		(45, 5),
		(46, 4),
		(47, 3),
		(48, 2),
		(49, 1),
		--30
		(80, 1),
		(81, 2),
		(82, 3),
		(83, 4),
		(84, 5),
		(85, 6),
		(86, 7),
		(87, 8),
		(88, 9),
		(89, 10);
		
select * from Employees_Salary;

--7. Создать таблицу roles ( id. Serial  primary key, role_name. int, not null, unique)

create table Roles (
id serial primary key,
Role_name int not null unique
);

select * from Roles;

alter table Roles
rename column Role_name to Roles_name;

select * from Roles;

--8. Поменять тип столба role_name с int на varchar(80)
alter table Roles
alter column Roles_name type varchar(80) using Roles_name::varchar(80);

select * from Roles;

--9. Наполнить таблицу roles 20 строками:

insert into Roles(Roles_name)
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
	
select * from Roles;

--10. Создать таблицу roles_employee (id. Serial  primary key, employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id), role_id. Int, not null (внешний ключ для таблицы roles, поле id))
	
create table Roles_Employees(
id serial primary key,
Employees_id int not null unique,
Roles_id int not null,
foreign key (Employees_id)
	references Employees (id),
foreign key (Roles_id)
	references Roles (id)
);

 select * from Roles_Employees;

--11. Наполнить таблицу roles_employee 40 строками

insert into Roles_Employees (Employees_id,Roles_id)
values  (40, 20),
		(39, 19),
		(38, 18),
		(37, 17),
		(36, 16),
		(35, 15),
		(34, 14),
		(33, 13),
		(32, 12),
		(31, 11),
		(30, 10),
		(29, 9),
		(28, 8),
		(27, 7),
		(26, 6),
		(25, 5),
		(24, 4),
		(23, 3),
		(22, 2),
		(21, 1),
		(20, 1),
		(19, 2),
		(18, 3),
		(17, 4),
		(16, 5),
		(15, 6),
		(14, 7),
		(13, 8),
		(12, 9),
		(11, 10),
		(10, 11),
		(9, 12),
		(8, 13),
		(7, 14),
		(6, 15),
		(5, 16),
		(4, 17),
		(3, 18),
		(2, 19),
		(1, 20);

select * from Roles_Employees;

