# Crea la base de datos para el proyecto Import_Tech caso https://youtu.be/Ih7CYH73mrM
CREATE DATABASE IF NOT EXISTS import_tech;

# Se especifica la base de datos con la que vamos a trabajar
USE import_tech;

# Se crea la tabla proveedores
CREATE TABLE IF NOT EXISTS proveedores (
NIP_proveedores BIGINT,
nombre_proveedores VARCHAR(50) NOT NULL,
web_proveedores VARCHAR(50),  
telefono_proveedores VARCHAR(15) NOT NULL,
direccion_proveedores VARCHAR(50) NOT NULL,
PRIMARY KEY (NIP_proveedores)
) ENGINE=INNODB;

# Se crea la tabla categorias
CREATE TABLE IF NOT EXISTS categorias (
id_categorias BIGINT AUTO_INCREMENT,
nombre_categorias VARCHAR(50) NOT NULL,
descripcion_categorias MEDIUMTEXT NOT NULL,
PRIMARY KEY (id_categorias) 
) ENGINE=INNODB;

# Se crea la tabla productos
CREATE TABLE IF NOT EXISTS productos (
id_productos BIGINT AUTO_INCREMENT,
nombre_productos VARCHAR(255) NOT NULL,
precio_productos INT NOT NULL,  
stock_productos INT NOT NULL,
NIP_proveedores BIGINT NOT NULL,
id_categorias BIGINT NOT NULL,
PRIMARY KEY (id_productos),
coste_productos VARCHAR(10) AS
(CASE
	WHEN precio_productos > 0 AND precio_productos <= 50000
		THEN 'BAJO'
	WHEN precio_productos > 50000 AND precio_productos <= 100000
        THEN 'MEDIO'
	WHEN precio_productos > 100000 
		THEN 'ALTO'
END),
alarma_productos VARCHAR(10) AS
(CASE
	WHEN stock_productos <= 10
		THEN 'ALTA'
	WHEN stock_productos > 10 AND stock_productos <= 30
        THEN 'MEDIA'
	ELSE 'BAJA'
END),
INDEX prov_idx (NIP_proveedores),
FOREIGN KEY (NIP_proveedores)
	REFERENCES proveedores(NIP_proveedores)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
INDEX cat_idx (id_categorias),
FOREIGN KEY (id_categorias)
	REFERENCES categorias(id_categorias)
		ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=INNODB;

# Se crea la tabla ciudades
CREATE TABLE IF NOT EXISTS ciudades (
id_ciudades INT AUTO_INCREMENT,
nombre_ciudades VARCHAR(50) NOT NULL,
PRIMARY KEY (id_ciudades) 
) ENGINE=INNODB;

# Se crea la tabla clientes
CREATE TABLE IF NOT EXISTS clientes (
NIP_clientes BIGINT,
nombre_clientes VARCHAR(50) NOT NULL,
telefono1_clientes VARCHAR(15) NOT NULL,
telefono2_clientes VARCHAR(15) NOT NULL,
telefono3_clientes VARCHAR(15) NOT NULL,  
id_ciudades INT NOT NULL,
comuna_clientes INT NOT NULL,
calle_clientes VARCHAR(10) NOT NULL,
numero_clientes VARCHAR(10) NOT NULL,
PRIMARY KEY (NIP_clientes),
INDEX ciudad_idx (id_ciudades),
FOREIGN KEY (id_ciudades )
	REFERENCES ciudades(id_ciudades )
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=INNODB;

# Se crea la tabla ventas
CREATE TABLE IF NOT EXISTS ventas (
consecutivo_ventas BIGINT AUTO_INCREMENT,
fechahora_ventas TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
descuento_ventas INT NOT NULL,
montofinal_ventas BIGINT NOT NULL,
NIP_clientes BIGINT NOT NULL,
PRIMARY KEY (consecutivo_ventas),
INDEX cli_idx (NIP_clientes),
FOREIGN KEY (NIP_clientes)
	REFERENCES clientes(NIP_clientes)
		ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=INNODB;

# Se crea la tabla detalleventas
CREATE TABLE IF NOT EXISTS detalleventas (
id_detalleventas BIGINT AUTO_INCREMENT,
cantidad_detalleventas INT NOT NULL,
valorventa_detalleventas BIGINT NOT NULL,
id_productos BIGINT NOT NULL,
consecutivo_ventas BIGINT NOT NULL,
PRIMARY KEY(id_detalleventas),
INDEX prod_idx (id_productos),
FOREIGN KEY (id_productos)
	REFERENCES productos(id_productos)
		ON UPDATE CASCADE
		ON DELETE RESTRICT,
INDEX ventas_idx (consecutivo_ventas),
FOREIGN KEY (consecutivo_ventas)
	REFERENCES ventas(consecutivo_ventas)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
) ENGINE=INNODB;

# Se empiezan a introducir los datos
# PROVEEDORES
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

# CATEGORIAS
INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Software" AS nombre_categorias, 
						"En esta categoria se encuentran todos los productos relacionados con Software,
 Licencias, videojuegos, utilitarios y demas" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Software"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Teclados" AS nombre_categorias, 
						"En esta categoria se encuentran todos los productos relacionados con los teclados
 y sus diferentes tipos, gamers, mecanicos, inalambricos, USB" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Teclados"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Mouse" AS nombre_categorias, 
						"En esta categoria se encuentran todos productos relacionados con apuntadores
alambricos, inalambricos, USB, Gamer, Trackballs" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Categoria de pruebas 3"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Impresion y Scanners" AS nombre_categorias, 
						"En esta categoria se encuentran todos productos relacionados con el manejo de 
documentos, Scanners, Impresoras, Multifuncionales" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Impresion y Scanners"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Pantallas" AS nombre_categorias, 
						"En esta categoria se encuentran todos productos relacionados con las pantallas y sus accesorios
bases, limpiadores, filtros" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Pantallas"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Repuestos" AS nombre_categorias, 
						"En esta categoria se encuentran todos productos relacionados con repuestos para computadoras, 
discos duros, memorias, tarjetas madre, procesadores, fuentes de poder y demas" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Repuestos"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Red" AS nombre_categorias, 
						"En esta categoria se encuentran todos productos relacionados con las redes, switches, routers, cables, 
tarjetas de red ethernet y WIFI, antenas" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Red"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Insumos" AS nombre_categorias, 
						"En esta categoria se encuentran todos productos relacionados con los insumos para computadoras, papel, tintas, tonner, 
memorias USB") AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Insumos"
) LIMIT 1;

#CIUDADES
INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Bogota" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Bogota"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Medellin" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Medellin"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Cali" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Cali"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Barranquilla" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Barranquilla"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Pasto" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Pasto"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Caldas" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Caldas"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Cartagena" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Cartagena"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Manizales" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Manizales"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Pereira" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Pereira"
) LIMIT 1;


INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Amazonas" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Amazonas"
) LIMIT 1;

# PRODUCTOS
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

# CLIENTES
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
						"juan carlos de la torre garcia" AS nombre_clientes,
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
						"miguel angel de la hoz silva" AS nombre_clientes,
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

#=============================

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	1553523446 AS NIP_clientes,
						"rene dominguez santana" AS nombre_clientes, 
                        "31391" AS telefono1_clientes, 
                        "0" AS telefono2_clientes, 
                        "12092" AS telefono3_clientes, 
                        7 AS id_ciudades, 
                        "25" AS comuna_clientes, 
                        "13" AS calle_clientes, 
                        "65-40" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 1553523446 
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	4994548265 AS NIP_clientes,
						"cindy lorena echeverri quintana" AS nombre_clientes, 
                        "41759" AS telefono1_clientes, 
                        "0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        6 AS id_ciudades, 
                        "3" AS comuna_clientes, 
                        "4" AS calle_clientes, 
                        "19-40" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 4994548265
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	6123076268 AS NIP_clientes,
						"kevin eduardo echeverry meneses" AS nombre_clientes, 
                        "93991" AS telefono1_clientes, 
                        "17242" AS telefono2_clientes, 
                        "88151" AS telefono3_clientes, 
                        5 AS id_ciudades, 
                        "6" AS comuna_clientes, 
                        "87" AS calle_clientes, 
                        "11-14" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 6123076268
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	5347245778 AS NIP_clientes,
						"nikolai steven fandiño lopez" AS nombre_clientes, 
                        "63137" AS telefono1_clientes, 
                        "38289" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        4 AS id_ciudades, 
                        "63" AS comuna_clientes, 
                        "28" AS calle_clientes, 
                        "1-40" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 5347245778 
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	1892019558 AS NIP_clientes,
						"leonardo amaury fernandez rengifo" AS nombre_clientes, 
                        "87949" AS telefono1_clientes, 
                        "19555" AS telefono2_clientes, 
                        "81501" AS telefono3_clientes, 
                        3 AS id_ciudades, 
                        "36" AS comuna_clientes, 
                        "83" AS calle_clientes, 
                        "31-34" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 1892019558 
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	9540254639 AS NIP_clientes,
						"yudy arleny fontecha agudelo" AS nombre_clientes, 
                        "25909" AS telefono1_clientes, 
                        "58864" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        2 AS id_ciudades, 
                        "22" AS comuna_clientes, 
                        "11" AS calle_clientes, 
                        "33-44" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 9540254639 
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	2806565891 AS NIP_clientes,
						"javier gaitan hernandez" AS nombre_clientes, 
                        "85277" AS telefono1_clientes, 
                        "71938" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        1 AS id_ciudades, 
                        "95" AS comuna_clientes, 
                        "4" AS calle_clientes, 
                        "10-40" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 2806565891 
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	4508194109 AS NIP_clientes,
						"andres felipe galvis camacho" AS nombre_clientes, 
                        "11270" AS telefono1_clientes, 
                        "98381" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        7 AS id_ciudades, 
                        "2" AS comuna_clientes, 
                        "3" AS calle_clientes, 
                        "41-45" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 4508194109  
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	1061787715 AS NIP_clientes,
						"edgardo garcia ocampo" AS nombre_clientes, 
                        "67854" AS telefono1_clientes, 
                        "0" AS telefono2_clientes, 
                        "0" AS telefono3_clientes, 
                        6 AS id_ciudades, 
                        "60" AS comuna_clientes, 
                        "18" AS calle_clientes, 
                        "11-24" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 1061787715 
) LIMIT 1;

INSERT INTO clientes (NIP_clientes, nombre_clientes, telefono1_clientes, telefono2_clientes, telefono3_clientes, id_ciudades, comuna_clientes, calle_clientes, numero_clientes)
SELECT * FROM (SELECT 	5071818141 AS NIP_clientes,
						"santiago alberto giraldo escobar" AS nombre_clientes, 
                        "80911" AS telefono1_clientes, 
                        "59498" AS telefono2_clientes, 
                        "28216" AS telefono3_clientes, 
                        5 AS id_ciudades, 
                        "8" AS comuna_clientes, 
                        "58" AS calle_clientes, 
                        "12-44" AS numero_clientes) AS tmp
WHERE NOT EXISTS (
    SELECT NIP_clientes FROM clientes WHERE NIP_clientes = 5071818141 
) LIMIT 1;

#VENTAS
INSERT INTO ventas (descuento_ventas, montofinal_ventas, NIP_clientes)
VALUES	(0, 581000, 1415440967),
	(0, 255000, 6123076268),
    (0, 850000, 2656250524),	
	(0, 1447500, 1415440967),
    (0, 465500, 2656250524),
    (0, 98000, 9540254639),
    (0, 2436000, 5240955232),
    (0, 350000, 4508194109),
    (0, 976000, 6302657862),
    (0, 725000, 8298137397),
    (0, 1225000,5657302641),
    (0, 1031500,8018422143),
    (0, 1160000, 1892019558),
    (0, 5000, 4104876655),
    (0, 1091000, 2806565891),
	(0, 341500, 1061787715),
    (0, 452500, 9546814334),
    (0, 790000, 5240955232),
    (0, 380000, 3225687287),
    (0, 989500, 1892019558),
    (0, 250000, 3958443130);

#DETALLEVENTAS
INSERT INTO detalleventas (cantidad_detalleventas, valorventa_detalleventas, id_productos, consecutivo_ventas)
VALUES 	(1, 115000, 6, 1),
(2, 279000, 31, 1),
(1, 52000, 42, 1),
(3, 15000, 45, 1),
(1, 120000, 4, 1),
(1, 145000, 10, 2),	
(1, 110000, 14, 2),
(1, 450000, 23, 3),
(1, 180000, 3, 3),
(1, 220000, 41, 3),
(1, 25500, 44, 4),
(1, 330000, 39, 4),
(1, 120000, 25, 4),
(1, 150000, 21, 4),
(1, 53500, 17, 4),
(1, 120000, 8, 4),
(1, 200000, 2, 4),
(2, 149500, 33, 4),
(2, 100000, 43, 5),
(1, 98500, 7, 5),
(2, 77000, 37, 5),
(1, 190000, 28, 5),
(1, 75000, 11, 6),
(1, 23000, 18, 6),
(1, 1160000, 35, 7),
(2, 536000, 36, 7),
(3, 360000, 25, 7),
(1, 380000, 24, 7),
(1, 350000, 22, 8),
(1, 446000, 38, 9),
(1, 300000, 5, 9),
(1, 230000, 20, 9),
(1, 350000, 22, 10),
(2, 90000, 19, 10),
(1, 285000, 40, 10),
(1, 85000, 26, 11),
(3, 1140000, 24, 11),
(2, 240000, 4, 12),
(3, 436500, 31, 12),
(1, 340000, 27, 12),
(3, 15000, 45, 12),
(2, 1160000, 35, 13),
(1, 5000, 45, 13),
(1, 50000, 43, 14),
(1, 268000, 36, 14),
(1,398000, 29, 14),
(1, 230000, 20, 14),
(1, 300000, 5, 14),
(1, 75000, 11, 14),
(1, 110000, 14, 15),
(1, 25000, 15, 15),
(1, 85000, 16, 15),
(1, 53500, 17, 15),
(1, 23000, 18, 15),
(1, 45000, 19, 15),
(1, 5000, 45, 16),
(1, 25500, 44, 16),
(1, 50000, 43, 16),
(1, 52000, 42, 16),
(1, 320000, 41, 16),
(1, 200000, 2, 17),
(2, 230000, 6, 17),
(3, 360000, 4, 17),
(1, 200000, 21, 18),
(1, 180000, 3, 18),
(1, 446000, 38, 19),
(1, 398000, 29, 19),
(1, 145500, 31, 19),
(1, 250000, 1, 20);

# Se consultan todos los datos de todas las tablas.
SELECT * FROM proveedores;
SELECT * FROM categorias;
SELECT * FROM productos;
SELECT * FROM ciudades;
SELECT * FROM clientes;
SELECT * FROM ventas;
SELECT * FROM detalleventas;