# Consulta en SQL
> Podemos realizar consultas a:

1. Servidor
2. Base de datos
3. Tablas
4. Vistas

## Consultas a Servidor

    -- listar todas las bases de datos de un server  
    SHOW DATABASES;  

    -- ver cuál es la base de datos activa  
    SELECT DATABASE();  

    -- listar los usuarios conectados  
    SELECT USER();  

## Consultas a Base de Datos

    -- listar todas las tablas de una base de datos  
    SHOW TABLES;  

    SELECT TABLE_NAME FROM   
      information_schema.tables  
      WHERE table_schema = DATABASE();  

## Consultas a Tablas

    -- ver la estructura de una tabla  
    DESCRIBE TABLE_NAME;  
    SHOW COLUMNS FROM TABLE_NAME;  

    -- obtener grillas de resultados con los registros  
    SELECT * FROM table_name;  
    SELECT * FROM clientes;  
    SELECT * FROM marcas;  
    SELECT * FROM productos;  

> En estas consultas vamos a obtener la totalidad de registros y siempre vamos a ver todas las columnas de una tabla
> Si queremos obtener una grilla de resultados que muestre únicamente algunas columnas
> vamos a reemplazar el símbolo de * (asterisco) pon un listado de las columnas (separadas por comas)

    -- listar todos los registros de la tabla proveedores  
    -- pero sólo quiero ver la razón social y el teléfono 
    SELECT razonSocial, telefono  
      FROM proveedores;  

    -- obtener apellido, nombre y teléfono de la tabla clientes  
    SELECT apellido, nombre, telefono  
      FROM clientes;  

    -- obtener nombre del producto y precio
    SELECT producto, precio     
      FROM productos;  

### Orden de resultados  
> Cuándo obtenemos una grilla de resultados estos siempre vienen ordenados **de manera predeterminada**
> podemos modificar el orden de los resultados con el modificador **ORDER BY**

    SELECT razonSocial, telefono  
      FROM proveedores  
      ORDER BY razonSocial;  

    SELECT *  
      FROM marcas  
      ORDER BY idMarca;
