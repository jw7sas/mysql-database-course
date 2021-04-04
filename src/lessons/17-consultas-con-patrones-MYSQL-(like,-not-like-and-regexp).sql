-- # Command: select * from `nombre_tabla` where field_x like 'value_x';
-- # Command: select * from `nombre_tabla` where field_x not like 'value_x';
-- # Command: select * from `nombre_tabla` where field_x regexp 'value_x';
-- # Command: select * from `nombre_tabla` where field_x not regexp 'value_x';

-- consultas con like
select * from customers limit 10;

select * from customers where email = 'luis1_';

select * from customers where email like 'luis1_%';
select * from customers where email like '%uis1_%';
select * from customers where email like '%_albert@gmail.com';

-- not Like

select * from customers where email not like 'luis1_%';
select * from customers where email not like '%uis1_%';
select * from customers where email not like '%_albert@gmail.com';

-- Regexp
-- cliente que contengan la cadena 'n@gmail'
select * from customers 
where email regexp 'n@gmail';

-- cliente que contengan la cadena al menos una 'v' o una 'j'
select * from customers 
where email regexp '[vj]';

-- cliente que no contengan la cadena al menos una 'v' o una 'j' o una 'e'
select * from customers 
where email not regexp '[vje]';

-- cliente que contengan cualquiera de las letras de la U,W,X,Y,Z
select * from customers
where firstName regexp '[u-z]';

-- cliente que empiecen por A
select * from customers
where firstName regexp '^A';

-- cliente que terminen con CO
select * from customers
where firstName regexp 'CO$';

-- cliente que tenga un F dos caracteres y una N
select * from customers
where firstName regexp 'f..n';

-- cliente que tengan 4 caracteres exactamente
select * from customers
where firstName regexp '^....$';

-- cliente que tengan por lo menos 9 caracteres 
select * from customers
where firstName regexp '.........';

-- cliente que tengan por lo menos 2 letras a
select * from customers
where firstName regexp 'a.*a';