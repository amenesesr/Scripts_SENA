# Se especifica la base de datos sobre la cual se va a trabajar.
USE import_tech;

# Actualizar varios registros de la tabla productos (colocar 100 unidades de stock a los productos que sean de la categoría 5)
UPDATE productos
SET stock_productos = 100
WHERE EXISTS (
	SELECT id_categorias WHERE id_categorias = 5
);

# Actualizar un registro de la tabla proveedores (cambio de nombre y de pagina web)
UPDATE proveedores 
SET nombre_proveedores = "Hyper Controls", web_proveedores="www.NewHyperControls.com"
WHERE EXISTS (
	SELECT NIP_proveedores WHERE NIP_proveedores = 337744665
) LIMIT 1;

# Actualizar un registro de la tabla categorias (cambio de nombre de la categoria 2)
UPDATE categorias
SET nombre_categorias = "Nuevo Nombre dos"
WHERE EXISTS (
	SELECT id_categorias WHERE id_categorias = 2
) LIMIT 1;

# Actualizar varios registros de la tabla clientes (cambiar el id de la ciudad 5 por 7)
UPDATE clientes
SET id_ciudades = 8
WHERE EXISTS (
	SELECT id_ciudades WHERE id_ciudades = 1
);

# Actualizar varios registros de la tabla clientes (cambiar el 0 en el telefono2_clientes por NO TIENE)
UPDATE clientes
SET telefono2_clientes = "NO TIENE"
WHERE EXISTS (
	SELECT telefono2_clientes WHERE telefono2_clientes = "0"
);

# Solo se implemeto lo del WHERE EXISTS porque queria hacer pruebas de modificar registros que no existen
# pero igual no reporta ningun error asi que no se nota el cambio, esto seria valido por ejemplo si se 
# necesitara validar que un dato exista pero en otra tabla diferente a donde se va a realizar el UPDATE 
# agregando un FROM

# Aumentar el precio de todos los productos un 5%
UPDATE productos
SET precio_productos = precio_productos + (precio_productos * 0.05);

# Por promocion rebajar un 10% a los productos que tengan un valor superior a $100.000
UPDATE productos
SET precio_productos = precio_productos - (precio_productos * 0.10)
WHERE EXISTS (
	SELECT precio_productos WHERE precio_productos >= 100000
);

# Aumentar $10.000 a todos los productos que sean de la categoria 3
UPDATE productos
SET precio_productos = precio_productos + 10000
WHERE EXISTS (
	SELECT  id_categorias WHERE id_categorias = 3
);
