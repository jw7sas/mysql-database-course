-- consultas basicas (*)
select * from categories;

-- consultas a datos especificos
-- # Command: select field1 from `nombre_tabla`;
select category_name from categories;

-- consulta con la condición where
-- # Command: select * from `nombre_tabla` where field_x = 'value';
select * from categories 
where category_name = "entretenimiento";