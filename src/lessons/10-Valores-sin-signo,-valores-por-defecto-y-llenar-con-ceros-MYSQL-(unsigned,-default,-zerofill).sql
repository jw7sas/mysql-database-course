-- # keyword: unsigned - valores sin signo
-- # keyword: default - campo con valor por defecto
-- # keyword: zerofill - rellenar con cero

-- eliminar tabla si existe
drop table if exists products;
-- crear tabla si no existe
create table if not exists products(
	id int auto_increment not null,
    productName varchar(50) not null,
    quantityPerUnit int null,
    unitPrice decimal not null,
    unitsInStock int(3) not null,
    discontinued bool not null,
    supplier_id int not null,
    category_id int not null,
    primary key (id)
);

-- describir table
describe products;

-- consultar tablas de con items existentes
select * from suppliers;
select * from categories;

-- consultar productos
select * from products;

-- crear un registro de productos
insert into products 
(productName, unitPrice, unitsInStock, discontinued, supplier_id, category_id)
values
("Samsung Galaxy S21", 2500000, 50, false, 1, 1);

insert into products 
(id, productName, unitPrice, unitsInStock, discontinued, supplier_id, category_id)
values
(-5, "Samsung Galaxy S21", -2500000, -50, false, 1, 1);

-- crear tabla productos
-- valor por defauit, sin signo, zerofill
create table if not exists products(
	id int unsigned auto_increment not null,
    productName varchar(50) not null,
    quantityPerUnit int unsigned null,
    unitPrice decimal unsigned not null,
    unitsInStock int(3) unsigned zerofill not null,
    discontinued bool not null default false,
    supplier_id int unsigned not null,
    category_id int unsigned not null,
    primary key (id)
);

-- crear un registro de productos
insert into products
(productName, unitPrice, unitsInStock, supplier_id, category_id)
values 
("Samsung Galaxy S21", 2500000, 50, 1, 1);

insert into products
(id, productName, unitPrice, unitsInStock, supplier_id, category_id)
values 
(-5, "Samsung Galaxy S21", -2500000, -50, 1, 1);