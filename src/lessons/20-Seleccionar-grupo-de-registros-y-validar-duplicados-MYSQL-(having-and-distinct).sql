-- # Command: select func_agrupamiento, field_x, field_x from `nombre_tabla` group by field_x having func_agrupamiento operador value_x;


-- Agrupar los pedidos por país, donde haya más de dos pedidos
select count(*) ordenes_por_pais, orders.shipCountry from orders
group by shipCountry;

select count(*) ordenes_por_pais, orders.shipCountry from orders
group by shipCountry
having count(*) > 2;

-- Agrupar los pedidos por país, donde la cantidad sea diferente de 2
select count(*) ordenes_por_pais, orders.shipCountry from orders
group by shipCountry
having count(*) <> 2;

-- Agrupar por categorias donde la suma del precio de los productos sea mayor a 300000
select sum(products.unitPrice) as precioTotal, count(*) as cantidad, categories.category_name from products
inner join categories on categories.id = products.category_id
group by categories.category_name
having sum(products.unitPrice) > 300000;

-- *****************************
select * from orders limit 10;
-- Distinct
-- # Command: select distinct, field_x from `nombre_tabla`;

-- saber la fechas en las que se han realizado pedidos
select distinct orderDate from orders;
-- saber los paises distintos en los pedidos solicitados
select distinct shipCountry from orders;