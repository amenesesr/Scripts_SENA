# Eliminar todas las tablas del la base de datos import_tech.
DROP TABLE IF EXISTS detalleventas;
DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS ciudades;
DROP TABLE IF EXISTS categorias;
DROP TABLE IF EXISTS proveedores;

# Eliminar toda la base de datos import_tech
DROP DATABASE IF EXISTS import_tech;

# No es necesario eliminar todas las tablas antes de eliminar la base de datos, solo es para
# mostrar el uso de los dos comandos.
