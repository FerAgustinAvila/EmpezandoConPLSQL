SET SERVEROUTPUT ON

DECLARE
    x   NUMBER := 20;  --GLOBAL
    Z   NUMBER:=30;
BEGIN
    dbms_output.put_line('X:='|| x);
    
    -- Bloque hijo
    DECLARE
        x   NUMBER := 10;  --LOCAL
        z   number:=100;
        y number:=200;
    BEGIN
        dbms_output.put_line('X:='|| x);
        dbms_output.put_line('Z:='|| Z);
    END;
    -- Fin de bloque hijo
    
    /*dbms_output.put_line('Y:='|| y);   
    Esta linea genera un error, porque Y es del bloque hijo*/
END;