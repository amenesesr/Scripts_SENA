USE import_tech;
# Agregar una columna a la tabla productos llamada coste_productos del tipo VARCHAR(10)
ALTER TABLE productos ADD COLUMN coste_productos VARCHAR(10);

# Cambiar el nombre de la columna coste_productos colocandole el nombre nueva_columna 
# y cambiando el tipo a BIGINT
ALTER TABLE productos CHANGE coste_productos nueva_columna BIGINT;

# Eliminar la columna coste_productos de la tabla productos
ALTER TABLE productos DROP coste_productos;

# Agregar una columna a la tabla productos llamada coste_productos del tipo VARCHAR(10) 
# y llenarla automaticamente dependiendo el valor del producto clasificarlo entre:
# BAJO si el precio es mayor igual a 0 y menor igual a 50000
# MEDIO si el precio es mayor de 50000 y menor igual a 100000 
# ALTO para mayores de 100000 
ALTER TABLE productos ADD COLUMN coste_productos VARCHAR(10) AS
(CASE
	WHEN precio_productos > 0 AND precio_productos <= 50000
		THEN 'BAJO'
	WHEN precio_productos > 50000 AND precio_productos <= 100000
        THEN 'MEDIO'
	WHEN precio_productos > 100000 
		THEN 'ALTO'
END);

# Agregar una columna a la tabla productos llamada alarma_productos del tipo VARCHAR(10) 
# y llenarla automaticamente dependiendo del la cantidad de stock que se tenga entre:
# ALTA 	si el stock es menor o igual a 10 productos
# MEDIA si el stock es mayor a 10 y menor o igual a 30
# ALTA 	si el stock es mayor a 30. 
ALTER TABLE productos ADD COLUMN alarma_productos VARCHAR(10) AS
(CASE
	WHEN stock_productos <= 10
		THEN 'ALTA'
	WHEN stock_productos > 10 AND stock_productos <= 30
        THEN 'MEDIA'
	ELSE 'BAJA'
END);
