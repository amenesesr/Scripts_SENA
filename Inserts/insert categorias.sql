# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla categorias.
INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Software" AS nombre_categorias, 
						"En esta categoria se encuentran todos los productos relacionados con Software,
 Licencias, videojuegos, utilitarios y demas" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Software"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Teclados" AS nombre_categorias, 
						"En esta categoria se encuentran todos los productos relacionados con los teclados
 y sus diferentes tipos, gamers, mecanicos, inalambricos, USB" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Teclados"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Mouse" AS nombre_categorias, 
						"En esta categoria se encuentran todos productos relacionados con apuntadores
alambricos, inalambricos, USB, Gamer, Trackballs" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Categoria de pruebas 3"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Impresion y Scanners" AS nombre_categorias, 
						"En esta categoria se encuentran todos productos relacionados con el manejo de 
documentos, Scanners, Impresoras, Multifuncionales" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Impresion y Scanners"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Pantallas" AS nombre_categorias, 
						"En esta categoria se encuentran todos productos relacionados con las pantallas y sus accesorios
bases, limpiadores, filtros" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Pantallas"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Repuestos" AS nombre_categorias, 
						"En esta categoria se encuentran todos productos relacionados con repuestos para computadoras, 
discos duros, memorias, tarjetas madre, procesadores, fuentes de poder y demas" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Repuestos"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Red" AS nombre_categorias, 
						"En esta categoria se encuentran todos productos relacionados con las redes, switches, routers, cables, 
tarjetas de red ethernet y WIFI, antenas" AS descripcion_categorias) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Red"
) LIMIT 1;

INSERT INTO categorias (nombre_categorias, descripcion_categorias)
SELECT * FROM (SELECT 	"Insumos" AS nombre_categorias, 
						"En esta categoria se encuentran todos productos relacionados con los insumos para computadoras, papel, tintas, tonner, 
memorias USB") AS tmp
WHERE NOT EXISTS (
    SELECT nombre_categorias FROM categorias WHERE nombre_categorias = "Insumos"
) LIMIT 1;

# Se muestran todos los datos de la tabla categorias para verificar su contenido.
SELECT * FROM categorias;