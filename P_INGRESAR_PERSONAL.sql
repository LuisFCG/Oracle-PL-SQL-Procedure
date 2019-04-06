--------------------------------------------------------
-- Archivo creado  - sábado-abril-06-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure P_INGRESAR_PERSONAL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."P_INGRESAR_PERSONAL" 
(
  P_ID IN NUMBER
, P_CEDULA IN NUMBER 
, P_NOMBRE IN VARCHAR2 
, P_APELLIDO IN VARCHAR2 
, P_COD_CARGO IN VARCHAR2 
, P_COD_UBICACION IN VARCHAR2 
) AS 
 error_msg VARCHAR2(300);
BEGIN
 INSERT INTO T_PERSONAL(ID, CEDULA, NOMBRE, APELLIDO, COD_CARGO, COD_UBICACION)
values (P_ID, P_CEDULA, P_NOMBRE, P_APELLIDO, P_COD_CARGO, P_COD_UBICACION);
 
 
EXCEPTION  
WHEN OTHERS THEN
  
  error_msg := SQLERRM;
  DBMS_OUTPUT.put_line(error_msg);
END P_INGRESAR_PERSONAL;

/
