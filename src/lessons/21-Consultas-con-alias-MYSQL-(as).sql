-- # keyword: AS - alias field_x  or table_x

-- consultas con alias
select * from products;
-- palabra reservada para alias es AS
select p.productName as nombre_producto, p.id as identificador from products AS p;

select 1 as numero;

select current_date as fecha_actual;

-- consulta con dos tablas ---> Alias
select p.productName as producto, c.category_name as categoria 
from products p, categories c
where p.category_id = c.id;
