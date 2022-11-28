# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla productos.
INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Microsoft Windows 11" AS nombre_productos, 
						"250000" AS precio_productos,
                        "50" AS stock_productos,
                        "54637281" AS NIP_proveedores,
                        "13" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Windows 11"
) LIMIT 1;

# Se insertan los datos de prueba en la tabla productos.
INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Microsoft Office 2021" AS nombre_productos, 
						"200000" AS precio_productos,
                        "50" AS stock_productos,
                        "333666999" AS NIP_proveedores,
                        "13" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Microsoft Office 2021"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Microsoft Office 2021" AS nombre_productos, 
						"200000" AS precio_productos,
                        "50" AS stock_productos,
                        "333666999" AS NIP_proveedores,
                        "13" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Microsoft Office 2021"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Adobe PhotoShop" AS nombre_productos, 
						"180000" AS precio_productos,
                        "30" AS stock_productos,
                        "8776665555" AS NIP_proveedores,
                        "13" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Adobe PhotoShop"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Eset NOD 32" AS nombre_productos, 
						"120000" AS precio_productos,
                        "25" AS stock_productos,
                        "212223242" AS NIP_proveedores,
                        "13" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Eset NOD 32"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Autocad 2022" AS nombre_productos, 
						"300000" AS precio_productos,
                        "10" AS stock_productos,
                        "627364590" AS NIP_proveedores,
                        "13" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Autocad 2022"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"GTA V" AS nombre_productos, 
						"115000" AS precio_productos,
                        "20" AS stock_productos,
                        "987654321" AS NIP_proveedores,
                        "13" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "GTA V"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"FIFA 22" AS nombre_productos, 
						"98500" AS precio_productos,
                        "35" AS stock_productos,
                        "337744665" AS NIP_proveedores,
                        "13" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "FIFA 22"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Teclado Samurai Maxel USB" AS nombre_productos, 
						"120000" AS precio_productos,
                        "10" AS stock_productos,
                        "123456789" AS NIP_proveedores,
                        "14" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Teclado Samurai Maxel USB"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Teclado Genius Bluetooth" AS nombre_productos, 
						"85000" AS precio_productos,
                        "16" AS stock_productos,
                        "951623847" AS NIP_proveedores,
                        "14" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Teclado Genius Bluetooth"
) LIMIT 1;

SELECT * FROM (SELECT 	"Teclado LogiTech F50 BlueTooth" AS nombre_productos, 
						"145000" AS precio_productos,
                        "5" AS stock_productos,
                        "554321077" AS NIP_proveedores,
                        "14" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Teclado LogiTech F50 BlueTooth"
) LIMIT 1;

#Se muestran todos los datos de la tabla productos para verificar su contenido.
SELECT * FROM productos;