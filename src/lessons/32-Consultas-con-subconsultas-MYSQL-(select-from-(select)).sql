-- # command: select tablaA.* from (select * from `nombre_tabla`) `tablaA`;

-- SUBCONSULTAS
-- consultas a partir de otra consulta
-- ejemplo sin tablas

select concat('Cel: ', a.cellphone) as numberPhone, 'otro campo' as otherField  from (
	select '3125631212' as cellphone
		union
	select '3265635656' as cellphone
		union
	select '3451235896' as cellphone
)  as a;

-- tabla de categorias limitadas
select * from categories where id in (1,2,3,4,5,6);

-- subconsultas con otras tablas - productos con categorias limitadas - JOIN
select p.productName, sc.category_name from products p
inner join 
	(select * from categories where id in (1,2,3,4,5,6)) sc
    ON sc.id = p.category_id;

-- subconsulta dentro del select
select 
	p.productName, 
    (select category_name from categories where id = p.category_id) as categoryName 
from products p;

-- subconsulta dentro del from
select 
	p.productName, 
	sc.category_name
from products p, (select * from categories where id in (1,2,3,4,5,6)) sc
where sc.id = p.category_id;

-- subconsulta dentro del where
select * from products
where id IN (
	SELECT * FROM (select id from products order by id desc limit 5) A
);

-- select where = 
select * from products
where id = (select 1);



