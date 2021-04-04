-- LEFT JOIN y RIGHT JOIN

select * from categories;

-- traer productos con la categoria asociada a ese producto

-- LEFT
-- # command: select * from `tablaA` left join `tablaB` on `tablaA.field_x` = `tablaB.field_x`;
select 
	p.productName,
    c.category_name
from categories c
left join products p on c.id = p.category_id;

-- RIGHT
-- # command: select * from `tablaA` right join `tablaB` on `tablaA.field_x` = `tablaB.field_x`;
select 
	p.productName,
    c.category_name
from products p
right join categories c on c.id = p.category_id;


