# TOUT AUDITEUR

SELECT DISTINCT a.auditeur_code AS "Code", a.auditeur_nom AS "Nom", a.auditeur_prenom AS "Prénom", inscription_situation_professionnelle AS "Situation professionnelle", auditeur_ville AS "Ville", auditeur_mel_pers AS "Courriel personnel", SUM(uo.semestre_code) AS "Total Sem"

	FROM auditeur_CEN a INNER JOIN inscription_CEN i ON a.auditeur_numero=i.auditeur_numero 
	INNER JOIN inscription_unite_CEN iu ON i.annee = iu.annee AND i.centre_code = iu.centre_code AND i.auditeur_numero = iu.auditeur_numero 
	INNER JOIN unite_ouverte_CEN uo ON iu.annee = uo.annee AND iu.centre_code = uo.centre_code AND iu.semestre_code = uo.semestre_code AND iu.unite_numero = uo.unite_numero AND iu.groupe_code = uo.groupe_code 
	INNER JOIN unite_CEN u ON iu.unite_numero = u.unite_numero 
		WHERE i.annee IN (2020)
		AND i.centre_code IN (292,293,737,287,288,289,290,231,291,416,774,327,770,740,325,331,411,307,330,329,328,326,359,286)  
		AND uo.etat_ouverture_code = 'O' 
		AND i.inscription_etat = 'Validée' AND iu.inscription_unite_etat = 'Validée' 

GROUP BY a.auditeur_code, a.auditeur_nom, a.auditeur_prenom, inscription_situation_professionnelle, auditeur_ville, auditeur_mel_pers
ORDER BY a.auditeur_nom, a.auditeur_prenom

# AUDITEURS INSCRITS SEMESTRE 1 ET SEMESTRE 2

SELECT DISTINCT a.auditeur_code AS "Code", a.auditeur_nom AS "Nom", a.auditeur_prenom AS "Prénom", inscription_situation_professionnelle AS "Situation professionnelle", auditeur_ville AS "Ville", auditeur_mel_pers AS "Courriel personnel", SUM(uo.semestre_code) AS "Total Sem"

	FROM auditeur_CEN a INNER JOIN inscription_CEN i ON a.auditeur_numero=i.auditeur_numero 
	INNER JOIN inscription_unite_CEN iu ON i.annee = iu.annee AND i.centre_code = iu.centre_code AND i.auditeur_numero = iu.auditeur_numero 
	INNER JOIN unite_ouverte_CEN uo ON iu.annee = uo.annee AND iu.centre_code = uo.centre_code AND iu.semestre_code = uo.semestre_code AND iu.unite_numero = uo.unite_numero AND iu.groupe_code = uo.groupe_code 
	INNER JOIN unite_CEN u ON iu.unite_numero = u.unite_numero 
		WHERE i.annee IN (2020)
        AND uo.semestre_code = "1"
		AND i.centre_code IN (292,293,737,287,288,289,290,231,291,416,774,327,770,740,325,331,411,307,330,329,328,326,359,286)  
		AND uo.etat_ouverture_code = 'O' 
		AND i.inscription_etat = 'Validée' AND iu.inscription_unite_etat = 'Validée' 

    FROM (
        SELECT a.auditeur_code AS "Code", auditeur_titre AS "Titre", a.auditeur_nom AS "Nom", a.auditeur_prenom AS "Prénom", inscription_situation_professionnelle AS "Situation professionnelle", auditeur_ville AS "Ville", auditeur_mel_pers AS "Courriel personnel", SUM(uo.semestre_code) AS "Total Sem"
        FROM auditeur_CEN a INNER JOIN inscription_CEN i ON a.auditeur_numero=i.auditeur_numero 
        INNER JOIN inscription_unite_CEN iu ON i.annee = iu.annee AND i.centre_code = iu.centre_code AND i.auditeur_numero = iu.auditeur_numero 
        INNER JOIN unite_ouverte_CEN uo ON iu.annee = uo.annee AND iu.centre_code = uo.centre_code AND iu.semestre_code = uo.semestre_code AND iu.unite_numero = uo.unite_numero AND iu.groupe_code = uo.groupe_code 
        INNER JOIN unite_CEN u ON iu.unite_numero = u.unite_numero 
		WHERE SUM(uo.semestre_code) = '3'
    ) summary

GROUP BY a.auditeur_code, a.auditeur_nom, a.auditeur_prenom, inscription_situation_professionnelle, auditeur_ville, auditeur_mel_pers
ORDER BY a.auditeur_nom, a.auditeur_prenom