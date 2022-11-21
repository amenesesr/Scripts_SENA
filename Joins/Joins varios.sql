# Seleccionar la base de datos Import_tech
USE import_tech;

# Realizar una consulta que me muestre la cedula del cliente en una columna y otra columna
# llamada cliente_ciudad que muestre el nombre del cliente y la ciudad en la que vive 
# usando la clausula INNER JOIN
SELECT cli.NIP_clientes, CONCAT (cli.nombre_clientes, ' ', ciu.nombre_ciudades) as 'cliente_ciudad'
FROM clientes cli INNER JOIN  ciudades ciu 
ON cli.id_ciudades = ciu.id_ciudades;

# Realizar una consulta que me muestre las columnas cedula y nombre de cliente de la tabla clientes
# y el nombre de la ciudad de la tabla ciudades usando la clausula LEFT JOIN  de forma que si una
# ciudad no tiene clientes registrados muestre un null
SELECT cli.NIP_clientes, cli.nombre_clientes, ciu.nombre_ciudades as 'cliente_ciudad'
FROM ciudades ciu LEFT JOIN clientes cli
ON ciu.id_ciudades = cli.id_ciudades;

# Realizar una consulta que me muestre las columnas cedula y nombre de cliente de la tabla clientes
# y el nombre de la ciudad de la tabla ciudades usando la clausula RIGHT JOIN  de forma que unicamente
# muestre los clientes con su ciudad y si una ciudad no tiene clientes simplemente no se muestra
SELECT cli.NIP_clientes, cli.nombre_clientes, ciu.nombre_ciudades as 'cliente_ciudad'
FROM ciudades ciu RIGHT JOIN clientes cli
ON ciu.id_ciudades = cli.id_ciudades ;

# Crear una consulta que muestre el nombre del cliente en una columna y en otra que se llame direccion
# y que contenga la ciudad, la comuna, la calle y el numero de la tabla clientes usando la clausula INNER JOIN
SELECT clientes.nombre_clientes, CONCAT(ciudades.nombre_ciudades, ' Comuna ', 
										clientes.comuna_clientes, ' Calle ', 
										clientes.calle_clientes, ' # ',
                                        clientes.numero_clientes ) AS direccion
FROM ciudades INNER JOIN clientes
ON clientes.id_ciudades = ciudades.id_ciudades;