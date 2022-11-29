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

# Se colocan sentencias de verificacion para ver como quedaron contruidas las tablas
DESCRIBE proveedores;
DESCRIBE categorias;
DESCRIBE productos;
DESCRIBE clientes;
DESCRIBE ciudades;
DESCRIBE ventas;
DESCRIBE detalleventas; 