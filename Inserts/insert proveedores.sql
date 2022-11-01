# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla proveedores.
INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT 	123456789 AS NIP_proveedores,
			"Proveedor de Pruebas 1" AS nombre_proveedores,
                        "www.proveedordepruebas1.com" AS web_proveedores, 
                        "111111111" AS telefono_proveedores, 
                        "Calle 123 # 45-67" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 123456789
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT 	987654321 AS NIP_proveedores,
			"Proveedor de Pruebas 2" AS nombre_proveedores,
                        "www.proveedordepruebas2.com" AS web_proveedores,
                        "222222222" AS telefono_proveedores,
                        "Carrera 89 # 12-34" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 987654321
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT 	951623847 AS NIP_proveedores,
			"Proveedor de Pruebas 3" AS nombre_proveedores,
                        "www.proveedordepruebas3.com" AS web_proveedores,
                        "333333333" AS telefono_proveedores,
                        "Diag 56 #78-90" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 951623847
) LIMIT 1;

# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla proveedores.
INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT 	123456789 AS NIP_proveedores,
			"Proveedor de Pruebas 1" AS nombre_proveedores,
                        "www.proveedordepruebas1.com" AS web_proveedores,
                        "111111111" AS telefono_proveedores,
                        "Calle 123 # 45-67" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 123456789
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT 	987654321 AS NIP_proveedores,
			"Proveedor de Pruebas 2" AS nombre_proveedores,
                        "www.proveedordepruebas2.com" AS web_proveedores,
                        "222222222" AS telefono_proveedores, 
                        "Carrera 89 # 12-34" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 987654321
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT 	592635487 AS NIP_proveedores,
			"Proveedor de Pruebas 4" AS nombre_proveedores,
                        "www.proveedordepruebas4.com" AS web_proveedores,
                        "444444444" AS telefono_proveedores, 
                        "Transv 12 # 34-56" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 592635487
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT	321654987 AS NIP_proveedores,
			"Proveedor de Pruebas 5" AS nombre_proveedores,
                        "www.proveedordepruebas5.com" AS web_proveedores,
                        "555555555" AS telefono_proveedores, 
                        "Calle 321 # 76-54" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 321654987
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores)
SELECT * FROM (SELECT 	789456123 AS NIP_proveedores, 
			"Proveedor de Pruebas 6" AS nombre_proveedores,
                        "www.proveedordepruebas6.com" AS web_proveedores,
                        "666666666" AS telefono_proveedores, 
                        "Carrera 98 # 43-21" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 789456123
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores)
SELECT * FROM (SELECT 	963852741 AS NIP_proveedores, 
			"Proveedor de Pruebas 7" AS nombre_proveedores,
                        "www.proveedordepruebas7.com" AS web_proveedores,
                        "777777777" AS telefono_proveedores, 
                        "Diag 65 #98-70" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 963852741
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores)
SELECT * FROM (SELECT 	369258147 AS NIP_proveedores,
			"Proveedor de Pruebas 8" AS nombre_proveedores,
                        "www.proveedordepruebas8.com" AS web_proveedores,
                        "888888888" AS telefono_proveedores, 
                        "Transv 21 # 65-43" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 369258147
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores)
SELECT * FROM (SELECT 	741963852 AS NIP_proveedores,
			"Proveedor de Pruebas 9" AS nombre_proveedores,
                        "www.proveedordepruebas9.com" AS web_proveedores,
                        "999999999" AS telefono_proveedores, 
                        "Calle 123 # 45-67" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 741963852
) LIMIT 1;


INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores)
SELECT * FROM (SELECT 	741961234 AS NIP_proveedores, 
			"Proveedor de Pruebas 10" AS nombre_proveedores,
                        "www.proveedordepruebas10.com" AS web_proveedores,
                        "123456789" AS telefono_proveedores, 
                        "Carrera 89 # 12-34" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 741961234
) LIMIT 1;

#Se muestran todos los datos de la tabla para verificar su contenido.
SELECT * FROM proveedores;