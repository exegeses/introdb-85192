# Insertar datos en SQL
> En SQL tenemos tres maneras principales de insertar datos dentro de una tabla
> Estas tres maneras comienzan del mismo modo

    INSERT INTO nombreTabla  

## Sintaxis usando SET

    INSERT INTO nombreTabla  
       SET 
            nombreColumna = valorColumna,  
            nombreColumna2 = valorColumna2,  
            nombreColumna3 = valorColumna3,  
            nombreColumnaX = valorColumnaX,

> Ejemplo práctico

    INSERT INTO clientes  
       SET 
            idCliente = 1,  
            nombre = 'Lucía',  
            apellido = 'González',  
            dni = 45666777,  
            telefono = 1123456789,  
            email = 'lucia.gonzalez@mail.com',  
            fechaAlta = '2024-05-12';  
