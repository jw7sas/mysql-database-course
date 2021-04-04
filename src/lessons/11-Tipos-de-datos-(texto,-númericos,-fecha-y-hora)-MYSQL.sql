-- tipos de datos texto
/*
	varchar -> espacio en memoria variable
	char -> espacio de memoria fijo (relleno espacios en blanco)
*/
-- tipos de datos númericos
/*
	smallint -> valores sin decimales desde (–32.767 al 32.767)
	int -> valores sin decimales desde (-2.147.483.648 al 2.147.483.647)
	bigint -> valores enteros desde (-9223372036854775808 al 9223372036854775807)
	decimal -> valores para preservar una precisión exacta
	float -> tipos de datos númericos aproximados
*/
-- tipos de datos de fecha y hora
/*
	time -> hora
    date -> fecha - yyyy-MM-dd
    datetime -> fecha y hora
    DATETIME DEFAULT CURRENT_TIMESTAMP -> fecha y hora automatica al crear un registro en la tablaa
    DATETIME ON UPDATE CURRENT_TIMESTAMP -> fecha y hora que se actualiza automaticamente al actualizar un registro en la tabla
*/

-- tipo de dato verdadero o falso
/*
	boolean -> (true or false) - (1 or 0)
*/

use asgeek_orders;

-- crear tabla para verificar los tipos de datos
create table typeOfData(
	id int unsigned not null auto_increment,
    name varchar(50) not null,
    sex char(1) not null,
    amount smallint not null,
    cellphone bigint not null,
    price decimal(7,2) not null,
    grade float(4,2) not null,
    startTime time not null,
    birthDate date not null,
    detailDate datetime not null,
    state boolean default false not null, 
    currentAt datetime default current_timestamp not null,
    updateAt datetime on update current_timestamp null,
    primary key (id)
);

drop table if exists typeOfData;
-- verificar tabla
describe typeOfData;
-- crear registro valido
insert into typeOfData
(name,sex,amount, cellphone,price,grade,startTime,
birthDate, detailDate, state)
values
('Fernanda Maria', 'M', 120, 3154572356, 15000.32, 9.2, '12:00:00',
'1999-10-22', '2021-04-01 12:12:12', true);

-- seleccionar registros
select * from typeOfData;

-- validaciones
insert into typeOfData
(name,sex,amount, cellphone,price,grade,startTime,
birthDate, detailDate)
values
('Fernanda Maria', 'M', 32767, 3154572356, 15000, 12.2, '12:00:00',
'1999-10-22', '2021-04-01 12:12:12');
