--------------------------------------------------------
-- Archivo creado  - domingo-marzo-31-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure P_INGRESAR_CARGO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."P_INGRESAR_CARGO" 
(
  P_COD_CARGO IN VARCHAR2 
, P_NOMBRE_CARGO IN VARCHAR2 
) AS 
    error_msg VARCHAR2(300);
BEGIN
INSERT INTO T_CARGO(COD_CARGO, NOMBRE_CARGO)
values (P_COD_CARGO, P_NOMBRE_CARGO);
 
 
EXCEPTION  
WHEN OTHERS THEN
  
  error_msg := SQLERRM;
  DBMS_OUTPUT.put_line(error_msg);
 
END P_INGRESAR_CARGO;

/
