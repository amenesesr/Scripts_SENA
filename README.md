# Implementacion de bases de datos SQL - Sena Colombia
Los scripts que se encuentran en este repositorio fueron escritos durante el curso virtual de Bases de datos SQL 
dictado por el Sena, para el cual se uso MySQL y Workbench.

El caso de estudio consiste en una base de datos para un negocio de venta de productos tecnologicos llamado 
Import Tech, ser requiere que la base de datos pueda almacenar, clientes, proveedores, productos, categorias,
ventas.

Cada estudiante era autonomo de diseñar su base de datos con las tablas que considerara necesarias, si nos daban
unas bases con unos campos pero teniamos la autonomia de agregarle mas datos si pensabamos que era necesario.

Mi base de datos tiene la estructura:

- proveedores: NIP_proveedores, nombre, web_proveedores, telefono, direccion
- categorias: id_categorias , nombre, descripcion
- productos: id_productos, nombre, precio, stock, NIP_proveedores, id_categorias
- ciudades: id_ciudades, nombre
- clientes: NIP_clientes, nombre, telefono1, telefono2, telefono3, id_ciudades, comuna_clientes, calle_clientes, numero_clientes
- ventas: consecutivo_ventas, fechahora, descuento, montofinal, NIP_clientes
- detalleventas: id_detalleventas, cantidad, valorventa, id_productos, consecutivo_ventas

Relaciones entre tablas (cardinalidad)
- Un proveedor puede dar muchos productos, un producto puede tener muchos proveedores.
- Una categoria puede tener varios productos, un producto solo puede tener una categoria.
- Una ciudad puede tener muchos clientes, un cliente solo puede tener una ciudad.
- Un cliente puede tener muchas ventas, una venta solo puede tener un cliente
- Una venta puede tener muchos detalleventas, un detalleventas solo puede tener una venta.

Los scripts estan distribuidos en varias carpetas con su funcion, se estan actualizando cosntantemente ya que se estan 
agregando datos mas reales a las tablas para hacer consultas con resultados mas efectivos, y cuando se encuentran nuevas 
sentencias se ponen en practica y se agregan a los respectivos scripts.
