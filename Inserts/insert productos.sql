# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla productos.
INSERT INTO productos (nombre_productos, precio_productos, stock_productos, NIP_proveedores, id_categorias)
VALUES	("Producto de Pruebas 1", 256500, 23, 951623847, 5),
		("Producto de Pruebas 2", 35000,93,592635487, 3),
		("Producto de Pruebas 3", 26500, 21, 123456789, 1),
		("Producto de Pruebas 4", 145000, 58, 963852741, 2),
		("Producto de Pruebas 5", 23000, 49, 789456123, 4),
		("Producto de Pruebas 6", 45500, 38, 741963852, 5),
		("Producto de Pruebas 7", 86000,31,951623847, 1),
		("Producto de Pruebas 8", 15500,59,741963852, 2),
		("Producto de Pruebas 9", 210000, 73, 741963852, 4),
		("Producto de Pruebas 10", 123000, 48, 987654321, 3),
		("Producto de Pruebas 11", 64500, 21, 741963852, 1),
		("Producto de Pruebas 12", 315000,3,321654987, 2),
		("Producto de Pruebas 13", 51500, 64, 963852741, 5),
		("Producto de Pruebas 14", 90500, 98, 741963852 , 4),
		("Producto de Pruebas 15", 29500, 47, 123456789, 2),
		("Producto de Pruebas 16", 235000, 76 ,741963852, 1),
		("Producto de Pruebas 17", 186000, 9, 789456123, 3),
		("Producto de Pruebas 18", 76000, 12, 987654321, 5),
		("Producto de Pruebas 19", 88500,89,592635487, 4),
		("Producto de Pruebas 20", 146000,59,321654987, 3);

#Se muestran todos los datos de la tabla productos para verificar su contenido.
SELECT * FROM productos;