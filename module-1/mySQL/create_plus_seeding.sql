-- create database mysql_car;
-- use mysql_car;

-- CREATE TABLE mysql_car.car (
--     car_id INT PRIMARY KEY AUTO_INCREMENT,
--     make VARCHAR (50) NOT NULL,
--     model VARCHAR (50) NOT NULL,
--     year_made year NOT NULL,
--     color VARCHAR(20) NOT NULL,
-- 	   VIN varchar(50) NOT NULL
-- );


-- CREATE TABLE mysql_car.customer (
--     customer_id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR (50) NOT NULL,
--     email VARCHAR (50),
--     address VARCHAR (50),
--     city VARCHAR (50),
--     state VARCHAR (50),
-- 	country VARCHAR (50),
--     zip_code VARCHAR (50)
-- );

-- CREATE TABLE mysql_car.sales (
--     sales_id INT PRIMARY KEY AUTO_INCREMENT,
--     store_location VARCHAR(50);
-- 		staff_name varchar(50);
--  staff_id int
-- );

-- CREATE TABLE mysql_car.invoices (
--     invoice_id INT PRIMARY KEY AUTO_INCREMENT,
-- 	inv_date DATETIME DEFAULT CURRENT_TIMESTAMP,
--     sales_id INT,
--     customer_id INT,
--     car_id INT,
-- 		invoice_nr INT,
-- CONSTRAINT FK_salesID FOREIGN KEY (sales_id)
--     REFERENCES sales(sales_id),
-- 	CONSTRAINT FK_custID FOREIGN KEY (customer_id)
--     REFERENCES customer(customer_id),
-- 	CONSTRAINT FK_carID FOREIGN KEY (car_id)
--     REFERENCES car(car_id)
--     
-- );

-- insert into mysql_car.car values(car_id=0, make='Volkswagen', model = 'Tiguan', year_made='2019', color='Blue', VIN='3K096I98581DHSNUP');
-- insert into mysql_car.car values(car_id=1, make='Peugeot', model = 'Rifter', year_made='2019', color='Red', VIN='ZM8G7BEUQZ97IH46V');
-- insert into mysql_car.car values(car_id=2, 'Ford', 'Fusion', 2018, 'White', 'RKXVNNIHLVVZOUB4M');
-- insert into mysql_car.car values(car_id=3, 'Toyota', 'RAV4', 2018, 'Silver', 'HKNDGS7CU31E9Z7JW');
-- insert into mysql_car.car values(car_id=4, 'Volvo', 'V60', 2019, 'Gray', 'DAM41UDN3CHU2WVF6');
-- insert into mysql_car.car values(car_id=5, 'Volvo', 'V60 Cross Country', 2019, 'Gray', 'DAM41UDN3CHU2WVF6');

-- insert into customer values(1,'Abraham Lincoln', '-', '120 SW 8th St','Miami', 'Florida', 33130, 'US');
-- insert into mysql_car.customer values(customer_id=2, name='Napoléon Bonaparte', email = '-', address='Paseo de la Chopera, 14', city='Madrid', state='Madrid', zip_code=28045, country='Spain');
-- insert into mysql_car.customer values(customer_id=3, name='Napoléon Bonaparte', email='-', address = '120 SW 8th St', city='Miami', state='Florida', country='US', zip_code=33130);

-- insert into mysql_car.sales values(0, 'Madrid', 'Petey Cruiser', 0001);
-- insert into mysql_car.sales values(1,'Barcelona', 'Anna Sthesia', 00002);
-- insert into mysql_car.sales values(2,'Barcelona', 'Paul Molive', 00003);
-- insert into mysql_car.sales values(3,'Barcelona', 'Gail Forcewind', 00004);
-- insert into mysql_car.sales values(4,'Barcelona', 'Paige Turner', 00005);
-- insert into mysql_car.sales values(5,'Barcelona', 'Bob Frapples', 00006);
-- insert into mysql_car.sales values(6,'Barcelona', 'Walter Melon', 00007);
-- insert into mysql_car.sales values(7,'Barcelona', 'Shonda Leer', 00008);

-- INSERT INTO mysql_car.invoices values(0, '2018-08-22', 3, 1, 1, 852399038);
-- INSERT INTO mysql_car.invoices values(1, '2018-12-31', 3, 3, 3, 731166526);
-- INSERT INTO mysql_car.invoices values(2, '2019-01-22', 2, 2, 2, 271135104);

-- select * from mysql_car.sales;

-- UPDATE customer
-- SET email = 'an.email@address.com'
-- WHERE CustomerID = 1;

-- DELETE FROM car WHERE VIN='DAM41UDN3CHU2WVF6'
