# Se especifica la base de datos sobre la cual se va a trabajar.
USE Import_tech;

# Se insertan los datos de prueba en la tabla ciudades.
INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Bogota" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Bogota"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Medellin" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Medellin"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Cali" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Cali"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Barranquilla" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Barranquilla"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Pasto" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Pasto"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Caldas" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Caldas"
) LIMIT 1;

INSERT INTO ciudades (nombre_ciudades)
SELECT * FROM (SELECT "Cartagena" AS nombre_ciudades) AS tmp
WHERE NOT EXISTS (
    SELECT nombre_ciudades FROM ciudades WHERE nombre_ciudades = "Cartagena"
) LIMIT 1;

# Se muestran todos los datos de la tabla categorias para verificar su contenido.
SELECT * FROM ciudades;
