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

    INSERT INTO clientes  
       SET  
            nombre = 'Martín',  
            apellido = 'Pérez',  
            dni = 45664777,  
            telefono = 1123446789,  
            email = 'martin.perez@mail.com',  
            fechaAlta = '2024-04-16';  

## Sintaxis completa (se mencioanan los campos)

    INSERT INTO nombreTabla  
        ( nombreCampo, nombreCampo2, nombreCampo3, nombreCampoX )  
      VALUES  
        ( valorCampo, valorCampo2, valorCampo3, valorCampoX );  

> Ejemplo práctico: 

    INSERT INTO clientes  
        ( idCliente, nombre, apellido, dni, telefono, email, fechaAlta )  
      VALUES  
        ( DEFAULT, 'Sofía', 'Ramírez', 45654777, 1144455566, 'sofia.ramirez@mail.com', '2024-06-15' ); 

    INSERT INTO clientes  
            ( nombre, apellido, dni, telefono, email, fechaAlta )  
        VALUES  
            ( 'Carlos', 'López', 45254777, 1144455567, 'carlos.lopez@mail.com', '2024-06-20' );  

## Sintaxis simplificada (NO se mencioanan los campos)

    INSERT INTO nombreTabla  
      VALUES  
        ( valorCampo, valorCampo2, valorCampo3, valorCampoX );  

> En esta sintaxis, si bien no mencionamos los nombres de los campos, estamos obligados a mencionar **todos y cada uno** de los valores en el orden exacto que están declarados

> Ejemplo práctico: 

    INSERT INTO clientes  
      VALUES  
        ( DEFAULT, 'Ana', 'Martínez', 43254777, 1166677788, NULL, '2024-06-25' );  

### insertar múltiples registros
> En algunos casos vamos a necesitar insertar varios registros
> no es obligatorio utilizar un **insert** por cada uno de los registros a insertar
> podemos utilizar un único **INSERT** para varios registros

    INSERT INTO nombreTabla  
        ( nombreCampo, nombreCampo2, nombreCampo3, nombreCampoX )  
      VALUES  
        ( valorCampo, valorCampo2, valorCampo3, valorCampoX ),  
        ( valorCampo, valorCampo2, valorCampo3, valorCampoX ),  
        ( valorCampo, valorCampo2, valorCampo3, valorCampoX );  


    INSERT INTO nombreTabla  
      VALUES  
        ( DEFAULT, valorCampo2, valorCampo3, valorCampoX ),  
        ( DEFAULT, valorCampo2, valorCampo3, valorCampoX ),  
        ( DEFAULT, valorCampo2, valorCampo3, valorCampoX );  