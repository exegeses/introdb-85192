# Consultas con relaciones
> Cuando queramos obtener datos provenientes de dos o más tablas vamos a implementar relaciones
> Tenemos dos técnicas para lograrlo

1. Table Relation
2. Joins

## Table Relation
> Para lograr esta técnica debemos mencionar en el listado de las tablas (después del FROM) cada una de las tablas separadas por comas
> Y luego mediante un filtro (WHERE)
> igualamos la clave foránea de la tabla principal con la clave primaria de la segunda tabla

> Sintaxis: 

    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.foreignKey = tabla2.primaryKey;  

    SELECT campoTabla1, campoTabla1, campoTabla2, campoTabla3  
      FROM tabla1, tabla2, tabla3  
      WHERE tabla1.foreignKey = tabla2.primaryKey  
        AND tabla1.foreignKey = tabla3.primaryKey;

> Ejemplo práctico: 

    SELECT producto, precio, marca, categoria  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;  

## Joins
> Para lograr esta técnica debemos mencionar **después del FROM** únicamente una tabla (sólo mencionamos la tabla de "hechos")
> Luego mediante la palabra reservada **JOIN** mencionamos la tabla secundaria
> Finalmente mediante la palabra reservada **ON** igualamos la clave foránea de la tabla de hechos con la clave primaria de la tabla secundaria
> Podríamos decir que cada **JOIN** tiene su propio **ON**

> Sintaxis:

    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.foreignKey = tabla2.primaryKey;

    SELECT campoTabla1, campoTabla1, campoTabla2, campoTabla3  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.foreignKey = tabla2.primaryKey
      JOIN tabla3  
        ON tabla1.foreignKey = tabla3.primaryKey;

> Ejemplo práctico:

    SELECT producto, precio, marca  
      FROM productos  
      JOIN marcas   
        ON productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, marca, categoria  
      FROM productos  
      JOIN marcas   
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  
