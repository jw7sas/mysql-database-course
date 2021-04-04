-- Funciones de agrupamiento en Mysql
select productName, unitPrice, unitsInStock from products;

-- Función count registers
-- # keyword: count - contar registros
select count(*) as cantidad from products;

-- Función max
-- # keyword: max - Obtener el valor máximo de un campo
select productName, max(unitPrice) precio_maximo, unitsInStock from products;

-- Función min 
-- # keyword: min - Obtener el valor minimo de un campo
select productName, min(unitPrice) precio_minimo, unitsInStock from products;

-- Función sum - sumar precios
-- # keyword: sum - sumar lo valores de un campo
select productName, sum(unitPrice) suma_de_precios, unitsInStock from products;

-- Función avg promedio precios
-- # keyword: avg - obtener el promedio de un campo
select productName, avg(unitPrice) promedio_precio, unitsInStock from products;
