# Modificación de registros en SQL
> Para modificar los datos dentro de una tabla utilizamos el comando **UPDATE**
> Debemos especificar mediante un filtro cuál es el registro a modificar

> Sintaxis

    UPDATE nombreTabla  
       SET nombreCampo = valor,   
           nombreCampo = valor  
      WHERE colPK = valorID;

> Ejemplo práctico: 

    UPDATE proveedores  
       SET razonSocial = 'Papelera del Plata S.A.'  
      WHERE idProveedor = 12; 

    UPDATE clientes  
       SET email = 'ana.martinez@mail.com',  
           telefono = '116667478'  
      WHERE idCliente = 5;  

> Caso práctico:
> suponiendo que tenemos una tabla llamada "productos"
> Y en dicha tabla tenemos una columna llamada "precio"
> Y también otra columna llamada "idMarca"

    tabla: productos
        |
         - columnas:  precio, idMarca

> Si quisiéramos incrementar el precio de todos los productos de una marca específica, el código sería:

    UPDATE productos    
        SET  
            precio = precio * 1.05  
        WHERE idMarca = 5;  


---
> Safe Update: MySQL Workbench cuenta con un módulo seguro para modificaciones y para bajas.
> Si yo me olvido de insertar el filtro **WHERE** me daría error. Pero cuidado que esto no es una característica de lenguaje SQL