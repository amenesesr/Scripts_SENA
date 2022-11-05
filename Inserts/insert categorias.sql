# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla categorias.
INSERT INTO categorias (nombre_categorias, descripcion_categorias)
VALUES 	("Categoria de pruebas 1", "Descripcion de la categoria de pruebas 1"),
	("Categoria de pruebas 2", "Descripcion de la categoria de pruebas 2"),
	("Categoria de pruebas 3", "Descripcion de la categoria de pruebas 3"),
	("Categoria de pruebas 4", "Descripcion de la categoria de pruebas 4"),
	("Categoria de pruebas 5", "Descripcion de la categoria de pruebas 5");

# Se muestran todos los datos de la tabla categorias para verificar su contenido.
SELECT * FROM categorias;