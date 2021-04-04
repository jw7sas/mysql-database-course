-- Crear la tablas MYSQL
-- # Command: create table if not exists `nombre_tabla`
-- crear tabla de categorias
create table if not exists categories (
	id int not null auto_increment,
    category_name varchar(50) not null,
	description varchar(200) null,
	picture varchar(250) null,
    primary key (id)
);

-- Mostrar tablas de la base de datos
show tables;

-- Eliminar tablas de la base de datos
-- # Command: drop table if exists `nombre_tabla`
drop table if exists categories;

-- Crear tablas temporales
-- # Command: create temporary table if not exists `nombre_tabla_temporal`
create temporary table if not exists categories_temp(
	category varchar(50) not null
);

-- Elimininar tabla temporal
-- # Command: drop table if exists  `nombre_tabla_temporal`
drop table if exists categories_temp;