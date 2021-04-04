-- Tabla de profesores
drop table if exists teachers;
create table if not exists teachers (
	id int unsigned auto_increment not null,
    firstName varchar(50) not null,
    primary key (id)
);

describe teachers;
-- Alter table
-- # command: alter table `nombre_tabla` `command` `command_query`;

-- ADD
alter table teachers add lastName varchar(50) not null;

-- DROP
alter table teachers add fieldDrop varchar(50) not null;
alter table teachers drop fieldDrop;

-- MODIFY
alter table teachers modify firstName varchar(100) not null;
alter table teachers modify lastName varchar(100) not null;

