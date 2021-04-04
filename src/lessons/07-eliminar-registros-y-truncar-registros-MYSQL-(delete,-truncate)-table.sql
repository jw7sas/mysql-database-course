-- consultar registros de la tabla
select * from categories;

-- eliminar registro de una tabla
-- # Command: delete from `nombre_tabla` where field_x = value;
delete from categories where id = 11;

-- crear un nuevo registro para verificar el siguiente id
insert into categories (category_name)
values ("Celulares");

-- truncar una tabla
-- # Command: truncate `nombre_tabla`
truncate categories;