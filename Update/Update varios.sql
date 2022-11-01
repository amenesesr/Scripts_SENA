# Se especifica la base de datos sobre la cual se va a trabajar.
USE import_tech;

# Actualizar varios registros de la tabla productos (colocar 100 unidades de stock a los productos que sean de la categoría 5)
UPDATE productos
SET stock_productos = 100
WHERE id_categorias = 5;

# Actualizar un registro de la tabla proveedores (cambio de nombre y de pagina web)
UPDATE proveedores 
SET nombre_proveedores = "Nuevo Nombre 1", web_proveedores="www.nuevapagina1.com"
WHERE NIP_proveedores = 741961234;

# Actualizar un registro de la tabla categorias (cambio de nombre de la categoria 2)
UPDATE categorias
SET nombre_categorias = "Nuevo Nombre dos"
WHERE id_categorias = 2;

# Actualizar varios registros de la tabla clientes (cambiar la ciudad pruebas 5 por NUEVA CIUDAD 5)
UPDATE clientes
SET ciudad_clientes = "NUEVA CIUDAD 5"
WHERE ciudad_clientes = "Ciudad pruebas 5";

# Actualizar varios registros de la tabla clientes (cambiar el 0 en el telefono2_clientes por NO TIENE)
UPDATE clientes
SET telefono2_clientes = "NO TIENE"
WHERE telefono2_clientes = "0" ;