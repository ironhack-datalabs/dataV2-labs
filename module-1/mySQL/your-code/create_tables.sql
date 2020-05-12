USE lab_mysql;

CREATE TABLE cars (
car_id int NOT NULL UNIQUE AUTO_INCREMENT,
VIN VARCHAR(20),
manufacturer VARCHAR(20), 
model VARCHAR(20), 
c_year YEAR, 
color VARCHAR(10)
);

DESCRIBE cars;

CREATE TABLE customers (
cust_nr int NOT NULL UNIQUE AUTO_INCREMENT,
cust_id VARCHAR(10),
cust_name VARCHAR(20),
phone VARCHAR(20),
email VARCHAR(20),
address VARCHAR(30),
city VARCHAR(10),
state VARCHAR(15),
country VARCHAR(15),
zip VARCHAR(8)
);


DESCRIBE customers;

CREATE TABLE salespersons (
staff_nr int NOT NULL UNIQUE AUTO_INCREMENT,
staff_id VARCHAR(10),
salesp_name VARCHAR(20),
store VARCHAR(20)
);


DESCRIBE salespersons;

CREATE TABLE invoices (
invoice_nr int NOT NULL UNIQUE AUTO_INCREMENT,
invoice_id VARCHAR(10),
sale_date DATE, 
car_id INT,
cust_nr INT,
staff_nr INT,
PRIMARY KEY (invoice_nr)
# Note: when I created the table defining foreign keys below, it did not allow me to insert data in the columns car_id, cust_nr and staff_nr. 
#FOREIGN KEY (car_id) REFERENCES cars(car_id),
#FOREIGN KEY (cust_nr) REFERENCES customers(cust_nr),
#FOREIGN KEY (staff_nr) REFERENCES salespersons(staff_nr)
);

DESCRIBE invoices;

/*
DROP TABLE invoices;
DROP TABLE customers;
DROP TABLE salespersons;
DROP TABLE cars;
*/
