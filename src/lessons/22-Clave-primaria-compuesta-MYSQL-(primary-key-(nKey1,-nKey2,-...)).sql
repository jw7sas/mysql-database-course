-- # keyword: primary key (field_x, field_x, field_x) - llave compuesta

-- crear tabla con llave compuesta - normalmente las llaves compuestas se realizan con dos llaves foreneas
drop table if exists user_has_role;
create table if not exists user_has_role(
	user_id int unsigned not null,
    role_id int unsigned not null,
    primary key (user_id, role_id)
);

describe user_has_role;
-- Users
-- ID NAME
-- 1  PEPE
-- 2 MARIA

-- Roles
-- ID ROLE
-- 1 ADMIN
-- 2 CLIENT

select * from user_has_role;
-- registrar campos
insert into user_has_role(user_id, role_id) values (1, 1);
insert into user_has_role(user_id, role_id) values (1, 2);
insert into user_has_role(user_id, role_id) values (1, 1);