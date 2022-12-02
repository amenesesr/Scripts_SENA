# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se consultan todos los datos de todas las tablas.
SELECT * FROM proveedores;
SELECT * FROM categorias;
SELECT * FROM productos;
SELECT * FROM ciudades;
SELECT * FROM clientes;
SELECT * FROM ventas;
SELECT * FROM detalleventas;

# Mostrar el nombre y el telefono de un proveedor usando el NIP
SELECT NIP_proveedores, nombre_proveedores, telefono_proveedores FROM proveedores
WHERE NIP_proveedores = 333666999;

#Mostrar todos los datos de la categoria usando el id
SELECT * FROM categorias
WHERE id_categorias = 4;

# Consultar los nombre de los clientes que empiezen con la letra J
SELECT nombre_clientes FROM clientes
WHERE nombre_clientes LIKE "j%";

# Consultar los nombre de los clientes que contengan las letras AR
SELECT nombre_clientes FROM clientes
WHERE nombre_clientes LIKE "%ar%";

# Mostrar el nombre de los productos que tienen un stock mayor a 50 productos y su cantidad actual
SELECT nombre_productos, stock_productos FROM productos
WHERE stock_productos >= 50;

# Mostrar el nombre y el valor de los productos que tienen un precio menor a $100.000
SELECT nombre_productos, precio_productos FROM productos
WHERE precio_productos < 100000;

# Mostrar los clientes que viven en la ciudad con id 5 o 2
SELECT * FROM clientes
WHERE id_ciudades = 2 OR id_ciudades = 5;

# Mostrar todos los clientes que no vivan en las ciudades con id 3 o 6
SELECT * FROM clientes
WHERE id_ciudades <> 6 AND id_ciudades <> 3;

# Mostrar las 5 venta mas altas de todas en orden de mayor a menor
SELECT * FROM ventas
ORDER BY montofinal_ventas DESC
LIMIT 5;

# Mostrar las ventas que no tuvieron descuento
SELECT * FROM ventas
WHERE descuento_ventas = 0;

# Mostrar el producto mas vendidos en una sola factura (esto hay que revisarlo)
SELECT *, MAX(cantidad_detalleventas) AS "productos vendidos" FROM detalleventas;

# Mostrar los productos vendidos en la factura numero 15 y que se ordenen por la cantidad de productos del mas vendido al menos vendido
SELECT * FROM detalleventas
WHERE consecutivo_ventas = 15
ORDER BY cantidad_detalleventas DESC;

# Mostrar el id, el nombre y el stock de los productos que no tengan ventas registradas
SELECT id_productos, nombre_productos, stock_productos From productos
WHERE NOT EXISTS(
	SELECT * FROM detalleventas WHERE id_productos = productos.id_productos
);

# Mostrar el id, el nombre y el stock de los productos que si tengan ventas registradas
SELECT id_productos, nombre_productos, stock_productos From productos
WHERE EXISTS(
	SELECT * FROM detalleventas WHERE id_productos = productos.id_productos
);

# Mostrar el nombre del producto, el precio y una columna extra que llamada coste_producto
# en la cual muestre le palabra:
# BAJO si el precio es mayor igual a 0 y menor igual a 50000
# MEDIO si el precio es mayor de 50000 y menor igual a 100000 
# ALTO para mayores de 100000 
SELECT 
    nombre_productos,
    precio_productos,
    CASE
        WHEN
            precio_productos BETWEEN 0 AND 50000
        THEN
            'BAJO'
        WHEN
            precio_productos BETWEEN 50001 AND 100000
        THEN
            'MEDIO'
        WHEN precio_productos > 100000 THEN 'ALTO'
    END AS coste_productos
FROM
    productos;
    
# Mostrar las ciudades de los clientes sin datos repetidos
SELECT DISTINCT id_ciudades from clientes;

# Mostrar los codigos de productos que tienen venta registradas sin datos repetidos
SELECT DISTINCT id_productos from detalleventas;

# Motrar las cedulas de los clientes que tienen ventas registradas sin datos repetidos
SELECT DISTINCT NIP_clientes from ventas;

# Mostrar la cifra total del clientes registrados en nuestra base de datos y que 
# la columna se llame total_clientes
SELECT COUNT(NIP_clientes) AS total_clientes FROM clientes;

# Mostrar la cantidad de productos que se tienen en catalogo dentro de la base de datos
# que la columna tenga el nombre total_productos
SELECT COUNT(stock_productos) AS total_productos FROM productos;

# Mostrar el promedio del valor de los productos que tenemos a la venta 
# con el nombre precioPromedio_productos
SELECT AVG(precio_productos) AS precioPromedio_productos FROM productos;

# Mostrar la cantidad de clientes que han realizado compras sin contar  
# compras repetidas (hechas por el mismo cliente) con el nombre clienetesQueCompran
SELECT COUNT(DISTINCT NIP_clientes) AS clienetesQueCompran FROM ventas;

# Mostrar la cantidad de clientes que no han realizado compras
# con el nombre "Total de clientes sin compras"
SELECT COUNT(DISTINCT NIP_clientes) AS "Total de clientes sin compras" FROM clientes
WHERE NOT EXISTS(
	SELECT NIP_clientes FROM ventas WHERE NIP_clientes = clientes.NIP_clientes 
);

# Mostrar el valor total historico de todas las ventas que estan registradas
# en la base de datos con el nombre VentaTotal
SELECT SUM(montofinal_ventas) AS ventaTotal FROM ventas;

# Mostrar la cantidad total de todos los productos que tiene el negocio en inventario
# en la base de datos con el nombre cantidadTotal
SELECT SUM(stock_productos) AS cantidadTotal FROM productos;

# Mostrar ciudades con la cantidad de clientes que tiene cada ciudad ordenadas de mayor a menor
SELECT id_ciudades, COUNT(*) AS cantidad
FROM clientes
GROUP BY id_ciudades
ORDER BY cantidad DESC;

# Mostrar el nombre, el telefono1 y ciudad de todos los clientes de la ciudad pruebas 4 y ciudad pruebas 1
SELECT id_ciudades, nombre_clientes, telefono1_clientes
FROM clientes
WHERE id_ciudades IN (4, 1)
ORDER BY id_ciudades ASC;

# Mostrar el nombre, el telefono1 y ciudad de todos los clientes de todas las ciudades menos de la
# ciudad pruebas 1 en orden de menor mayor
SELECT id_ciudades, nombre_clientes, telefono1_clientes
FROM clientes
WHERE id_ciudades NOT IN (1)
ORDER BY id_ciudades ASC;

# Realizar una consulta que me muestre la cedula del cliente en una columna y otra columna
# llamada cliente_ciudad que muestre el nombre del cliente y la ciudad en la que vive
SELECT cli.NIP_clientes, CONCAT (cli.nombre_clientes, ' ', ciu.nombre_ciudades) as 'cliente_ciudad'
FROM ciudades ciu, clientes cli
WHERE cli.id_ciudades = ciu.id_ciudades;

# Crear una consulta que muestre el nombre del cliente en una columna y en otra que se llame direccion
# y que contenga la ciudad, la comuna, la calle y el numero de la tabla clientes
SELECT clientes.nombre_clientes, CONCAT(ciudades.nombre_ciudades, ' Comuna ', 
										clientes.comuna_clientes, ' Calle ', 
										clientes.calle_clientes, ' # ',
                                        clientes.numero_clientes ) AS direccion
FROM ciudades, clientes
WHERE clientes.id_ciudades = ciudades.id_ciudades;

# Unir dos consultas una que me muestre el cliente con el id de la ciudad en la que esta
# y despues que me consulte el id y el nombre de la ciudad de la tabla ciudades
SELECT nombre_clientes, id_ciudades FROM clientes
WHERE id_ciudades = 1 OR id_ciudades = 3 OR id_ciudades = 7
UNION
SELECT id_ciudades, nombre_ciudades FROM ciudades
WHERE id_ciudades = 1 OR id_ciudades = 3 OR id_ciudades = 7