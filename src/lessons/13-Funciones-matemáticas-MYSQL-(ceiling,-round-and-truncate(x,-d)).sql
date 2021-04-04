-- Cargar la base de datos del Script

-- Función ceiling 
-- # keyword: ceiling - redondear hacia arriba
select productName, unitPrice, ceiling(unitPrice) redondear_arriba from products;

-- Función floor 
-- # keyword: floor - redondear hacia arriba
select productName, unitPrice, floor(unitPrice) redondear_abajo from products;

-- Función round 
-- # keyword: round - redondear más cercano
select productName, unitPrice, round(unitPrice) redondear_cerca from products;

-- Función truncate 
-- # keyword: truncate - redondear hacia 0 un número
select productName, unitPrice, truncate(unitPrice, -4) redondear_cero from products;

-- Función ABS 
-- # keyword: ABS - obtener el valor Absoluto
select -2 as Negativo, ABS(-2) as  abs_negativo;