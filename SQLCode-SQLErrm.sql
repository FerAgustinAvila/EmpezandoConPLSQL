SET SERVEROUTPUT ON

/*
CREATE TABLE ERRORS 
(
  CODE NUMBER NOT NULL 
, MESSAGE VARCHAR2(100) 
);

*/

DECLARE
    EMPL EMPLOYEES%ROWTYPE;
    CODE NUMBER;
    MESSAGE VARCHAR2(100);
BEGIN
    SELECT * INTO EMPL FROM EMPLOYEES;
    DBMS_OUTPUT.PUT_LINE(EMPL.SALARY);
EXCEPTION   
   WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLCODE);
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
        CODE:=SQLCODE;
        MESSAGE:=SQLERRM;
        INSERT INTO ERRORS VALUES (CODE,MESSAGE);
        COMMIT;
END;
