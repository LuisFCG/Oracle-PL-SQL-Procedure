--------------------------------------------------------
-- Archivo creado  - lunes-abril-08-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure P_ELIMINAR_CARGO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."P_ELIMINAR_CARGO" 
(
  P_COD_CARGO IN VARCHAR2 
) AS 
 error_msg VARCHAR2(300);
BEGIN
  
  delete t_cargo
  where COD_CARGO = 'P_COD_CARGO';
  EXCEPTION  
WHEN OTHERS THEN
  
  error_msg := SQLERRM;
  DBMS_OUTPUT.put_line(error_msg);
END P_ELIMINAR_CARGO;

/
