-- # keyword: primary key (field_x) - llave primaria - compuesta
-- # keyword: index `nombre_index` (field_x) - índice normal
-- # keyword: unique `nombre_index` (field_x) - índice único


-- Indices de las tablas
-- primary key -> identificar de manera unica una fila de una tabla
-- index -> permite indexar los datos, para que su busqueda sea más rapida, como un diccionario
-- unique -> registro no se puede repetir
drop table if exists index_example;
create table if not exists index_example (
	id int unsigned auto_increment not null,
    detail_date date not null,
    email varchar(200) not null,
    normal_field varchar(50) null,
    unique email (email),
    index detail_date(detail_date),
    primary key (id)
);

describe index_example;
-- mostrar indices
-- # Command: show index from  `nombre_tabla`
show index from index_example;

-- consulta de tabla
select * from index_example;
-- crear registros
insert into index_example (detail_date, email)
values ('2021-04-02', 'email@example.com');

-- **************************************************************
-- tabla para agregar indices a campos existentes en las tablas
-- **************************************************************
drop table if exists index_example;
create table if not exists index_example (
	id int unsigned auto_increment not null,
    detail_date date not null,
    email varchar(200) not null,
    normal_field varchar(50) null,
    trx_date date not null,
    code_unq_one char(1) not null,
    code_unq_two char(1) not null,
    unique email (email),
    index detail_date(detail_date),
    primary key (id)
);

-- crear indices
-- # Command: create index `nombre_indice` on `nombre_tabla` (field_x);
create index i_trx_date on index_example (trx_date);

-- # Command: create unique index `nombre_indice` on `nombre_tabla` (field_x, field_x);
create unique index i_code_unq on index_example (code_unq_one, code_unq_two);
  
  show index from index_example;
  
  -- crear registros
  insert into index_example (detail_date, email, trx_date, code_unq_one, code_unq_two)
values ('2021-04-02', 'email_3@example.com', '2021-04-02', '1', '1');

-- eliminar indices
-- # Command: drop index `nombre_indice` on `nombre_tabla`;
 drop index i_code_unq on index_example;



