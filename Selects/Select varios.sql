# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se consultan todos los datos de todas las tablas.
SELECT * FROM proveedores;
SELECT * FROM categorias;
SELECT * FROM productos;
SELECT * FROM clientes;
SELECT * FROM ventas;
SELECT * FROM detalleventas;

# Mostrar el nombre y el telefono de un proveedor usando el NIP
SELECT NIP_proveedores, nombre_proveedores, telefono_proveedores FROM proveedores
WHERE NIP_proveedores = 741963852;

#Mostrar todos los datos de la categoria usando el id
SELECT * FROM categorias
WHERE id_categorias = 4;

# Mostrar el nombre de los productos que tienen un stock mayor a 50 productos y su cantidad actual
SELECT nombre_productos, stock_productos FROM productos
WHERE stock_productos >= 50;

# Mostrar el nombre y el valor de los productos que tienen un precio menor a $100.000
SELECT nombre_productos, precio_productos FROM productos
WHERE precio_productos < 100000;

# Mostrar los clientes que viven en la "ciudad pruebas 1" o "la ciudad pruebas 5"
SELECT * FROM clientes
WHERE ciudad_clientes = "ciudad pruebas 1" OR ciudad_clientes = "ciudad pruebas 5";

# Mostrar todos los clientes que no vivan en la "ciudad pruebas 4" o en la "ciudad pruebas 2"
SELECT * FROM clientes
WHERE ciudad_clientes <> "ciudad pruebas 4" AND ciudad_clientes <> "ciudad pruebas 2";

# Mostrar las 5 venta mas altas de todas en orden de mayor a menor
SELECT * FROM ventas
ORDER BY montofinal_ventas DESC
LIMIT 5;

# Mostrar las ventas que no tuvieron descuento
SELECT * FROM ventas
WHERE descuento_ventas = 0;

# Mostrar el producto mas vendidos
SELECT *, MAX(cantidad_detalleventas) FROM detalleventas;

# Mostrar los productos vendidos en la factura numero 6 y que se ordenen por la cantidad de productos del mas vendido al menos vendido
SELECT * FROM detalleventas
WHERE consecutivo_ventas = 6
ORDER BY cantidad_detalleventas DESC;

# Mostrar el id, el nombre y el stock de los productos que no tengan ventas registradas
SELECT id_productos, nombre_productos, stock_productos From productos
WHERE NOT EXISTS(
	SELECT * FROM detalleventas WHERE id_productos = productos.id_productos
);

# Mostrar el id, el nombre y el stock de los productos que si tengan ventas registradas
SELECT id_productos, nombre_productos, stock_productos From productos
WHERE NOT EXISTS(
	SELECT * FROM detalleventas WHERE id_productos = productos.id_productos
);