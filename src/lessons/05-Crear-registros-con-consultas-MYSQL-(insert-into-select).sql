-- Crear tabla temporales
-- # Command: create temporary table if not exists `nombre_tabla_temporal`
create temporary table if not exists categories_temp(
	category varchar(50) not null
);

-- crear categorias en tabla temporal
insert into categories_temp 
values ("Hogar"), ("Juguetes"), ("Accesorios"), ("Celulares");

-- ver registros de tabla temporal
select * from categories_temp;

-- crear registros a partir de una consulta en mysql
-- # Command: insert into `nombre_tabla` (field1, field2) consulta;

insert into categories (category_name)
 select * from categories_temp;

-- verificar registros nuevo a partir del insert into select
select * from categories;