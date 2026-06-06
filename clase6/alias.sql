# alias en SQL
/*
   Podemos renombrar el iniciado de una columna utilizando un alias.
   El nombre de la columna no cambia simplemente esto es un renombrado para un reporte
   o una consulta.
   Podemos implementar un alias con la palabra reservada **AS**
   (se puede omitir)
        select nombreCampo AS nombreAlias
        select nombreCampo nombreAlias
 */

SELECT
        producto AS Producto,
        precio AS Contado,
        precio*1.05 AS Lista,
        marca AS Marca,
        categoria AS Categoría
FROM productos
JOIN marcas
  ON productos.idMarca = marcas.idMarca
JOIN categorias
  ON productos.idCategoria = categorias.idCategoria;

/* se puede aplicar un alias al nombre de una tabla */
SELECT
    producto AS Producto,
    precio AS Contado,
    precio*1.05 AS Lista,
    marca AS Marca,
    categoria AS Categoría
FROM productos AS p
JOIN marcas AS m
  ON p.idMarca = m.idMarca
JOIN categorias AS c
  ON p.idCategoria = c.idCategoria;
