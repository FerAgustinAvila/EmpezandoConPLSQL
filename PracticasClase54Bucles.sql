-- PR?CTICA1- 
/*TABLAS DE MULTIPLICAR
Vamos a crear la tabla de multiplicar del 1 al 10, con los tres tipos de bucles: LOOP, WHILE y FOR

*/
DECLARE    
   X NUMBER;
   Z NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ---------------------- LOOP ---------------------- ');
    X:=1;
    Z:=0;
    LOOP
        EXIT WHEN X=11;
        DBMS_OUTPUT.PUT_LINE('Tabla de multiplicar del : '||x);
        LOOP
           EXIT WHEN Z=11;           
           DBMS_OUTPUT.PUT_LINE(X*Z);
           Z:=Z+1;
        END LOOP;
        Z:=0;
        X:=X+1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' ----------------------------------------------------------------------------------------- ');
    DBMS_OUTPUT.PUT_LINE(' ');
END;

/


DECLARE
    
   X NUMBER;
   Z NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ---------------------- WHILE ---------------------- ');
    X:=1;
    Z:=0;
   WHILE X<11 LOOP
        DBMS_OUTPUT.PUT_LINE('Tabla de multiplicar del : '||x);
        WHILE Z<11 LOOP
            DBMS_OUTPUT.PUT_LINE(X*Z);
               Z:=Z+1;
        END LOOP;
        Z:=0;
        X:=X+1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' ----------------------------------------------------------------------------------------- ');
    DBMS_OUTPUT.PUT_LINE(' ');
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(' ---------------------- FOR ---------------------- ');
   FOR X IN 1..10  LOOP
    DBMS_OUTPUT.PUT_LINE('Tabla de multiplicar del : '||x);
        FOR Z IN 0..10 LOOP
            DBMS_OUTPUT.PUT_LINE(X*Z);
        END LOOP;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' ----------------------------------------------------------------------------------------- ');
    DBMS_OUTPUT.PUT_LINE(' ');
END;
/


--PRACTICA2- FRASE AL REVES
/*
Crear una variable llamada TEXTO de tipo VARCHAR2(100).

Poner alguna frase

Mediante un bucle, escribir la frase al revés, Usamos el bucle WHILE
*/
DECLARE
    FRASE VARCHAR2(100);
    LIMITE NUMBER;
    CONTADOR NUMBER;
    FRASE_AL_REVES VARCHAR2(100);
BEGIN
    FRASE:='SOBOR NOS';
    LIMITE:=LENGTH(FRASE);
    WHILE LIMITE>0 LOOP
        FRASE_AL_REVES:=FRASE_AL_REVES||SUBSTR(FRASE,LIMITE,1);
        LIMITE:=LIMITE-1;
    END LOOP;
        DBMS_OUTPUT.PUT_LINE(FRASE_AL_REVES);
END;
/

--PRACTICA 3. SALIR SI HAY UNA X
/*
Usando la práctica anterior, si en el texto aparece el carácter "x" debe salir del bucle. Es igual en mayúsculas o minúsculas.

Debemos usar la cláusula EXIT.
*/
DECLARE
    FRASE VARCHAR2(100);
    LIMITE NUMBER;
    CONTADOR NUMBER;
    FRASE_AL_REVES VARCHAR2(100);
BEGIN
    FRASE:='PROBANDO LA X PRUEBA DE SALIR';
    LIMITE:=LENGTH(FRASE);
    WHILE LIMITE>0 LOOP
        EXIT WHEN UPPER((SUBSTR(FRASE,LIMITE,1)))='X';
        FRASE_AL_REVES:=FRASE_AL_REVES||SUBSTR(FRASE,LIMITE,1);
        LIMITE:=LIMITE-1;
    END LOOP;
        DBMS_OUTPUT.PUT_LINE(FRASE_AL_REVES);
END;
/

--PRACTICA4- ASTERISCOS
/*
Debemos crear una variable llamada NOMBRE

Debemos pintar tantos asteriscos como letras tenga el nombre. Usamos un bucle FOR

Por ejemplo  Alberto --> *******
*/
DECLARE
    NOMBRE VARCHAR2(100);
    ASTERISCOS VARCHAR2(100);
BEGIN
    NOMBRE:='ALBERTO';
    FOR I IN 1..LENGTH(NOMBRE) LOOP
        ASTERISCOS:=ASTERISCOS||'*';
        
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(NOMBRE ||'-->'||ASTERISCOS);
END;
/
   
--PRACTICA 5- MULTIPLOS DE 4
/*
Creamos dos variables numéricas, "inicio y fin"

Las inicializamos con algún valor:

Debemos sacar los números que sean múltiplos de 4 de ese rango
*/
DECLARE
    INICIO NUMBER;
    FINAL NUMBER;
BEGIN
  INICIO:=10;
  FINAL:=200;
  FOR I IN INICIO..FINAL LOOP
    IF MOD(I,4)=0 THEN
        DBMS_OUTPUT.PUT_LINE(I);
    END IF;
   END LOOP;
END;
/
    
   
   
   