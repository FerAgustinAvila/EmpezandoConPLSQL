set serveroutput on
BEGIN
    FOR i IN 5..15 LOOP   --PLS_INTEGER
        dbms_output.put_line(i);
    END LOOP;
END;

/

DECLARE 
  i VARCHAR2(100):='AAAAA';
BEGIN
    FOR i IN REVERSE 5..15 LOOP   --PLS_INTEGER
        dbms_output.put_line(i);
        EXIT WHEN i=10;
    END LOOP;
    dbms_output.put_line(i);
END;