# Modificación de estructura de una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla  
      CHANGE nombreOLD nombreNEW tipoDato [modificadores];  

> Tener en cuenta que debemos mencionar el tipo de dato porque si no no dará error
> Además hay un modificador como **NOT NULL** que si no lo mantenemos se pierde; 

    ALTER TABLE proveedores  
      CHANGE id_proveedor idProveedor smallint unsigned auto_increment; 

    ALTER TABLE proveedores    
      CHANGE razon_social razonSocial varchar(60) not null;  

## Cambiar tipo de datos o modificadores de una columna

    ALTER TABLE nombreTabla  
      MODIFY nombreColumna tipoDato [modificadores];  

    ALTER TABLE clientes  
      MODIFY idCliente smallint unsigned auto_increment,  
      MODIFY nombre varchar(60) not null,  
      MODIFY apellido varchar(60) not null;    

## Agregar una nueva columna

    ALTER TABLE nombreTable  
      ADD nombreColumna tipoDato [modificadores];  

    ALTER TABLE clientes  
      ADD observaciones varchar(1000);  

## Agregar una nueva columna luego de una columna existente

    ALTER TABLE nombreTable  
      ADD nombreColumna tipoDato [modificadores]  
      AFTER nombreColumnaExistente;  

    ALTER TABLE clientes  
      ADD email2 varchar(50) not null  
      AFTER fechaAlta;  

> Nota: del mismo modo que existe la palabra **AFTER** para ubicar después de un campo existente, también existe **BEFORE** para ubicar antes de un campo existente. No se puede utilizar **BEFORE** antes de un primary key.

## Eliminar una columna

    ALTER TABLE nombreTabla  
      DROP nombreColumna;  

    ALTER TABLE clientes  
      DROP email2;  
