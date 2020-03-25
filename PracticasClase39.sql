-- Indicar que valores visualiza X en los 3 casos de este ejemplo?
SET SERVEROUTPUT ON
DECLARE
    X NUMBER:=10;
BEGIN
    DBMS_OUTPUT.PUT_LINE(X);
    DECLARE
       X NUMBER:=20;
    BEGIN
       DBMS_OUTPUT.PUT_LINE(X);
    END;

DBMS_OUTPUT.PUT_LINE(X);
END;
/
/*
Soluci�n:
10
20
10
*/
--�Es este bloque correcto? Si no es as� �por qu� falla?
BEGIN
    DBMS_OUTPUT.PUT_LINE(X);--error
    DECLARE
       X NUMBER:=20;
    BEGIN
       DBMS_OUTPUT.PUT_LINE(X);
    END;
    DBMS_OUTPUT.PUT_LINE(X);--error
END;
/

--Falla porque la variable X esta solo en el bloque anidado y por tanto no puede ser vista desde el bloque principal


SET SERVEROUTPUT ON
DECLARE
    X NUMBER:=10;
BEGIN
    DBMS_OUTPUT.PUT_LINE(X);
    
    BEGIN
       DBMS_OUTPUT.PUT_LINE(X);
    END;
    DBMS_OUTPUT.PUT_LINE(X);
END;
/
/*
Es correcto porque la variable X definida en el padre es vista por el bloque hijo
Los valores visualizados son 
10
10
10
*/