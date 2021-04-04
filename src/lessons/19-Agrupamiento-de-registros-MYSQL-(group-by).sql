-- # Command: select func_agrupamiento, field_x, field_x from `nombre_tabla` group by field_x;

select * from categories;
select * from products;

-- Agrupamiento en Mysql - contar los registros agrupando por categoria
select count(*) as cantidad, categories.category_name from products
inner join categories on categories.id = products.category_id
group by categories.category_name;

-- Agrupamiento en Mysql - sumando la cantidad de precio
select sum(products.unitPrice) as precioTotal, count(*) as cantidad, categories.category_name from products
inner join categories on categories.id = products.category_id
group by categories.category_name;

-- agrupamiento de empleados - para saber cuantas personas estan divididas por cargo en especifico
select count(*) as cantidad, title from employees
group by title;

-- Agrupamiento por dos campos
select * from shippers;
select * from orders limit 10;

-- Agrupar para obtener cantidad de envios segun pais y empresa de envio
select count(*) cantEnvioPorPaisSegunEmpresaEnvio, orders.shipCountry, shippers.companyName from orders
inner join shippers on shippers.id = orders.shipper_id
group by orders.shipCountry, shippers.companyName;