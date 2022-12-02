# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla ventas.
INSERT INTO ventas (descuento_ventas, montofinal_ventas, NIP_clientes)
VALUES	(0, 581000, 1415440967),
	(0, 255000, 6123076268),
    (0, 850000, 2656250524),	
	(0, 1447500, 1415440967),
    (0, 465500, 2656250524),
    (0, 98000, 9540254639),
    (0, 2436000, 5240955232),
    (0, 350000, 4508194109),
    (0, 976000, 6302657862),
    (0, 725000, 8298137397),
    (0, 1225000,5657302641),
    (0, 1031500,8018422143),
    (0, 1160000, 1892019558),
    (0, 5000, 4104876655),
    (0, 1091000, 2806565891),
	(0, 341500, 1061787715),
    (0, 452500, 9546814334),
    (0, 790000, 5240955232),
    (0, 380000, 3225687287),
    (0, 989500, 1892019558),
    (0, 250000, 3958443130);
    
#Se muestran todos los datos de la tabla ventas para verificar su contenido.
SELECT * FROM ventas;