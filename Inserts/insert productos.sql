# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla productos.
INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Microsoft Windows 11" AS nombre_productos, 
						"250000" AS precio_productos,
                        "50" AS stock_productos,
                        "54637281" AS NIP_proveedores,
                        "1" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Windows 11"
) LIMIT 1;

# Se insertan los datos de prueba en la tabla productos.
INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Microsoft Office 2021" AS nombre_productos, 
						"200000" AS precio_productos,
                        "50" AS stock_productos,
                        "333666999" AS NIP_proveedores,
                        "1" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Microsoft Office 2021"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Adobe PhotoShop" AS nombre_productos, 
						"180000" AS precio_productos,
                        "30" AS stock_productos,
                        "8776665555" AS NIP_proveedores,
                        "1" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Adobe PhotoShop"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Eset NOD 32" AS nombre_productos, 
						"120000" AS precio_productos,
                        "25" AS stock_productos,
                        "212223242" AS NIP_proveedores,
                        "1" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Eset NOD 32"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Autocad 2022" AS nombre_productos, 
						"300000" AS precio_productos,
                        "10" AS stock_productos,
                        "627364590" AS NIP_proveedores,
                        "1" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Autocad 2022"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"GTA V" AS nombre_productos, 
						"115000" AS precio_productos,
                        "20" AS stock_productos,
                        "987654321" AS NIP_proveedores,
                        "1" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "GTA V"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"FIFA 22" AS nombre_productos, 
						"98500" AS precio_productos,
                        "35" AS stock_productos,
                        "337744665" AS NIP_proveedores,
                        "1" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "FIFA 22"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Teclado Samurai Maxell USB" AS nombre_productos, 
						"120000" AS precio_productos,
                        "10" AS stock_productos,
                        "123456789" AS NIP_proveedores,
                        "2" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Teclado Samurai Maxel USB"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Teclado Genius Bluetooth" AS nombre_productos, 
						"85000" AS precio_productos,
                        "16" AS stock_productos,
                        "951623847" AS NIP_proveedores,
                        "2" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Teclado Genius Bluetooth"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Teclado LogiTech F50 BlueTooth" AS nombre_productos, 
						"145000" AS precio_productos,
                        "5" AS stock_productos,
                        "554321077" AS NIP_proveedores,
                        "2" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Teclado LogiTech F50 BlueTooth"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Teclado Ergonomics Tx Bluetooth" AS nombre_productos, 
						"75000" AS precio_productos,
                        "19" AS stock_productos,
                        "627364590" AS NIP_proveedores,
                        "2" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Teclado Ergonomics Tx Bluetooth"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Teclado GamerX NextG Bluetooth" AS nombre_productos, 
						"115000" AS precio_productos,
                        "3" AS stock_productos,
                        "951623847" AS NIP_proveedores,
                        "2" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Teclado GamerX NextG Bluetooth"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Teclado Raptor V1 USB" AS nombre_productos, 
						"50000" AS precio_productos,
                        "15" AS stock_productos,
                        "987654321" AS NIP_proveedores,
                        "2" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Teclado Raptor V1 USB"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Mouse Logitech T20" AS nombre_productos, 
						"110000" AS precio_productos,
                        "10" AS stock_productos,
                        "119922883" AS NIP_proveedores,
                        "3" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Mouse Logitech T20"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Mouse Genius Mini" AS nombre_productos, 
						"25000" AS precio_productos,
                        "20" AS stock_productos,
                        "54637281" AS NIP_proveedores,
                        "3" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Mouse Genius Mini"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Mouse Microsoft Works" AS nombre_productos, 
						"85000" AS precio_productos,
                        "14" AS stock_productos,
                        "212223242" AS NIP_proveedores,
                        "3" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Mouse Microsoft Works"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Mouse Maxell Bluetooth" AS nombre_productos, 
						"53500" AS precio_productos,
                        "22" AS stock_productos,
                        "212223242" AS NIP_proveedores,
                        "3" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Mouse Maxell Bluetooth" 
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Mouse NIA Basic USB" AS nombre_productos, 
						"23000" AS precio_productos,
                        "18" AS stock_productos,
                        "554321077" AS NIP_proveedores,
                        "3" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Mouse NIA Basic USB" 
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Mouse Falcon V3 USB" AS nombre_productos, 
						"45000" AS precio_productos,
                        "10" AS stock_productos,
                        "54637281" AS NIP_proveedores,
                        "3" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Mouse Falcon V3 USB"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Multifuncional Epson L100" AS nombre_productos, 
						"230000" AS precio_productos,
                        "5" AS stock_productos,
                        "123456789" AS NIP_proveedores,
                        "4" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Multifuncional Epson L100"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Scanner PrintMaster v5" AS nombre_productos, 
						"150000" AS precio_productos,
                        "5" AS stock_productos,
                        "951623847" AS NIP_proveedores,
                        "4" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Scanner PrintMaster 100"
) LIMIT 1;


INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Asus T-Master 27'' " AS nombre_productos, 
						"350000" AS precio_productos,
                        "6" AS stock_productos,
                        "192837465" AS NIP_proveedores,
                        "5" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Asus T-Master 27'' "
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Samusung SyncScreen 32'' " AS nombre_productos, 
						"450000" AS precio_productos,
                        "15" AS stock_productos,
                        "212223242" AS NIP_proveedores,
                        "5" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Samusung SyncScreen 32'' "
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"LG NewVista 27'' " AS nombre_productos, 
						"380000" AS precio_productos,
                        "13" AS stock_productos,
                        "8776665555" AS NIP_proveedores,
                        "5" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "LG NewVista 27'' "
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"SSD interno Kingston SA400S37/240G negro" AS nombre_productos, 
						"120000" AS precio_productos,
                        "50" AS stock_productos,
                        "627364590" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "SSD interno Kingston SA400S37/240G negro"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Disco duro interno Toshiba MQ04ABF Series MQ04ABF100 1TB" AS nombre_productos, 
						"145000" AS precio_productos,
                        "50" AS stock_productos,
                        "554321077" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Disco duro interno Toshiba MQ04ABF Series MQ04ABF100 1TB"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Disco duro interno Toshiba MQ04ABF Series MQ04ABF100 1TB" AS nombre_productos, 
						"158000" AS precio_productos,
                        "45" AS stock_productos,
                        "554321077" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Disco duro interno Toshiba MQ04ABF Series MQ04ABF100 1TB"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Disco sólido SSD interno Crucial CT1000P2SSD8 1TB" AS nombre_productos, 
						"340000" AS precio_productos,
                        "15" AS stock_productos,
                        "192837465" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Disco sólido SSD interno Crucial CT1000P2SSD8 1TB"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Disco duro externo Seagate Expansion STEA1000400 1TB negro" AS nombre_productos, 
						"190000" AS precio_productos,
                        "32" AS stock_productos,
                        "337744665" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Disco duro externo Seagate Expansion STEA1000400 1TB negro"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Disco duro externo Adata HD710 Pro AHD710P-1TU31 1TB amarillo" AS nombre_productos, 
						"398000" AS precio_productos,
                        "16" AS stock_productos,
                        "627364590" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Disco duro externo Adata HD710 Pro AHD710P-1TU31 1TB amarillo"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Memoria RAM Premier color verde 8GB 1 Adata AD4S320088G22-SGN" AS nombre_productos, 
						"139500" AS precio_productos,
                        "39" AS stock_productos,
                        "123456789" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Memoria RAM Premier color verde 8GB 1 Adata AD4S320088G22-SGN"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Memoria RAM XLR8 gamer color negro/rojo 8GB 1 PNY MD8GD43200XR" AS nombre_productos, 
						"145500" AS precio_productos,
                        "27" AS stock_productos,
                        "119922883" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Memoria RAM XLR8 gamer color negro/rojo 8GB 1 PNY MD8GD43200XR"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Memoria RAM Fury DDR3 gamer color azul 8GB 1 HyperX HX316C10F/8" AS nombre_productos, 
						"149500" AS precio_productos,
                        "43" AS stock_productos,
                        "627364590" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Memoria RAM Fury DDR3 gamer color azul 8GB 1 HyperX HX316C10F/8"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Memoria RAM color negro 8GB 1 Yongxinsheng DDR31600D3C11/8G" AS nombre_productos, 
						"163500" AS precio_productos,
                        "31" AS stock_productos,
                        "333666999" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Memoria RAM color negro 8GB 1 Yongxinsheng DDR31600D3C11/8G"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Procesador gamer AMD Ryzen 5 5600X 100-100000065BOX de 6 núcleos y 4.6GHz de frecuencia" AS nombre_productos, 
						"1120000" AS precio_productos,
                        "5" AS stock_productos,
                        "8776665555" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Procesador gamer AMD Ryzen 5 5600X 100-100000065BOX de 6 núcleos y 4.6GHz de frecuencia"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Procesador Intel Core i5-12400 BX8071512400 de 6 núcleos y 4.4GHz de frecuencia con gráfica integrada" AS nombre_productos, 
						"1160000" AS precio_productos,
                        "5" AS stock_productos,
                        "554321077" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Procesador Intel Core i5-12400 BX8071512400 de 6 núcleos y 4.4GHz de frecuencia con gráfica integrada"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Fuente de poder para PC Redragon RPGS GC-PS002 600W negra 100V/240V" AS nombre_productos, 
						"268000" AS precio_productos,
                        "35" AS stock_productos,
                        "333666999" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Fuente de poder para PC Redragon RPGS GC-PS002 600W negra 100V/240V"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Fuente De Poder Atx 750wa 24 Pin Unitec Para Pc Torre Equipo" AS nombre_productos, 
						"38500" AS precio_productos,
                        "35" AS stock_productos,
                        "333666999" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Fuente De Poder Atx 750wa 24 Pin Unitec Para Pc Torre Equipo"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Board Gigabyte Ab450m Ds3h" AS nombre_productos, 
						"446000" AS precio_productos,
                        "21" AS stock_productos,
                        "54637281" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Board Gigabyte Ab450m Ds3h"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Board Asus Prime A320m-k Socket Am4 Hdmi Ddr4" AS nombre_productos, 
						"330000" AS precio_productos,
                        "8" AS stock_productos,
                        "627364590" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Board Asus Prime A320m-k Socket Am4 Hdmi Ddr4"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Board H61 Foxconn Tercera Generación Intel Nueva" AS nombre_productos, 
						"285000" AS precio_productos,
                        "16" AS stock_productos,
                        "192837465" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Board H61 Foxconn Tercera Generación Intel Nueva"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Tarjeta de video Nvidia MSI GeForce 700 Series GT 730 N730K-2GD3H/LPV1 2GB" AS nombre_productos, 
						"320000" AS precio_productos,
                        "9" AS stock_productos,
                        "333666999" AS NIP_proveedores,
                        "6" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Tarjeta de video Nvidia MSI GeForce 700 Series GT 730 N730K-2GD3H/LPV1 2GB"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Router TP-Link TL-WR840N blanco" AS nombre_productos, 
						"52000" AS precio_productos,
                        "15" AS stock_productos,
                        "8776665555" AS NIP_proveedores,
                        "7" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Router TP-Link TL-WR840N blanco"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Tp-link, Tarjeta Usb Wifi Alta Ganancia 300mbps, Tl-wn822n" AS nombre_productos, 
						"50000" AS precio_productos,
                        "8" AS stock_productos,
                        "554321077" AS NIP_proveedores,
                        "7" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Tp-link, Tarjeta Usb Wifi Alta Ganancia 300mbps, Tl-wn822n"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Tarjeta Pc-e Lan Rj45 Pci Express Adaptador De Red" AS nombre_productos, 
						"25500" AS precio_productos,
                        "4" AS stock_productos,
                        "212223242" AS NIP_proveedores,
                        "7" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Tarjeta Pc-e Lan Rj45 Pci Express Adaptador De Red"
) LIMIT 1;

INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
SELECT * FROM (SELECT 	"Cable Utp Cat 5e Patch Cord Red Ponchado Fabrica X 1,5 Metro" AS nombre_productos, 
						"5000" AS precio_productos,
                        "23" AS stock_productos,
                        "123456789" AS NIP_proveedores,
                        "7" AS id_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_productos FROM productos WHERE nombre_productos = "Cable Utp Cat 5e Patch Cord Red Ponchado Fabrica X 1,5 Metro"
) LIMIT 1;

#Se muestran todos los datos de la tabla productos para verificar su contenido.
SELECT * FROM productos;