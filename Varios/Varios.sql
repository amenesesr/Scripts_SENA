# Crear una tabla llamada consolidadoVentas que tenga dos columnas una con la fecha tipo timestamp
# con la fecha y hora en la que se realiza la consulta llamada fechahora_consolidadoVentas y otra  
# columna que contenga el consolidado (la suma total de todas las ventas) que tiene registrada la
# base de datos tipo BIGINT llamada total_consolidadoVentas
#
# Adicional hacer una consulta que me muestre todas las columnas de la tabla consolidadoVentas
# con una columna adicional que me muestre la diferencia entre el mas reciente y el anterior. 

USE import_tech;

CREATE TABLE IF NOT EXISTS consolidadoVentas(
id_consolidadoVentas BIGINT AUTO_INCREMENT,
fechaHora_consolidadoVentas TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
total_consolidadoVentas BIGINT,
PRIMARY KEY (id_consolidadoVentas)
)ENGINE=INNODB;

INSERT INTO consolidadoVentas (total_consolidadoVentas)
SELECT SUM(montofinal_ventas) FROM ventas;

SELECT id_consolidadoVentas, fechaHora_consolidadoVentas, total_consolidadoVentas, 
LAG(total_consolidadoVentas,1) OVER (ORDER BY id_consolidadoVentas) - total_consolidadoVentas 
FROM consolidadoVentas;

# Cambiar el nombre de la tabla categorias a categorias_productos
USE import_tech;
RENAME TABLE categorias TO categorias_productos;

# Realizar el proceso inverso y dejar la tabla como estaba inicialmente
USE import_tech;
RENAME TABLE categorias_productos TO categorias