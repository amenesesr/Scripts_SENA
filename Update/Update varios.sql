# Se especifica la base de datos sobre la cual se va a trabajar.
USE import_tech;

# Actualizar varios registros de la tabla productos (colocar 100 unidades de stock a los productos que sean de la categoría 5)
UPDATE productos
SET stock_productos = 100
WHERE EXISTS (
	SELECT id_categorias WHERE id_categorias = 5
) LIMIT 1;

# Actualizar un registro de la tabla proveedores (cambio de nombre y de pagina web)
UPDATE proveedores 
SET nombre_proveedores = "Nuevo Nombre 1", web_proveedores="www.nuevapagina1.com"
WHERE EXISTS (
	SELECT NIP_proveedores WHERE NIP_proveedores = 741961234
) LIMIT 1;

# Actualizar un registro de la tabla categorias (cambio de nombre de la categoria 2)
UPDATE categorias
SET nombre_categorias = "Nuevo Nombre dos"
WHERE EXISTS (
	SELECT id_categorias WHERE id_categorias = 2
) LIMIT 1;

# Actualizar varios registros de la tabla clientes (cambiar la ciudad pruebas 5 por NUEVA CIUDAD 5)
UPDATE clientes
SET ciudad_clientes = "NUEVA CIUDAD 5"
WHERE EXISTS (
	SELECT ciudad_clientes WHERE ciudad_clientes = "Ciudad pruebas 5"
) LIMIT 1;

# Actualizar varios registros de la tabla clientes (cambiar el 0 en el telefono2_clientes por NO TIENE)
UPDATE clientes
SET telefono2_clientes = "NO TIENE"
WHERE EXISTS (
	SELECT telefono2_clientes WHERE telefono2_clientes = "0"
) LIMIT 1;

# Solo se implemeto lo del WHERE EXISTS porque queria hacer pruebas de modificar registros que no existen
# pero igual no reporta ningun error asi que no se nota el cambio, esto seria valido por ejemplo si se 
# necesitara validar que un dato exista pero en otra tabla diferente a donde se va a realizar el UPDATE 
# agregando un FROM