-- consultar registros de la tabla
select * from categories;

-- crear un registro
insert into categories (category_name)
values ("Celulares");

-- Actualizar un registro 
-- # Command: update `nombre_tabla` set field_x = value_x, field_x = value_x where field_x = value_x;
update categories set
description = "Dispositivo electronico móvil",
picture= "url"
where id = 1;
