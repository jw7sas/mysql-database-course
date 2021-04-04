-- consultas con las funciones de control de flujo
-- IF and WHEN
-- if sin consulta para entender funcionamiento básico

-- # command: select if(`Condicion`, `SI`, `NO`) AS `alias_condicion` from `nombre_tabla`;
select if(1 > 0, 'SI', 'NO') as condicion_if;
select if(1 > 5, 'SI', 'NO') as condicion_if;

-- if aplicado en una consulta
select * from products;
select sum(if(unitsInStock > 010, 1, 0)) as cantidad_mayor_010, sum(if(unitsInStock > 050, 1, 0)) as cantidad_mayor_050 from products;


-- WHEN sin consulta para entender funcionamiento básico
-- 000 -> Velocidad
-- 001 -> Resistencia
-- 002 -> Agilidad 

-- # command: CASE field_x WHEN `coincidencia` THEN `resultado` else `otro resultado` END AS `alias_when` FROM `nombre_tabla`;

select 
	skillCode,
    CASE skillCode when '000' then 'Velocidad' when '001' then 'Resistencia' when '002' then 'Agilidad' else 'Ninguna' end AS habilidad
from (select '001' as skillCode UNION select'002' as skillCode UNION select'009' as skillCode) as S;

-- WHEN aplicado a una consulta
select 
	productName,
	category_id, 
    CASE category_id WHEN 11 THEN 'Celulares' ELSE 'Otro' END AS Categoria 
from products;

