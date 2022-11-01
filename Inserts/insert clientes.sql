# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla clientes.
INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	11111111111 AS NIP_clientes, 
						"Cliente de pruebas 1" AS nombre_clientes, 
                        "111111" AS telefono1_clientes, 
                        "191919" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 1" AS ciudad_clientes, 
                        "52" AS comuna_clientes, 
                        "5A" AS calle_clientes, 
                        "11-11" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 11111111111
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	22222222222 AS NIP_clientes, 
						"Cliente de pruebas 2" AS nombre_clientes, 
                        "222222" AS telefono1_clientes, 
						"0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 3" AS ciudad_clientes, 
                        "48" AS comuna_clientes, 
                        "7 Norte" AS calle_clientes,
                        "22-22" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 22222222222
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	33333333333 AS NIP_clientes, 
						"Cliente de pruebas 3" AS nombre_clientes,
                        "333333" AS telefono1_clientes, 
                        "393939" AS telefono2_clientes,
                        "123456" AS telefono3_clientes, 
                        "Ciudad pruebas 2" AS ciudad_clientes, 
                        "44" AS comuna_clientes, 
                        "26" AS calle_clientes, 
                        "33-33" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 33333333333
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	44444444444 AS NIP_clientes,
						"Cliente de pruebas 4" AS nombre_clientes,
                        "444444" AS telefono1_clientes, 
						"0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 4" AS ciudad_clientes,
                        "33" AS comuna_clientes, 
                        "45" AS calle_clientes, 
                        "44-44" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 44444444444
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	55555555555 AS NIP_clientes,
						"Cliente de pruebas 5" AS nombre_clientes, 
                        "555555" AS telefono1_clientes,
                        "595959" AS telefono2_clientes,
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 5" AS ciudad_clientes, 
                        "124" AS comuna_clientes,
                        "3 Oeste" AS calle_clientes,
                        "55-55" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 55555555555
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	66666666666 AS NIP_clientes,
						"Cliente de pruebas 6" AS nombre_clientes, 
                        "666666" AS telefono1_clientes,
                        "0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 4" AS ciudad_clientes, 
                        "12" AS comuna_clientes, 
                        "15" AS calle_clientes, 
                        "66-66" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 66666666666
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	77777777777 AS NIP_clientes,
						"Cliente de pruebas 7" AS nombre_clientes,
                        "777777" AS telefono1_clientes,
                        "797979" AS telefono2_clientes, 
                        "789101" AS telefono3_clientes, 
                        "Ciudad pruebas 1" AS ciudad_clientes, 
                        "36" AS comuna_clientes, 
                        "62" AS calle_clientes, 
                        "77-77" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 77777777777
) LIMIT 1;


INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	88888888888 AS NIP_clientes,
						"Cliente de pruebas 8"  AS nombre_clientes,
                        "888888" AS telefono1_clientes, 
                        "0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 5" AS ciudad_clientes, 
                        "54" AS comuna_clientes, 
                        "33 Sur" AS calle_clientes, 
                        "88-88" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 88888888888
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	99999999999 AS NIP_clientes,
						"Cliente de pruebas 9"  AS nombre_clientes,
                        "999999" AS telefono1_clientes, 
                        "909090"AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 3" AS ciudad_clientes, 
                        "27" AS comuna_clientes, 
                        "45 Sur" AS calle_clientes, 
                        "99-99" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 99999999999
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	10101010101 AS NIP_clientes,
						"Cliente de pruebas 10" AS nombre_clientes,
                        "101010" AS telefono1_clientes, 
                        "0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 5" AS ciudad_clientes, 
                        "49" AS comuna_clientes, 
                        "23 Occ." AS calle_clientes, 
                        "10-10" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 10101010101
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	20202020202 AS NIP_clientes,
						"Cliente de pruebas 11" AS nombre_clientes, 
                        "202020" AS telefono1_clientes, 
                        "292929" AS telefono2_clientes, 
                        "111213" AS telefono3_clientes, 
                        "Ciudad pruebas 2" AS ciudad_clientes, 
                        "68" AS comuna_clientes, 
                        "59" AS calle_clientes, 
                        "20-20" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 20202020202
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	30303030303 AS NIP_clientes,
						"Cliente de pruebas 12"  AS nombre_clientes, 
                        "303030" AS telefono1_clientes, 
                        "0" AS telefono2_clientes,
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 4" AS ciudad_clientes, 
                        "49" AS comuna_clientes, 
                        "29" AS calle_clientes, 
                        "30-30" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 30303030303
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	40404040404 AS NIP_clientes,
						"Cliente de pruebas 13"  AS nombre_clientes,
                        "404040" AS telefono1_clientes, 
                        "494949" AS telefono2_clientes,
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 1" AS ciudad_clientes, 
                        "41" AS comuna_clientes, 
                        "37" AS calle_clientes, 
                        "40-40" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 40404040404
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	50505050505 AS NIP_clientes,
						"Cliente de pruebas 14" AS nombre_clientes,
                        "505050" AS telefono1_clientes, 
                        "0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 4" AS ciudad_clientes, 
                        "26" AS comuna_clientes,
                        "58" AS calle_clientes, 
                        "50-50" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 50505050505
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	60606060606 AS NIP_clientes,
						"Cliente de pruebas 15"  AS nombre_clientes,
                        "696969" AS telefono1_clientes, 
                        "606060" AS telefono2_clientes, 
                        "141516" AS telefono3_clientes,
                        "Ciudad pruebas 3" AS ciudad_clientes, 
                        "135" AS comuna_clientes, 
                        "19" AS calle_clientes, 
                        "60-60" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 60606060606
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	70707070707 AS NIP_clientes,
						"Cliente de pruebas 16" AS nombre_clientes, 
                        "707070" AS telefono1_clientes, 
                        "0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 4" AS ciudad_clientes, 
                        "2" AS comuna_clientes, 
                        "28 Norte" AS calle_clientes, 
                        "70-70" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 70707070707
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	80808080808 AS NIP_clientes,
						"Cliente de pruebas 17" AS nombre_clientes,
                        "808080" AS telefono1_clientes, 
                        "898989" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 2" AS ciudad_clientes, 
                        "24" AS comuna_clientes, 
                        "6 Norte" AS calle_clientes, 
                        "80-80" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 80808080808
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, ciudad_clientes, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	90909090909 AS NIP_clientes,
						"Cliente de pruebas 18" AS nombre_clientes, 
                        "909090" AS telefono1_clientes, 
                        "0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        "Ciudad pruebas 1" AS ciudad_clientes, 
                        "38" AS comuna_clientes, 
                        "10" AS calle_clientes, 
                        "90-90" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 90909090909
) LIMIT 1;

#Se muestran todos los datos de la tabla clientes para verificar su contenido.
SELECT * FROM clientes;