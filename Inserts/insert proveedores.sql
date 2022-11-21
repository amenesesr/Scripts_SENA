# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla proveedores.
INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT 	123456789 AS NIP_proveedores,
			"Techno Plus" AS nombre_proveedores,
                        "www.techPlus.com" AS web_proveedores, 
                        "111111111" AS telefono_proveedores, 
                        "Calle 123 # 45-67" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 123456789
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT 	987654321 AS NIP_proveedores,
			"Modern Dev" AS nombre_proveedores,
                        "www.MDev.com" AS web_proveedores,
                        "222222222" AS telefono_proveedores,
                        "Carrera 89 # 12-34" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 987654321
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT 	951623847 AS NIP_proveedores,
			"CompuMaster SA" AS nombre_proveedores,
                        "www.CompuMaster.com" AS web_proveedores,
                        "333333333" AS telefono_proveedores,
                        "Diag 56 #78-90" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 951623847
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT 	119922883 AS NIP_proveedores,
			"Ultimate Parts" AS nombre_proveedores,
                        "www.Uparts.com" AS web_proveedores,
                        "11119999" AS telefono_proveedores,
                        "Calle 321 # 54-76" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 119922883 
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT 	337744665 AS NIP_proveedores,
			"Magic Control" AS nombre_proveedores,
                        "www.controlmagic.com" AS web_proveedores,
                        "22228888" AS telefono_proveedores, 
                        "Carrera 78 # 23-15" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 337744665 
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT 	54637281 AS NIP_proveedores,
			"TronicFix" AS nombre_proveedores,
                        "www.fixit.com" AS web_proveedores,
                        "33337777" AS telefono_proveedores, 
                        "Transv 98 # 47-26" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 54637281 
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores) 
SELECT * FROM (SELECT	627364590 AS NIP_proveedores,
			"Super Baratos" AS nombre_proveedores,
                        "www.Muy_Baratos.com" AS web_proveedores,
                        "44446666" AS telefono_proveedores, 
                        "Calle 19 # 43-26" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 627364590 
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores)
SELECT * FROM (SELECT 	192837465 AS NIP_proveedores, 
			"Retro Devices" AS nombre_proveedores,
                        "www.rdevices.com" AS web_proveedores,
                        "55550000" AS telefono_proveedores, 
                        "Carrera 3 # 3-11" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 192837465
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores)
SELECT * FROM (SELECT 	333666999 AS NIP_proveedores, 
			"MegaDrives" AS nombre_proveedores,
                        "www.megaDrives.com" AS web_proveedores,
                        "22990011" AS telefono_proveedores, 
                        "Diag 12 #37-7" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 333666999 
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores)
SELECT * FROM (SELECT 	212223242 AS NIP_proveedores,
			"Hard Gaming" AS nombre_proveedores,
                        "www.hardgaming.com" AS web_proveedores,
                        "334422557" AS telefono_proveedores, 
                        "Transv 93 # 21-48" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 212223242
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores)
SELECT * FROM (SELECT 	554321077 AS NIP_proveedores,
			"New Era" AS nombre_proveedores,
                        "www.nuevaera.com" AS web_proveedores,
                        "88877766" AS telefono_proveedores, 
                        "Calle 123 # 45-67" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 554321077
) LIMIT 1;

INSERT INTO proveedores (NIP_proveedores, nombre_proveedores, web_proveedores, telefono_proveedores, direccion_proveedores)
SELECT * FROM (SELECT 	8776665555 AS NIP_proveedores, 
			"Final Job" AS nombre_proveedores,
                        "www.fjob.com" AS web_proveedores,
                        "9911223300" AS telefono_proveedores, 
                        "Carrera 1 # 22-44" AS direccion_proveedores) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_proveedores FROM proveedores WHERE NIP_proveedores = 8776665555
) LIMIT 1;

#Se muestran todos los datos de la tabla para verificar su contenido.
SELECT * FROM proveedores;