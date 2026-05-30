# Consultas con operador de coincidencia
> En algunos casos vamos a querer obtener registros que contengas una palabra o parte de una palabra 
> Por ejemplo todos los productos que contengan "wireless" o "wire" en la columna descripción

   SELECT producto, precio, descripcion  
    FROM productos  
    WHERE descripcion = "pantalla";  

> Esta consulta registro porque no hay ningún producto que en la columna diga únicamente "pantalla"
> Cuando queremos encontrar que contenga una palabra o un fragmento de una palabra vamos a usar el operador **LIKE** combinado con el caracter "%"
> Este "%" funciona como una especie de comodín que puedo ocupar uno, varios o incluso ningún carácter

    SELECT producto, precio, descripcion  
      FROM productos  
      WHERE descripcion LIKE "%pantalla%";  

