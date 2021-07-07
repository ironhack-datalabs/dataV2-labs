INSERT INTO cars (vin, manuf, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');

INSERT INTO cars (vin, manuf, model, year, color)
VALUES ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');

INSERT INTO cars (vin, manuf, model, year, color)
VALUES ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');

INSERT INTO cars (vin, manuf, model, year, color)
VALUES ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');

INSERT INTO cars (vin, manuf, model, year, color)
VALUES ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

INSERT INTO cars (vin, manuf, model, year, color)
VALUES ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (cust_cust_id, name, phone, address, city, state_prov, county, postal)
VALUES (10001, 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');

ALTER TABLE customers RENAME COLUMN county TO country;

INSERT INTO customers (cust_cust_id, name, phone, address, city, state_prov, country, postal)
VALUES (20001, 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130');

INSERT INTO customers (cust_cust_id, name, phone, address, city, state_prov, country, postal)
VALUES (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (staff_id, name, store)
VALUES (00001, 'Petey Cruiser', 'Madrid');

ALTER TABLE salespersons
MODIFY COLUMN staff_id VARCHAR(10);

UPDATE salespersons
SET staff_id = '00001'
WHERE sales_id = 1;

INSERT INTO salespersons (staff_id, name, store)
VALUES ('00002', 'Anna Sthesia', 'Barcelona');

INSERT INTO salespersons (staff_id, name, store)
VALUES ('00003', 'Paul Molive', 'Berlin');

INSERT INTO salespersons (staff_id, name, store)
VALUES ('00004', 'Gail Forcewind', 'Paris');

INSERT INTO salespersons (staff_id, name, store)
VALUES ('00005', 'Paige Turner', 'Mimia');

INSERT INTO salespersons (staff_id, name, store)
VALUES ('00006', 'Bob Frapples', 'Mexico City');

INSERT INTO salespersons (staff_id, name, store)
VALUES ('00007', 'Walter Melon', 'Amsterdam');

INSERT INTO salespersons (staff_id, name, store)
VALUES ('00008', 'Shonda Leer', 'São Paulo');

ALTER TABLE invoices
MODIFY COLUMN date VARCHAR(20);

ALTER TABLE invoices
MODIFY COLUMN number VARCHAR(20);

INSERT INTO invoices (number, date, car_id, cust_id, sales_id)
VALUES ('852399038', '22-08-2018' , 1, 1, 3);

INSERT INTO invoices (number, date, car_id, cust_id, sales_id)
VALUES ('731166526', '31-12-2018' , 3, 1, 5);

INSERT INTO invoices (number, date, car_id, cust_id, sales_id)
VALUES ('271135104', '22-01-2019' , 2, 2, 7);
