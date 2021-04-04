-- JOINS.
-- Link https://webartesanal.com/blog/teoria-de-conjuntos-en-mysql-con-select-join/
-- title buscador: Teoría de conjuntos en MySQL con select join

-- INNER JOIN COMÚN EN CONJUNTO A COMO EN CONJUNTO B

-- INNER JOIN
select * from categories;

-- traer productos con la categoria asociada a ese producto
select 
	p.productName,
    c.category_name
from products p
inner join categories c on c.id = p.category_id;

-- traer el detalle de orden, con el producto, la categoria, la orden, el proveedor y el cliente
show tables;

-- # command: select * from `tablaA` inner join `tablaB` on `tablaA.field_x` = `tablaB.field_x`;
select 
	od.unitPrice, od.quantity, (od.unitPrice * od.quantity) as total,
    p.productName,
    c.category_name,
    o.orderDate,
    o.requiredDate,
    o.shippedDate,
    s.companyName as shipperCompany,
    s.phone as shipperPhone,
    cl.firstName as clientName,
    cl.cellphone as cellphoneClient,
    cl.address as addressClient
from orderdetails od
inner join products p on p.id = od.product_id
inner join categories c on c.id = p.category_id
inner join orders o on o.id = od.order_id
inner join shippers s on s.id = o.shipper_id
inner join customers cl on cl.id = o.customer_id
limit 10;






