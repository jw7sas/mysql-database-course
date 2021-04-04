-- Cargar la base de datos del Script
-- usar base de datos
use asgeek_orders;
-- crear tabla de empleados
create table employees(
	id int unsigned auto_increment not null,
	firstName varchar(50) not null,
    lastName varchar(50) not null,
	title varchar(50) not null,
	birthDate date not null,
	hireDate date not null,
	address varchar(100) not null,
	city varchar(50) not null,
	region varchar(50) null,
	postalCode varchar(50) null,
	country varchar(50) not null,
	homePhone varchar(50) not null,
    cellphone varchar(200) not null,
	extension varchar(50) null,
	photo varchar(250) null,
    primary key (id)
);

-- crear registros de empleados
insert into employees
(firstName, lastName, title, birthDate, hireDate, address, 
city, country, homePhone, cellphone)
values
("Mario", "Casas", "Desarrollador Java", "1970-11-02", 
"2020-11-02", "Carrera 5 sur Este", "Bogotá", "Colombia", 
"5555555", "3132225544");

-- consulta de datos
select * from employees;

-- insertar con consulta en excel
-- ="insert into employees (firstName, lastName, title, birthDate, hireDate, address, city, country, homePhone, cellphone) values ('"&A2&"','"&B2&"','"&C2&"','"&D2&"','"&E2&"','"&F2&"','"&G2&"','"&H2&"','"&I2&"','"&J2&"');"

-- Funciones de texto
-- Función concat_Ws
-- # keyword: concat_ws - concatenar después de cada campo
select concat_ws("__", firstName, lastName, title) as info_employee from employees limit 10;

-- Función concat
-- # keyword: concat - concatenar campos
select concat(firstName, " ", lastName) as full_name from employees limit 10;

-- Función left
-- # keyword: left - leer desde la izquierda cierta cantidad de caracteres
select left(title, 16) as workname from employees limit 10;

-- Función insert
-- # keyword: insert - insert text en un campo
select firstName, insert(homePhone,1,0,"Tel: ") as home_phone from employees limit 10;

-- Función lower
-- # keyword: lower - convertir a minúscula
select firstName, lower(firstName) as lower_firstName from employees limit 10;

-- Función upper
-- # keyword: upper - convertir a mayúscula
select title, upper(title) as upper_title from employees limit 10;