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
            precio_productos > 0
                AND precio_productos <= 50000
        THEN
            'BAJO'
        WHEN
            precio_productos > 50000
                AND precio_productos <= 100000
        THEN
            'MEDIO'
        WHEN precio_productos > 100000 THEN 'ALTO'
    END AS coste_productos
FROM
    productos;
    
# Mostrar las ciudades de los clientes sin datos repetidos
SELECT DISTINCT ciudad_clientes from clientes;

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
# con el nombre clientesSinCompras
SELECT COUNT(DISTINCT NIP_clientes) AS comprasPorClientes FROM clientes
WHERE NOT EXISTS(
	SELECT NIP_clientes FROM ventas WHERE NIP_clientes = clientes.NIP_clientes 
);

# Mostrar el valor total historico de todas las ventas que estan registradas
# en la base de datos con el nombre VentaTotal
SELECT SUM(montofinal_ventas) AS ventaTotal FROM ventas;

# Mostrar la cantidad total de todos los productos que tiene el negocio en inventario
# en la base de datos con el nombre cantidadTotal
SELECT SUM(stock_productos) AS cantidadTotal FROM productos;
