# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla clientes.
INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	5657302641 AS NIP_clientes, 
						"jose david acosta calderin" AS nombre_clientes, 
                        "29284" AS telefono1_clientes, 
                        "36800" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        1 AS id_ciudades, 
                        "52" AS comuna_clientes, 
                        "5A" AS calle_clientes, 
                        "11-11" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 5657302641
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	3958443130 AS NIP_clientes, 
						"jorge enrique aldana quintero" AS nombre_clientes, 
                        "8846" AS telefono1_clientes, 
						"0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        2 AS id_ciudades, 
                        "48" AS comuna_clientes, 
                        "7 Norte" AS calle_clientes,
                        "22-22" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 3958443130
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	1142299405 AS NIP_clientes, 
						"andres felipe almario navarro" AS nombre_clientes,
                        "79461" AS telefono1_clientes, 
                        "17227" AS telefono2_clientes,
                        "16064" AS telefono3_clientes, 
                        3 AS id_ciudades, 
                        "44" AS comuna_clientes, 
                        "26" AS calle_clientes, 
                        "33-33" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 1142299405
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	9546814334 AS NIP_clientes,
						"luis miguel arboleda ospina" AS nombre_clientes,
                        "16064" AS telefono1_clientes, 
						"0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        4 AS id_ciudades,
                        "33" AS comuna_clientes, 
                        "45" AS calle_clientes, 
                        "44-44" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 9546814334
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	3233932166 AS NIP_clientes,
						"eilyn arce vega" AS nombre_clientes, 
                        "81997" AS telefono1_clientes,
                        "35842" AS telefono2_clientes,
                        "0" AS telefono3_clientes, 
                        5 AS id_ciudades, 
                        "124" AS comuna_clientes,
                        "3 Oeste" AS calle_clientes,
                        "55-55" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 3233932166 
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	1415440967 AS NIP_clientes,
						"santiago arroyave gallego" AS nombre_clientes, 
                        "81997" AS telefono1_clientes,
                        "0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        6 AS id_ciudades, 
                        "12" AS comuna_clientes, 
                        "15" AS calle_clientes, 
                        "66-66" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 1415440967 
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	8018422143 AS NIP_clientes,
						"juan carlos avila cobos" AS nombre_clientes,
                        "35842" AS telefono1_clientes,
                        "36295" AS telefono2_clientes, 
                        "26770" AS telefono3_clientes, 
                        7 AS id_ciudades, 
                        "36" AS comuna_clientes, 
                        "62" AS calle_clientes, 
                        "77-77" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 8018422143 
) LIMIT 1;


INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	4866230027 AS NIP_clientes,
						"juan carlos avila cobos"  AS nombre_clientes,
                        "97455" AS telefono1_clientes, 
                        "0" AS telefono2_clientes, 
                        "36605" AS telefono3_clientes, 
                        1 AS id_ciudades, 
                        "54" AS comuna_clientes, 
                        "33 Sur" AS calle_clientes, 
                        "88-88" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 4866230027
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	8298137397 AS NIP_clientes,
						"cesar freddy bedoya barrero"  AS nombre_clientes,
                        "22261" AS telefono1_clientes, 
                        "25483"AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        2 AS id_ciudades, 
                        "27" AS comuna_clientes, 
                        "45 Sur" AS calle_clientes, 
                        "99-99" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 8298137397 
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	6302657862 AS NIP_clientes,
						"carpñoma benitez espitia" AS nombre_clientes,
                        "87833" AS telefono1_clientes, 
                        "81393" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        3 AS id_ciudades, 
                        "49" AS comuna_clientes, 
                        "23 Occ." AS calle_clientes, 
                        "10-10" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 6302657862
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	2656250524 AS NIP_clientes,
						"cindy yamile borja cardona" AS nombre_clientes, 
                        "19178" AS telefono1_clientes, 
                        "66766" AS telefono2_clientes, 
                        "34649" AS telefono3_clientes, 
                        4 AS id_ciudades, 
                        "68" AS comuna_clientes, 
                        "59" AS calle_clientes, 
                        "20-20" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 2656250524
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	5240955232 AS NIP_clientes,
						"cristian fabian bustamante rojas"  AS nombre_clientes, 
                        "83317" AS telefono1_clientes, 
                        "0" AS telefono2_clientes,
                        "0" AS telefono3_clientes, 
                        5 AS id_ciudades, 
                        "49" AS comuna_clientes, 
                        "29" AS calle_clientes, 
                        "30-30" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 5240955232
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	4888960428 AS NIP_clientes,
						"rafael antonio camargo urango"  AS nombre_clientes,
                        "97852" AS telefono1_clientes, 
                        "51220" AS telefono2_clientes,
                        "85418" AS telefono3_clientes, 
                        6 AS id_ciudades, 
                        "41" AS comuna_clientes, 
                        "37" AS calle_clientes, 
                        "40-40" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 4888960428
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	5065300550 AS NIP_clientes,
						"Cliente de pruebas 14" AS nombre_clientes,
                        "32074" AS telefono1_clientes, 
                        "0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        7 AS id_ciudades, 
                        "26" AS comuna_clientes,
                        "58" AS calle_clientes, 
                        "50-50" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 5065300550
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	6951939457 AS NIP_clientes,
						"juan sebastian carreño garcia"  AS nombre_clientes,
                        "629888" AS telefono1_clientes, 
                        "37503" AS telefono2_clientes, 
                        "46888" AS telefono3_clientes,
                        1 AS id_ciudades, 
                        "135" AS comuna_clientes, 
                        "19" AS calle_clientes, 
                        "60-60" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 6951939457
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	4933059994 AS NIP_clientes,
						"luis fernando chaguendo vega" AS nombre_clientes, 
                        "69496" AS telefono1_clientes, 
                        "43295" AS telefono2_clientes, 
                        "11868" AS telefono3_clientes, 
                        2 AS id_ciudades, 
                        "2" AS comuna_clientes, 
                        "28 Norte" AS calle_clientes, 
                        "70-70" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 4933059994
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	8973959433 AS NIP_clientes,
						"wendy lorayne collante paternina" AS nombre_clientes,
                        "94267" AS telefono1_clientes, 
                        "20463" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        3 AS id_ciudades, 
                        "24" AS comuna_clientes, 
                        "6 Norte" AS calle_clientes, 
                        "80-80" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 8973959433
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	1896165954 AS NIP_clientes,
						"josue yasmany conde claros" AS nombre_clientes, 
                        "43575" AS telefono1_clientes, 
                        "23075" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        4 AS id_ciudades, 
                        "38" AS comuna_clientes, 
                        "10" AS calle_clientes, 
                        "90-90" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 1896165954 
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	2395163500 AS NIP_clientes,
						"alejandro corredor parra" AS nombre_clientes, 
                        "46526" AS telefono1_clientes, 
                        "60378" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        5 AS id_ciudades, 
                        "3" AS comuna_clientes, 
                        "1" AS calle_clientes, 
                        "9-9" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 2395163500  
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	4104876655 AS NIP_clientes,
						"harold marcelo criollo bolivar" AS nombre_clientes, 
                        "45950" AS telefono1_clientes, 
                        "37268" AS telefono2_clientes, 
                        "90420" AS telefono3_clientes, 
                        6 AS id_ciudades, 
                        "56" AS comuna_clientes, 
                        "28" AS calle_clientes, 
                        "31-94" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 4104876655  
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	3225687287 AS NIP_clientes,
						"heycmar danilo cucas mora" AS nombre_clientes, 
                        "80753" AS telefono1_clientes, 
                        "0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        7 AS id_ciudades, 
                        "6" AS comuna_clientes, 
                        "8" AS calle_clientes, 
                        "1-4" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 3225687287 
) LIMIT 1;

#Se muestran todos los datos de la tabla clientes para verificar su contenido.
SELECT * FROM clientes;