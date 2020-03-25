-- PRACTICA PAR IMPAR
/*
Debemos hacer un bloque PL/SQL anónimo, donde declaramos una variable NUMBER y la ponemos algún valor.

Debe indicar si el número es PAR o IMPAR. Es decir debemos usar IF..... ELSE para hacer el ejercicio

Como pista, recuerda que hay una función en SQL denominada MOD, que permite averiguar el resto de una división. 
*/
DECLARE
    VALOR NUMBER;
    RESULTADO NUMBER;
BEGIN
    VALOR :=10;
    RESULTADO := MOD(VALOR, 2);
    IF RESULTADO = 0 THEN
        DBMS_OUTPUT.PUT_LINE('PAR');
    ELSE
        DBMS_OUTPUT.PUT_LINE('IMPAR');
    END IF;
END;
/


--PR?CTICA TIPO PRODUCTO
/*
Crear una variable CHAR(1) denominada TIPO_PRODUCTO.

Poner un valor entre "A" Y "E"

Visualizar el siguiente resultado según el tipo de producto

  'A'  --> Electronica

  'B'  -->  Informática

  'C'  --> Ropa

   'D' --> Música

   'E' --> Libros

Cualquier otro valor debe visualizar "El código es incorrecto"
*/
SET SERVEROUTPUT ON
DECLARE
  TIPO_PRODUCTO CHAR(1);
BEGIN
  TIPO_PRODUCTO:=UPPER('J');
IF TIPO_PRODUCTO='A' THEN 
    DBMS_OUTPUT.PUT_LINE('ELECTR?NICA');
ELSIF TIPO_PRODUCTO='B' THEN 
    DBMS_OUTPUT.PUT_LINE('INFORM?TICA');
ELSIF TIPO_PRODUCTO='C' THEN 
    DBMS_OUTPUT.PUT_LINE('ROPA');
ELSIF TIPO_PRODUCTO='D' THEN 
    DBMS_OUTPUT.PUT_LINE('M?SICA');
ELSIF TIPO_PRODUCTO='E' THEN 
    DBMS_OUTPUT.PUT_LINE('LIBRO');
ELSE
    DBMS_OUTPUT.PUT_LINE('CÓDIGO INCORRECTO ');
END IF;
END;

