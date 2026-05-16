# Eliminar registros en SQL
> Para eliminar registros dentro de una tabla utilizamos el comando **DELETE**
> debemos especificado un filtro con la palabra reservada **WHERE** seguida de una condición

> Sintaxis: 

> ```sql
> DELETE FROM tabla WHERE colPK = valorID;
> ```

> Ejemplo práctico: 

> ```sql
> DELETE FROM proveedores ;
> ```

> ver: <https://youtu.be/i_cVJgIz_Cs?si=FZoJHXM4dj-fzult>

---
> Safe Update: MySQL Workbench cuenta con un módulo seguro para modificaciones y para bajas.
> Si yo me olvido de insertar el filtro **WHERE** me daría error. Pero cuidado que esto no es una característica de lenguaje SQL