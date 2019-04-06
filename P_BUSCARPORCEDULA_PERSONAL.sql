--------------------------------------------------------
-- Archivo creado  - sábado-abril-06-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure P_BUSCARPORCEDULA_PERSONAL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."P_BUSCARPORCEDULA_PERSONAL" 
(
  P_CEDULA IN NUMBER
) AS 
error_msg VARCHAR2(300);
CURSOR cpersonal (PC_CEDULA NUMBER)
    IS 
    SELECT cedula, nombre, apellido 
    FROM T_PERSONAL
    WHERE cedula = PC_CEDULA;

    registros   cpersonal%rowtype;

BEGIN
   OPEN cpersonal(P_CEDULA);
    LOOP
        FETCH cpersonal INTO registros;
        EXIT WHEN cpersonal%notfound;
        dbms_output.put_line('Cedula: '||registros.cedula||', '||'Nombre: '||registros.nombre||', '||
        'Apellido: '||registros.apellido);
    END LOOP;

    CLOSE cpersonal;
EXCEPTION  
WHEN OTHERS THEN
  
  error_msg := SQLERRM;
  DBMS_OUTPUT.put_line(error_msg);  
END P_BUSCARPORCEDULA_PERSONAL;

/
