SELECT departements.code_departement, departements.nom_departement, data_offresalternance.month, COUNT(data_offresalternance.month) AS nb_offres_alt
FROM departements
LEFT JOIN data_offresalternance
ON departements.code_departement = data_offresalternance.Dpt
GROUP BY data_offresalternance.month, departements.code_departement;