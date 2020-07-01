CREATE TABLE CARS (car_id INT, manufacture VARCHAR(255),
car_model VARCHAR(255), car_year INT, car_color VARCHAR(255), car_price INT);
 CREATE TABLE CUSTOMERS (cust_id INT, car_id INT, staff_id INT,cust_nam VARCHAR(255),
cust_phone INT, cust_mail VARCHAR(255), cust_add VARCHAR(255), cust_city VARCHAR(255), cust_state VARCHAR(255), cust_country VARCHAR(255), cust_zip INT);

CREATE TABLE SALESPERSON (staff_id INT, inv_id INT, staff_name VARCHAR(255), staff_store VARCHAR(255));
CREATE TABLE INVOICES (inv_id INT, inv_date DATE, car_id INT, cust_id INT, staff_id INT);

DELETE CARS;
DROP CARS;
DROP TABLE IF EXISTS CARS;
CREATE TABLE CARS (car_id INT, manufacture VARCHAR(255),
car_model VARCHAR(255), car_year INT, car_color VARCHAR(255), car_price INT);

/* INSERT VALUE*/

INSERT INTO CARS (car_id,manufacture,car_model,car_year,car_color,car_price)
	VALUES (0,'Volkswagen','Tiguan',2019,'Blue',15000);

SELECT * FROM CARS;

INSERT INTO CARS (car_id,manufacture,car_model,car_year,car_color,car_price)
	VALUES  (1,'Peugeot','Rifter',2019,'Red',6000),(2,'Ford','Fusion',2018,'White',8000), (3,'Toyota','RAV4',2018,'Silver',4000), (4,'Volvo','V60',2019,'Gray',12000), (5,'Volvo','V60Cross Country',2019,'Gray', 13000);
	
SELECT * FROM CARS;

INSERT INTO CUSTOMERS (cust_id,cust_nam,cust_phone,cust_add,cust_city,cust_state,cust_country,cust_zip)
	VALUES (10001,'Pablo Picasso',34636176382,'Paseo de la Chopera,14','Madrid','Madrid','Spain',28045);

SELECT * FROM CUSTOMERS;