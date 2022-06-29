-- Homework 2 SQL_DDL.

-- 1. Employees table
-- Создать таблицу employees

create table employees(
id serial primary key,
employee_name varchar(50) not null
);

-- Наполнить таблицу employees 70 строками.

insert into employees(id, employee_name)
values (default, 'Айвазовский Иван'),
(default, 'Алексеев Фёдор'),
(default, 'Алтамурас Иоаннис'),
(default, 'Альберс Джозеф'),
(default, 'Альма-Тадема Лоуренс'),
(default, 'Альмада Хосе де Негрейрос'),
(default, 'Альт фон Рудольф'),
(default, 'Альтдорфер Альбрехт'),
(default, 'Альтман Натан'),
(default, 'Амарал ду Тарсила'),
(default, 'Андре Карл'),
(default, 'Анненков Юрий'),
(default, 'Антропов Алексей'),
(default, 'Анушкевич Ричард'),
(default, 'Арп Жан'),
(default, 'Архипенко Александр'),
(default, 'Арчимбольдо Джузеппе'),
(default, 'Ауэрбах Франк'),
(default, 'Блейк Уильям'),
(default, 'Гамильтон Ричард'),
(default, 'Гассам Чайльд'),
(default, 'Гварди Франческо'),
(default, 'Ге Николай'),
(default, 'Гейнсборо Томас'),
(default, 'Герстль Рихард'),
(default, 'Гизис Николаос'),
(default, 'Гирландайо Доменико'),
(default, 'Глакенс Уильям Джеймс'),
(default, 'Гоген Поль'),
(default, 'Гойя де Франсиско'),
(default, 'Гольбейн Ганс Младший'),
(default, 'Гонсалес Ева'),
(default, 'Гончарова Наталья'),
(default, 'Горки Аршил'),
(default, 'Готлиб Адольф'),
(default, 'Гофман Ганс'),
(default, 'Гоццоли Беноццо'),
(default, 'Грабарь Игорь'),
(default, 'Греко Эль'),
(default, 'Гримшоу Джон Эткинсон'),
(default, 'Грис Хуан'),
(default, 'Гросс Георг'),
(default, 'Густон Филипп'),
(default, 'Паален Вольфганг'),
(default, 'Папазов Жорж'),
(default, 'Папалукас Спирос'),
(default, 'Пармиджанино'),
(default, 'Партенис Константинос'),
(default, 'Патинир Иоахим'),
(default, 'Перов Василий'),
(default, 'Перуджино Пьетро'),
(default, 'Петров-Водкин Кузьма'),
(default, 'Пикабиа Франсис'),
(default, 'Пикассо Пабло'),
(default, 'Пимоненко Николай'),
(default, 'Пиранези Джованни Баттиста'),
(default, 'Пиросмани Нико'),
(default, 'Писсарро Камиль'),
(default, 'Поленов Василий'),
(default, 'Поллок Джексон'),
(default, 'Понтормо Джакопо'),
(default, 'Попова Любовь'),
(default, 'Прендергаст Морис'),
(default, 'Примаченко Мария'),
(default, 'Провост Ян'),
(default, 'Прюдон Пьер Поль'),
(default, 'Пуссен Николя'),
(default, 'Пьер-Нарцисс Герен'),
(default, 'Пэн Антуан'),
(default, 'Пюви де Шаванн Пьер');

-- 2. Таблица salary
-- Создать таблицу salary
create table salary(
id serial primary key,
monthly_salary int not null
);

-- Наполнить таблицу salary 15 строками
insert into salary(id, monthly_salary)
values (default, 1000),
(default, 1100),
(default, 1200),
(default, 1300),
(default, 1400),
(default, 1500),
(default, 1600),
(default, 1700),
(default, 1800),
(default, 1900),
(default, 2000),
(default, 2100),
(default, 2200),
(default, 2300),
(default, 2400),
(default, 2500);

-- 3. Таблица employee_salary
-- Создать таблицу employee_salary

create table employees_salary (
id serial primary key,
employees_id int unique not null,
salary_id int not null
);

-- Наполнить таблицу employee_salary 40 строками
insert into employees_salary(employees_id, salary_id)
values (3,7),
(1,4),
(5,9),
(40,13),
(23,4),
(11,2),
(52,10),
(15,13),
(26,4),
(16,1),
(33,7),
(71,3),
(72,4),
(73,5),
(74,6),
(75,7),
(76,8),
(77,9),
(78,10),
(79,15),
(80,16),
(81,4),
(24,17),
(25,18),
(27,19),
(28,20),
(29,1),
(30,2),
(31,3),
(32,4),
(34,5),
(35,15),
(36,16),
(37,17),
(38,18),
(39,19),
(44,20),
(45,1),
(46,2),
(47,3);


-- 4. Таблица roles
-- Создать таблицу roles

create table roles (
id serial primary key,
role_name int unique not null
);

-- Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);


-- Наполнить таблицу roles 20 строками:

insert into roles (id, role_name)
values (default, 'Junior Python developer'),
(default, 'Middle Python developer'),
(default, 'Senior Python developer'),
(default, 'Junior Java developer'),
(default, 'Middle Java developer'),
(default, 'Senior Java developer'),
(default, 'Junior JavaScript developer'),
(default, 'Middle JavaScript developer'),
(default, 'Senior JavaScript developer'),
(default, 'Junior Manual QA engineer'),
(default, 'Middle Manual QA engineer'),
(default, 'Senior Manual QA engineer'),
(default, 'Product Manager'),
(default, 'Designer'),
(default, 'HR'),
(default, 'CEO'),
(default, 'Sales manager'),
(default, 'Junior Automation QA engineer'),
(default, 'Middle Automation QA engineer'),
(default, 'Senior Automation QA engineer');

-- 5. Таблица roles_employee
-- Создать таблицу roles_employee

create table roles_employees (
id serial primary key,
employees_id int unique not null,
role_id int not null,
foreign key (employees_id)
references employees(id),
foreign key (role_id)
references roles(id)
);


-- Наполнить таблицу roles_employee 40 строками:

insert into roles_employees(employees_id, role_id)
values (7,2),
(20,4),
(3,9),
(5,13),
(23,4),
(11,2),
(10,9),
(22,13),
(21,3),
(34,4),
(6,7),
(12,2),
(13,3),
(14,4),
(15,5),
(16,6),
(17,7),
(18,8),
(19,9),
(41,10),
(42,15),
(43,16),
(44,17),
(24,18),
(25,19),
(26,20),
(27,1),
(28,2),
(29,3),
(30,4),
(31,5),
(32,15),
(33,16),
(45,17),
(35,18),
(36,19),
(37,20),
(38,1),
(39,2),
(40,3);
