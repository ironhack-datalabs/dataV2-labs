USE lab_mysql;


CREATE TABLE IF NOT EXISTS cars (
car_id		INT AUTO_INCREMENT PRIMARY KEY,
make		VARCHAR (30),
model		VARCHAR (30),
yearl		INT,
color		VARCHAR (30),
country		VARCHAR (30),
created_at	TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE  IF NOT EXISTS customers(
cust_id		INT AUTO_INCREMENT PRIMARY KEY,
cust_name	VARCHAR (30),
address		VARCHAR (30),
city		VARCHAR (30),
state		VARCHAR (30),
country		VARCHAR (30),
zip_code	INT,
date_of_sale VARCHAR (10),
created_at	TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS sales_people (
staff_id	INT AUTO_INCREMENT PRIMARY KEY,
staff_num	VARCHAR (30),
name_s		VARCHAR (30),
country		VARCHAR (30)
);
CREATE TABLE IF NOT EXISTS invoices (
invoice_id		INT AUTO_INCREMENT PRIMARY KEY,
invoice_num		INT,
date_of_sale	VARCHAR (10),
car				VARCHAR (30),
customers		VARCHAR (30),
sales_person	VARCHAR (30),
country			VARCHAR (30)
);

# forgot these at table create
ALTER TABLE customers
ADD phone_no  VARCHAR(20);

ALTER TABLE cars
ADD vin VARCHAR(20);

ALTER TABLE customers
ADD email VARCHAR (30)




