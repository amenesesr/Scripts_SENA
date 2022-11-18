# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla categorias.
INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Categoria de pruebas 1" AS nombre_categorias, 
						"Descripcion de la categoria de pruebas 1" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Categoria de pruebas 1"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Categoria de pruebas 2" AS nombre_categorias, 
						"Descripcion de la categoria de pruebas 2" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Categoria de pruebas 2"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Categoria de pruebas 3" AS nombre_categorias, 
						"Descripcion de la categoria de pruebas 3" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Categoria de pruebas 3"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Categoria de pruebas 4" AS nombre_categorias, 
						"Descripcion de la categoria de pruebas 4" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Categoria de pruebas 4"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Categoria de pruebas 5" AS nombre_categorias, 
						"Descripcion de la categoria de pruebas 5" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Categoria de pruebas 5"
) LIMIT 1;

# Se muestran todos los datos de la tabla categorias para verificar su contenido.
SELECT * FROM categorias;