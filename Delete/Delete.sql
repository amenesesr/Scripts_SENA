# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Eliminar todos los datos de la tabla detalleventas
DELETE FROM detalleventas;

# Eliminar todos los productos de la tabla productos que sean de la categoria "3"
DELETE FROM PRODUCTOS
WHERE id_categorias = 3;

# Eliminar todos los clientes de la tabla clientes que sean de "ciudad pruebas 4"
DELETE FROM clientes
WHERE ciudad_clientes = "ciudad pruebas 4";

# Eliminar la venta con consecutivo numero "1"
DELETE FROM ventas
WHERE consecutivo_ventas = 1;

# Eliminar todos los productos de la tabla productos que tengan 50 o menos unidades en stock.
DELETE FROM productos
WHERE stock_productos <= 50;

# Eliminar los clientes de la ciudad "Ciudad pruebas 3" y que el telefono2 sea "NO TIENE"
DELETE FROM CLIENTES 
WHERE
    ciudad_clientes = 'Ciudad pruebas 3'
    AND telefono2_clientes = 'NO TIENE';

# Eliminar los proveedores que no tengan productos en stock
DELETE FROM proveedores
WHERE NOT EXISTS (
	SELECT NIP_proveedores FROM productos WHERE NIP_proveedores = proveedores.NIP_proveedores
);