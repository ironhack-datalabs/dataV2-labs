INSERT INTO Carsstores.car (VIN, ManufacturerID, Model, Creation_year, Color, Quantity)
 VALUES
 (348989898, 56765, 'Rifter', 2016, 'blue', 12),
 (878998789, 98789, 'Fusion', 2020, 'green', 28),
 (097876567, 98788, '3008', 2005, 'blue', 54),
 (985678909, 98767, 'V60', 2012, 'yellow', 13);
 
 INSERT INTO Carsstores.customer (CustomerID, CustomerName, CustomerSurname, CustomerPhone, CustomerAdress, CustomerCity, CustomerState, CustomerCountry, CustomerPostalCode)
 VALUES
 (45678899, 'Jack', 'Daniels', 0676789870, '7 rue du lac', 'Annecy', 'Haute-Savoie', 'France', 74000),
 (67656778, 'Moji', 'To', 04765678989, '23 avenue des Champs Elysées', 'Paris', 'France', 75008),
 (98767788, 'Hank', 'Spinner', 0687898789, '13 rue de la Gare', 'Menton', 'Côte Azur', 'France', 06500);
 
ALTER TABLE Carsstores.customer
MODIFY CustomerPhone INT(10)
 
