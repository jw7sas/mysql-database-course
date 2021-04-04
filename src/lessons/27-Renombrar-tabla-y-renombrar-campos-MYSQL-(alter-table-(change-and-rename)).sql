-- Tabla de profesores
drop table if exists teachers;
create table if not exists teachers (
	id int unsigned auto_increment not null,
    firstName varchar(50) not null,
    last_name varchar(50) not null,
    primary key (id)
);

describe teachers;
-- Alter table
-- # command: alter table `nombre_tabla` `command` `command_query`;

-- CHANGE
alter table teachers change last_name  lastName varchar(50) not null;

-- Rename TABLE
-- # command: rename table `nombre_tabla` to `otro_nombre_tabla`;

rename table teachers to teachers_rename;

show tables;




