# Filtrado de registros
> Cuándo hacemos una consulta sin ningún filtro obtenemos un listado de todos los registros que hay dentro de una tabla
> Filtrar registros significa que mediante una condición vamos a obtener solamente aquellos registros que cumplan con dicha condición
> Para implementar un filtro SQL utilizamos la palabra clave **WHERE**

> Obtener un listado de todos los productos de la marca "Motorola"

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca = 9;  

> Obtener un listado de todos los productos con un precio hasta 1000000

    SELECT producto, precio  
      FROM productos  
      WHERE precio <= 1000000  

## Implementando más de una condición
> Obtener todos los productos de la marca Apple con un precio hasta 1 millón

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca = 1  
        AND precio <= 1000000  
      ORDER BY precio;  


> Obtener todos los productos con un precio entre 100,000 y 1,000,000

    SELECT producto, precio  
      FROM productos  
      WHERE precio >= 100000  
        AND precio <= 1000000;  

> uso de BETWEEN

    SELECT producto, precio    
      FROM productos  
	  WHERE precio BETWEEN 100000 AND 1000000;  

> Funciones de fecha
> Tenemos varias funciones de ficha que podemos utilizar
> En este caso vamos a usar MONTH() y YEAR()

    SELECT *
      FROM clientes
      WHERE MONTH(fechaAlta) = 5 
		AND	YEAR(fechaAlta) = 2024;

> Obtener un listado de las marcas 'Apple' y 'Samsung'

    SELECT producto, precio, idMarca  
      FROM productos  
      WHERE idMarca = 1  
        OR idMarca = 2;  

> función IN()

    SELECT producto, precio, idMarca  
      FROM productos
      WHERE idMarca IN(1, 2, 15);  

    SELECT * FROM clientes
       WHERE apellido IN('pérez','garcía');


## Resumen de la sintaxis

    SELECT [*, campos]  
      FROM tabla/s  
      WHERE condición/es  
      ORDER BY [campo, campo]  

