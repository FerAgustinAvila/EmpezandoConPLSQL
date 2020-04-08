/*
Modificar la practica anterior para disparar un error con RAISE_APPLICATION en vez de con PUT_LINE. 
Esto permite que la aplicación pueda capturar y gestionar el error que devuelve el PL/SQL
*/
SET SERVEROUTPUT ON
DECLARE
    CONTROL_REGIONES EXCEPTION;
    CODIGO NUMBER:=201;
BEGIN
    IF codigo > 200 THEN
        RAISE control_regiones;
    ELSE
        INSERT INTO REGIONS VALUES (CODIGO,'PRUEBA');
    END IF;
    EXCEPTION
        WHEN control_regiones THEN
            RAISE_APPLICATION_ERROR(-20001,'El codigo debe ser inferior a 200');
        WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(SQLcode);
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
