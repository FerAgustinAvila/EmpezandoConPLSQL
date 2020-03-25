SET SERVEROUTPUT ON

declare                                                                                         
  bonus  number;
BEGIN
  bonus := 100;
  CASE 
    WHEN bonus >500 THEN DBMS_OUTPUT.PUT_LINE('Excellent');
    WHEN bonus <= 500 and bonus > 250 THEN DBMS_OUTPUT.PUT_LINE('Very Good');
    WHEN bonus <= 250 and bonus > 100 THEN DBMS_OUTPUT.PUT_LINE('Good');
    ELSE DBMS_OUTPUT.PUT_LINE('POOR!!!');
  END CASE;
END;
/

DECLARE                                                                                         
  vl  CHAR(1);
BEGIN
  vl := 'B';
  CASE  vl
    WHEN 'A' THEN DBMS_OUTPUT.PUT_LINE('Excellent');
    WHEN 'B' THEN DBMS_OUTPUT.PUT_LINE('Very good');
    WHEN 'C' THEN DBMS_OUTPUT.PUT_LINE('Good');
    WHEN 'D' THEN DBMS_OUTPUT.PUT_LINE('Fair');
    WHEN 'F' THEN DBMS_OUTPUT.PUT_LINE('Poor');
    ELSE DBMS_OUTPUT.PUT_LINE('No such value');
  END CASE;
END;
/