-- # keyword: limit - definir el limite de registros

-- consulta con limites
-- palabra reserveda es limit 

select * from products;
-- consulta limitada
select * from products limit 5;

-- consulta limitada a partir de un registro especifico
select * from products limit 5,6;

-- hacer limit con el order by
select * from products
order by id desc
limit 10;

-- limit a eliminar registros
drop table if exists drop_limit_table;
create table if not exists drop_limit_table(
	id int unsigned auto_increment not null,
    name varchar(50) not null,
    primary key (id)
);

-- crear registros
insert into drop_limit_table (name) values ("Eliminar con limit");
insert into drop_limit_table (name) values ("No Eliminar");
insert into drop_limit_table (name) values ("Eliminar con limit");
insert into drop_limit_table (name) values ("No Eliminar");
insert into drop_limit_table (name) values ("Eliminar con limit");
insert into drop_limit_table (name) values ("No Eliminar");
insert into drop_limit_table (name) values ("Eliminar con limit");
insert into drop_limit_table (name) values ("No Eliminar");
insert into drop_limit_table (name) values ("Eliminar con limit");
insert into drop_limit_table (name) values ("No Eliminar");
insert into drop_limit_table (name) values ("No Eliminar");
insert into drop_limit_table (name) values ("Eliminar con limit");
insert into drop_limit_table (name) values ("No Eliminar");
insert into drop_limit_table (name) values ("Eliminar con limit");
insert into drop_limit_table (name) values ("No Eliminar");
insert into drop_limit_table (name) values ("Eliminar con limit");
insert into drop_limit_table (name) values ("No Eliminar");
insert into drop_limit_table (name) values ("Eliminar con limit");
insert into drop_limit_table (name) values ("No Eliminar");
insert into drop_limit_table (name) values ("Eliminar con limit");
insert into drop_limit_table (name) values ("No Eliminar");
insert into drop_limit_table (name) values ("No Eliminar");

-- consulta de registros
select * from drop_limit_table
 where name = "Eliminar con limit";
 
 select count(*) as cantidad, name from drop_limit_table
 where name = "Eliminar con limit";

-- eliminar con limit
delete from drop_limit_table where name = "Eliminar con limit" limit 5;



