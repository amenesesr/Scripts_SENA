# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla detalleventas.
INSERT INTO detalleventas (cantidad_detalleventas, valorventa_detalleventas, id_productos, consecutivo_ventas)
VALUES 	(4, 126750, 2, 4),
	(1, 326000, 6, 4),
	(3, 420300, 13, 4),
	(3, 350650, 12, 5),
	(3, 49550, 19, 5),
	(2, 475300, 3, 6),
	(1, 625000, 20, 6),
	(8, 235000, 5, 6),
	(5, 546500, 9, 6),
	(4, 129500, 14, 7),
	(1, 346800, 11, 7),
	(1, 200500, 2, 8),
	(2, 197500, 16, 8),
	(6, 64500, 8, 9),
	(3, 356000, 20, 10),
	(4, 289500, 17, 10);

# Se muestran todos los datos de la tabla detalleventas para verificar su contenido.
SELECT * FROM detalleventas;