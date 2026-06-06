# Practica con relaciones entre tablas
/* 1. Obtener producto, precio de la tabla productos
      Y además nombre de la marca de la tabla marcas
      Y además nombre de la categoría de la tabla categorías
*/
### sintaxis
SELECT producto, precio, marca, categoria
FROM productos, marcas, categorias
WHERE productos.idMarca = marcas.idMarca
  AND productos.idCategoria = categorias.idCategoria;

/*
 2. Obtener título de la tabla libros
     Y además género de la tabla géneros
     Y además editorial de la tabla editoriales
 */
 SELECT titulo, genero, editorial
 FROM libros, generos, editoriales
 WHERE libros.idEditorial = editoriales.idEditorial
   AND libros.idGenero = generos.idGenero;

SELECT titulo, genero, editorial
FROM libros
 JOIN generos
      ON libros.idGenero = generos.idGenero
 JOIN editoriales
      ON libros.idEditorial = editoriales.idEditorial;
