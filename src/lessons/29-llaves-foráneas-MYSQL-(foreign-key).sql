-- # keyword: foreign key (field_x) - columna que hace referencia a otra tabla

-- La llave foranea se pone en la relación de muchos
-- identifica que una columna hace referencia a otra tabla

-- Tabla de profesores
drop table if exists teachers;
create table if not exists teachers (
	id int unsigned auto_increment not null,
    firstName varchar(50) not null,
    lastName varchar(50) not null,
    email varchar(150) not null,
    sex char(1) not null,
    primary key (id)
);

-- registrar profesores
insert into teachers (firstName, lastName, email, sex) values ("Maria", "Gomez", "maria_gomez@example.com", "F");
insert into teachers (firstName, lastName, email, sex) values ("Santiago", "Barrios", "msantigo_barrios@example.com", "M");

select * from teachers;

-- Tabla de cursos
drop table if exists courses;
create table if not exists courses (
	id int unsigned auto_increment not null,
    name varchar(50) not null,
    level int unsigned default 1 not null,
    description varchar(250) null,
    teacher_id int unsigned not null,
	foreign key (teacher_id) references teachers (id),
    primary key (id)
);

describe courses;
show index from courses;

-- Llave foreanea con alter table
drop table if exists courses;
create table if not exists courses (
	id int unsigned auto_increment not null,
    name varchar(50) not null,
    level int unsigned default 1 not null,
    description varchar(250) null,
    teacher_id int unsigned not null,
    primary key (id)
);

alter table courses add constraint fk_teacher_id foreign key (teacher_id) references teachers (id);

-- crear cursos
insert into courses (name, teacher_id) values ('Ingles', 1);
insert into courses (name, teacher_id) values ('Español', 1);
insert into courses (name, teacher_id) values ('Matematicas', 2);
insert into courses (name, teacher_id) values ('Fisica', 2);
insert into courses (name, teacher_id) values ('Musica', 3);

select * from courses;

-- consulta
select t.firstName, c.name from teachers t, courses c
where t.id = c.teacher_id;



