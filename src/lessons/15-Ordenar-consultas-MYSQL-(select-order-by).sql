-- consultas de ordenamiento Mysql
-- # Command: select * from `nombre_tabla` order by field_x, field_x asc
-- # Command: select * from `nombre_tabla` order by field_x, field_x desc

-- ordenar registros - descendente
select productName, unitPrice from products
order by unitPrice desc;

-- ordenar registros - ascendente
select productName, unitPrice from products
order by unitPrice asc;

select productName, unitPrice from products
order by 2 asc;

-- order by por varios campos
select productName, unitPrice, unitsInStock from  products
order by unitsInStock, unitPrice asc;

-- order by final
select productName, unitPrice, unitsInStock from products 
where unitsInStock = 002;

select productName, unitPrice, unitsInStock from products 
where unitsInStock = 002
order by unitPrice asc;