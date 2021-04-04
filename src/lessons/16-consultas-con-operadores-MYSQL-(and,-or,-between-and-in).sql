-- consultas con ciertas condiciones
select productName, unitPrice, unitsInStock from products; 
-- where normal =
select productName, unitPrice, unitsInStock from products where unitsInStock = 002;

-- where AND
select productName, unitPrice, unitsInStock from products where unitsInStock = 002 and unitPrice > 50000;

select productName, unitPrice, unitsInStock from products where unitsInStock = 002 and unitPrice > 500000;

-- where OR (cualquiera de las dos condiciones)
select productName, unitPrice, unitsInStock from products where unitsInStock = 002 or unitPrice > 500000;

-- where BETWEEN (consultas en un rango)
select productName, unitPrice, unitsInStock from products where unitsInStock between 002 and 005;
select * from orders where orderDate between '2021-04-11' and  '2021-04-15';

-- where IN 
select productName, unitPrice, unitsInStock from products where unitsInStock in (002, 005);

-- consultas con Where para unir dos tablas
select products.productName, categories.category_name from products, categories
where products.category_id = categories.id;