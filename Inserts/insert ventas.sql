# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla ventas.
INSERT INTO ventas (descuento_ventas, montofinal_ventas, NIP_clientes)
VALUES	(5, 123456, 99999999999),
		(4, 789012, 55555555555),
		(4, 345678, 40404040404),
		(3, 901234, 11111111111),
		(5, 564789, 30303030303),
		(5, 123456, 90909090909),
		(6, 789012, 66666666666),
		(10, 345678, 33333333333),
		(0, 901234, 60606060606),
		(7, 564789, 44444444444);

#Se muestran todos los datos de la tabla ventas para verificar su contenido.
SELECT * FROM ventas;