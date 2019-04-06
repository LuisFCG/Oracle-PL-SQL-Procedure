--------------------------------------------------------
-- Archivo creado  - lunes-abril-01-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure P_LISTAR_CARGOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."P_LISTAR_CARGOS" AS
    CURSOR lcargos 
    IS 
    SELECT nombre_cargo FROM T_CARGO;

    registros   lcargos%rowtype;
BEGIN
    OPEN lcargos;
    LOOP
        FETCH lcargos INTO registros;
        EXIT WHEN lcargos%notfound;
        dbms_output.put_line(registros.nombre_cargo);
    END LOOP;

    CLOSE lcargos;
END p_listar_cargos;

/
