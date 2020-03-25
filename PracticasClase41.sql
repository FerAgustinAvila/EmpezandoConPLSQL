--PRACTICA 1 INICIALES
/*Crea un bloque PL/SQL con tres variables VARCHAR2: nombre, apellido1, apellido2

Debes visualizar las iniciales separadas por puntos.  Ademas siempre en mayúscula

Por ejemplo alberto pérez García --> A.P.G
*/
DECLARE
        NOMBRE1 VARCHAR2(20);
        NOMBRE2 VARCHAR2(20);
        APELLIDO VARCHAR2(20);
        INICIALES VARCHAR2(6);
BEGIN
    NOMBRE1:='Fernando';
    NOMBRE2:='Agustin';
    APELLIDO:='Avila';
    INICIALES:=SUBSTR(NOMBRE1,1,1)||'.'||SUBSTR(NOMBRE2,1,1)||'.'||SUBSTR(APELLIDO,1,1)||'.';
    DBMS_OUTPUT.PUT_LINE(UPPER(INICIALES));
END;
/
    
-- PRACTICA2- DIA DE NACIMIENTO
--Averiguar el nombre del día que naciste, por ejemplo "Martes"
DECLARE
    FEC_NAC DATE;
    DIA_SEMANA VARCHAR2(100);
BEGIN
    FEC_NAC:=TO_DATE('18/10/1995');
    DIA_SEMANA:=TO_CHAR(FEC_NAC,'DAY');
    DBMS_OUTPUT.PUT_LINE(DIA_SEMANA);
END;
/
    