-- Tabla de profesores
drop table if exists teachers;
create table if not exists teachers (
	id int unsigned,
    firstName varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(150) not null,
    sex char(1) not null
);

describe teachers;
show index from teachers;
-- # command: alter table `nombre_tabla` `command` `command_query`;


-- alter table indices
-- alter table (add, drop) - primary key
alter table teachers add primary key (id);
alter table teachers drop primary key;

-- alter table (add, drop) - index
alter table teachers add index i_sex(sex);
alter table teachers drop index i_sex;

-- alter table (add, drop) - unique
alter table teachers add index i_email (email);
alter table teachers drop index i_email;