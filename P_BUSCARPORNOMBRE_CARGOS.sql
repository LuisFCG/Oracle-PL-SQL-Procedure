--------------------------------------------------------
-- Archivo creado  - sábado-abril-06-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure P_BUSCARPORNOMBRE_CARGOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."P_BUSCARPORNOMBRE_CARGOS" 
(
  P_NOMBRE IN VARCHAR2 
) AS 
error_msg VARCHAR2(300);
CURSOR lcargos (PC_NOMBRECARGO VARCHAR2)
    IS 
    SELECT nombre_cargo 
    FROM T_CARGO
   -- WHERE nombre_cargo like '%'||PC_NOMBRECARGO||'%'; --SI ES PARA BUSQUEDA EN GENERAL
   WHERE nombre_cargo = PC_NOMBRECARGO; --PARA BUSQUEDA EXACTA

    registros   lcargos%rowtype;

BEGIN
    OPEN lcargos(P_NOMBRE);
    LOOP
        FETCH lcargos INTO registros;
        EXIT WHEN lcargos%notfound;
        dbms_output.put_line(registros.nombre_cargo);
    END LOOP;

    CLOSE lcargos;
EXCEPTION  
WHEN OTHERS THEN
  
  error_msg := SQLERRM;
  DBMS_OUTPUT.put_line(error_msg);    
END P_BUSCARPORNOMBRE_CARGOS;

/
