-- Crear registros en una tabla
-- # Command: insert into `nombre_tabla` (field1, field2) values (value1, value2);

insert into categories (id, category_name, description, picture)
values (1, "Deportes", "Todo lo relacionado con deportes", null);

insert into categories (id, category_name)
values (null, "Ropa");

insert into categories (category_name)
values ("Oficina");

insert into categories (category_name)
values ("Muebles"), ("Electrodomésticos"), ("Computadores");

insert into categories
values (null, "Entretenimiento", "Divertise", "url");

-- Consultar registros creados
-- # Command: select * from `nombre_tabla` 

select * from categories;
