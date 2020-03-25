/*
Vamos a crear una variable denominada "usuario", de tipo VARCHAR2(40)

Vamos a poner dentro el nombre del usuario que somos, usando la función USER de ORacle que devuelve el nombre del usuario con el que estamos conectados (Recuerda que en Oracle no hace falta poner paréntesis si una función no tiene argumentos)

               usuario:=user

Luego hacermos un CASE para que nos pinte un mensaje del estilo:

    Si el usuario es SYS ponemos el mensaje "Eres superadministrador"
    Si el usuario es SYSTEM ponemos el mensaje "Eres un administrador normal"
    Si el usuario es HR ponemos el mensaje "Eres de Recursos humanos"
   Cualquier otro usuario ponemos "usuario no autorizado
La solución está en el archivo adjunto a este capítulo

Cualquier duda, me preguntas
*/

SET SERVEROUTPUT ON

DECLARE
  USUARIO VARCHAR2(30);
BEGIN
  USUARIO:=USER;  
CASE USUARIO
  WHEN 'SYS' THEN DBMS_OUTPUT.PUT_LINE('ERES SUPERADMINISTRADOR');
  WHEN 'SYSTEM' THEN DBMS_OUTPUT.PUT_LINE('ERES ADMINISTRADOR NORMAL');
  WHEN 'HR' THEN DBMS_OUTPUT.PUT_LINE('ERES DE RECURSOS HUMANOS');
  ELSE DBMS_OUTPUT.PUT_LINE('USUARIO NO AUTORIZADO');
END CASE;
END;

-- Respuesta = "ERES DE RECURSOS HUMANOS"