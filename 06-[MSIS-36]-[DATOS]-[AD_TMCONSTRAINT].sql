
DO
$$
DECLARE
  VA_USUINS CHARACTER VARYING (15) :='ROOT';
  VA_TERINS CHARACTER VARYING (30) :='ROOT';
  VA_IPEINS CHARACTER VARYING (20) :='ROOT';
  VA_FECINS TIMESTAMP WITHOUT TIME ZONE :=NOW();
  VC_ESTREG CHARACTER VARYING (1):='S';
BEGIN

	INSERT INTO AD_TMCONSTRAINT(C_NOMTAB, C_NOMCAM,C_VALCON , C_DESCRI, C_ABREVI, N_ORDVIS, C_ESTREG,A_FECINS, A_USUINS,A_TERINS, A_IPEINS)
	VALUES ('NID_RIESGO','NR_SOCIO','RIESGO BAJO','RIESGO BAJO','RB',1,VC_ESTREG,VA_FECINS,VA_USUINS,VA_TERINS, VA_IPEINS);

	INSERT INTO AD_TMCONSTRAINT(C_NOMTAB, C_NOMCAM,C_VALCON , C_DESCRI, C_ABREVI, N_ORDVIS, C_ESTREG,A_FECINS, A_USUINS,A_TERINS, A_IPEINS)
	VALUES ('NID_RIESGO','NR_SOCIO','RIESGO MEDIO','RIESGO MEDIO','RM',2,VC_ESTREG,VA_FECINS,VA_USUINS,VA_TERINS, VA_IPEINS);

	
	RAISE NOTICE 'HECHO!!';
	
END;
$$  

