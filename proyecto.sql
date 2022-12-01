SELECT * FROM proyecto.imm2020 WHERE NOM_MUN = 'Hermosillo';
SELECT * FROM proyecto.imm2020 WHERE NOM_MUN = 'Hermosillo';
SELECT COUNT(*) FROM imm2020; 
SELECT * FROM proyecto.imm2020; # Suele usar la consulta como "shcema.table"
SELECT CVE_ENT, NOM_ENT, COUNT(*) NumeroDeMunicipios FROM proyecto.imm2020 GROUP BY CVE_ENT; # seleccionamos el número de municipios por estado

SELECT * FROM imm2020;

# Promedio de variables por Estado de la República
CREATE OR REPLACE VIEW proyecto.Promedio_Por_Estado_IMM_2020 AS
SELECT CVE_ENT, NOM_ENT, SUM(POB_TOT) Población_Total, ROUND (AVG(PO2SM), 2) Porcantaje_Poblacion_promedio_2SM, 
ROUND (AVG(IM_2020), 2) IM_2020_promedio FROM proyecto.imm2020 GROUP BY CVE_ENT;
 
 # Promedio de variables por Estado de la República, pero sólo llamando a unos cuantos Estados, una vez creado
 # un View
 SELECT * FROM promedio_por_estado_imm_2020 WHERE CVE_ENT IN (01, 02, 03);
SELECT * FROM promedio_por_estado_imm_2020;
 
 
# Promedio de variables por Estado de la República, pero sólo llamando a unos cuantos Estados
SELECT CVE_ENT, NOM_ENT, SUM(POB_TOT) Población_Total, ROUND (AVG(PO2SM), 2) Porcantaje_Poblacion_promedio_2SM, 
 ROUND (AVG(IM_2020), 2) IM_2020_promedio FROM proyecto.imm2020 WHERE CVE_ENT IN (01, 02, 03) GROUP BY CVE_ENT;
 
 
 SELECT * FROM promedio_por_estado_imm_2020