SET SERVEROUTPUT ON

-- IF
/*DECLARE
    x   NUMBER := 20;
BEGIN
    IF
        x = 10
    THEN
        dbms_output.put_line('X:=10');
    ELSE
        dbms_output.put_line('X:=OTHER VALUE');
    END IF;
END;
*/



-- ELIF

DECLARE
    sales   NUMBER := 25000;
    bonus   NUMBER := 0;
BEGIN
    IF
        sales > 50000
    THEN
        bonus := 1500;
    ELSIF sales > 35000 THEN
        bonus := 500;
    ELSIF sales > 20000 THEN
        bonus := 150;
    ELSE
        bonus := 100;
    END IF;

    dbms_output.put_line('Sales = '
    || sales
    || ', bonus = '
    || bonus
    || '.');

END;