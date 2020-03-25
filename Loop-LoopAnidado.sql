SET SERVEROUTPUT ON
-- LOOP
DECLARE
   X NUMBER:=1;
BEGIN
    LOOP 
     DBMS_OUTPUT.PUT_LINE(X);
     X:=X+1;
    /* IF X = 11
       THEN EXIT;
     END IF;*/
     EXIT WHEN X=11;
    END LOOP;
END;

/

DECLARE
  i  PLS_INTEGER := 0;
  j  PLS_INTEGER;
BEGIN
  <<parent>>
  LOOP
    i := i + 1;
    j := 100;
    DBMS_OUTPUT.PUT_LINE('Parent:'||i);
    <<child>>
    LOOP
      --Print child
      dbms_output.put_line('Child:'||j);
      j:=j+1;
     EXIT child WHEN (j > 105);
      EXIT parent WHEN (i> 3);
      
    END LOOP child;
  END LOOP parent;
  DBMS_OUTPUT.PUT_LINE('FINISH!!!');
END;
/