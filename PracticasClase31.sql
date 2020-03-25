--1-Visualizar el nombre y apellidos. Primero separados y luego concatenados con el operador ||

SET SERVEROUTPUT ON
BEGIN
    DBMS_OUTPUT.PUT_LINE('Fernando');
    DBMS_OUTPUT.PUT_LINE('Avila');
    DBMS_OUTPUT.PUT_LINE('Fernando'||' '||'Avila');
END;
/
    
--3-Crear dos variables de tipo num�rico y visualizar su suma
DECLARE
   A NUMBER;
   B NUMBER;
   RESULTADO NUMBER;
BEGIN
    A:=10;
    B:=20;
    RESULTADO:=A+B;
    DBMS_OUTPUT.PUT_LINE('RESULTADO:'||RESULTADO);
END;
/

--4-Modificar el ejemplo anterior y ponemos null como valor de una de las variables. �Qu� resultado arroja? Volvemos a ponerla un valor num�rico
--Arroja NULL, es decir no se ve nada en este caso. Cualquier operaci�n con un NULL devuelve NULL
DECLARE
   A NUMBER;
   B NUMBER;
   RESULTADO NUMBER;
BEGIN
    A:=10;
    B:=NULL;
    RESULTADO:=A+B;
    DBMS_OUTPUT.PUT_LINE('RESULTADO:'||RESULTADO);
END;
/

--5-A�adir una constante al ejercicio. Sumamos las 2 variables y la constantes. Intentar modificar la constante. �Es posible?
-- SI INTENTAMOS CAMBIAR UNA CONSTANTE DEBE ARROJAR UN ERROR. PROBAR INTENTANDO CAMBIAR LA VARIABLE C EN ESTE CASO
DECLARE
   A NUMBER;
   B NUMBER;
   C CONSTANT NUMBER :=40;
   RESULTADO NUMBER;
BEGIN
    A:=10;
    B:=20;
    RESULTADO:=A+B+C;
    DBMS_OUTPUT.PUT_LINE('RESULTADO:'||RESULTADO);
END;
/



--6-Crear un bloque an�nimo que tenga una variable de tipo VARCHAR2 con nuestro nombre, otra num�rica con la edad y una tercera con la fecha de nacimiento.
-- Visualizarlas por separado y luego intentar concatenarlas. �es posible?
DECLARE
  NOMBRE VARCHAR(50):='APASOFT';
  EDAD NUMBER:=45;
  FECHA_NAC DATE:='16-06-1975';
BEGIN
    DBMS_OUTPUT.PUT_LINE(NOMBRE||' '||EDAD||' '||FECHA_NAC);
END;
/