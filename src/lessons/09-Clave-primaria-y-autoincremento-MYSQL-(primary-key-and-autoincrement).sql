-- # keyword: primary key (field_x) - llave primaria
-- # keyword: auto_increment - Campo autoincremental

-- crear tabla con llave primaria y id auto incremental
-- llave primaria -> identifica de manera unica una fila de una tabla
create table suppliers(
	id int auto_increment not null,
    companyName varchar(100) not null,
    contactName varchar(100) not null,
    contactTitle varchar(100) not null,
    address varchar(100) null,
    city varchar(100) null,
    region varchar(100) null,
    postalCode varchar(100) null,
    country varchar(100) not null,
    phone varchar(100) not null,
    fax varchar(100) null,
    homePage varchar(100) null,
    primary key (id)
);

-- crear registros con campo auto increment

insert into suppliers
(companyName, contactName, contactTitle, country, phone)
values
("Asperos Geek SAS", "Geek", "Asperos", "Colombia", "3144444444");

-- la llave primaria no se puede repetir porque identifica a una fila de una tabla de maneara única
insert into suppliers
(id, companyName, contactName, contactTitle, country, phone)
values
(1, "Asperos Geek SAS", "Geek", "Asperos", "Colombia", "3144444444");

-- verificar campo auto increment
select * from suppliers;

-- describe table
-- # Command: describe `nombre_tabla`
describe suppliers;