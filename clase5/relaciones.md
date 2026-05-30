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

