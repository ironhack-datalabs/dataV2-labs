CREATE TEMPORARY TABLE alternance5
SELECT data_offresalternance.Dpt, departements.nom_departement,  data_offresalternance.month,
COUNT(data_offresalternance.month) As nb_alternances
FROM departements
LEFT JOIN data_offresalternance
ON code_departement = Dpt
GROUP BY data_offresalternance.month, departements.code_departement;

CREATE TEMPORARY TABLE covid
SELECT departements.code_departement, departements.nom_departement, 
data_covidincidence.month, data_covidincidence.tx_incid
FROM departements
LEFT JOIN data_covidincidence
ON code_departement = dep;

CREATE TEMPORARY TABLE covid_alternance
SELECT covid.code_departement, covid.nom_departement, covid.month, covid.tx_incid, alternance5.nb_alternances
FROM covid
LEFT JOIN alternance5
ON code_departement = Dpt;

SELECT *, MAX(tx_incid) AS max, SUM(nb_alternances) AS total_offres
FROM covid_alternance
GROUP BY code_departement, month
ORDER BY month, max DESC


