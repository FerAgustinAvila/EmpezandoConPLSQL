SET SERVEROUTPUT ON
-- -- Predifinidas
DECLARE
    EMPL EMPLOYEES%ROWTYPE;
BEGIN
    SELECT * INTO EMPL
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID>1;
    
    DBMS_OUTPUT.PUT_LINE(EMPL.FIRST_NAME);
EXCEPTION
-- NO_DATA_FOUND   ORA-01403
-- TOO_MANY_ROWS
-- ZERO_DIVIDE
-- DUP_VAL_ON_INDEX
   WHEN NO_DATA_FOUND THEN 
       DBMS_OUTPUT.PUT_LINE('ERROR, EMPLEADO INEXISTENTE');
  WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR, DEMASIADOS EMPLEADO');
   WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR INDEFINIDO');

END;

-- No predifinidas
SET SERVEROUTPUT ON
DECLARE
   MI_EXCEP EXCEPTION;
   PRAGMA EXCEPTION_INIT(MI_EXCEP,-937);
   V1 NUMBER;
   V2 NUMBER;
BEGIN
    SELECT EMPLOYEE_ID,SUM(SALARY) INTO V1,V2 FROM EMPLOYEES; 
    DBMS_OUTPUT.PUT_LINE(V1);
EXCEPTION
   WHEN MI_EXCEP THEN 
       DBMS_OUTPUT.PUT_LINE('FUNCION DE GRUPO INCORRECTA');
   WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR INDEFINIDO');
END;




