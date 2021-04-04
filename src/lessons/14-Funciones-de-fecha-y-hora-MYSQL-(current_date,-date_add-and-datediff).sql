-- *******************************
-- Fechas
-- *******************************

-- Función current_date
-- # keyword: current_date - Obtener la fecha actual
select current_date() as fecha_actual;

-- Función date_add
-- # keyword: date_add - Agregar valores a una fecha
select orderDate, date_add(orderDate, interval 5 day) order_mas_5_dias  from orders limit 10;
select orderDate, date_add(orderDate, interval 1 month) order_mas_1_mes from orders limit 10;
select orderDate, date_add(orderDate, interval 1 year) order_mas_1_year from orders limit 10;

-- Función datediff
-- # keyword: datediff - Obtener diferencia entre fechas (Mayor, Menor)
select orderDate, requiredDate, datediff(requiredDate, orderDate) diferencia_fechas  from orders limit 10;

-- Función TIMESTAMPDIFF
-- # keyword: TIMESTAMPDIFF - restar fechas con valor especifico (Value, Mayor, Menor)
select orderDate, requiredDate, TIMESTAMPDIFF(MONTH, requiredDate, orderDate) diferencia_fechas_valor_especifco  from orders limit 10;

-- *******************************
-- Horas
-- *******************************

-- Función ADDTIME
-- # keyword: ADDTIME - sumar horas
select ADDTIME('04:30:00', '00:30:00') as sumar_horas;
-- Función TIMEDIFF
-- # keyword: TIMEDIFF - restar horas
select TIMEDIFF('12:30:00', '05:30:00') as restar_horas;


select HOUR(TIMEDIFF('12:30:00', '05:30:00')) as restar_horas_h;
select MINUTE(TIMEDIFF('12:50:00', '05:40:00')) as restar_horas_m; 