/*Crear una Excepción personalizada denominada CONTROL_REGIONES.
o Debe dispararse cuando al insertar o modificar una región queramos poner una clave superior a 200. 
Por ejemplo usando una variable con ese valor.
o En ese caso debe generar un texto indicando algo así como “Codigo no permitido. Debe ser inferior a 200”
o Recordemos que las excepciones personalizadas deben dispararse de forma manual con el RAISE.*/


SET SERVEROUTPUT ON
DECLARE
    CONTROL_REGIONES EXCEPTION;
    CODIGO NUMBER:=201;
BEGIN
    IF codigo > 200 then
        RAISE control_regiones;
    ELSE
        INSERT INTO REGIONS VALUES (CODIGO,'PRUEBA');
    END IF;
EXCEPTION
WHEN control_regiones THEN
    DBMS_OUTPUT.PUT_LINE('El codigo debe ser inferior a 200');
WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(SQLcode);
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/