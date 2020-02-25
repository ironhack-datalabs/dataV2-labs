USE lab_mysql;
CREATE TABLE cars_final (
VIN INT AUTO_INCREMENT PRIMARY KEY, 
manufacturer VARCHAR(20) NOT NULL, 
model VARCHAR(20), 
year INT, 
color VARCHAR(20), 
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Salespersons (
staff_ID INT AUTO_INCREMENT PRIMARY KEY, 
staff_name VARCHAR(20) NOT NULL, 
store VARCHAR(20),  
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Customers (
customer_ID INT AUTO_INCREMENT PRIMARY KEY, 
customer_name VARCHAR(20) NOT NULL, 
phone_number INT,
e_mail VARCHAR(20),
adress VARCHAR(20),
city VARCHAR(20),
state VARCHAR(20),
postal_code INT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Invoices (
invoice_number INT AUTO_INCREMENT PRIMARY KEY, 
date_of_invoice VARCHAR(20) NOT NULL, 
VIN INT,
customer_ID INT,
staff_ID INT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


/*3. Challenge*/
ALTER TABLE cars_final
DROP COLUMN VIN;

ALTER TABLE cars_final
ADD VIN VARCHAR(25) PRIMARY KEY;

ALTER TABLE cars_final
DROP COLUMN VIN;

INSERT INTO cars_final VALUES 
	("Volkswagen", "Tiguan", 2019, "Blue", CURRENT_TIMESTAMP, "3K096I98581DHSNUP"), 
	("Peugeot", "Rifter", 2019, "Red", CURRENT_TIMESTAMP,"ZM8G7BEUQZ97IH46V");

/*insert secon part leaving*/
INSERT INTO cars_final VALUES 
    ("Ford", "Fusion", 2018, "White", CURRENT_TIMESTAMP,"RKXVNNIHLVVZOUB4M"),
    ("Toyota", "RAV4", 2018, "Silver", CURRENT_TIMESTAMP,"HKNDGS7CU31E9Z7JW"),
    ("Volvo", "V60", 2019, "Gray", CURRENT_TIMESTAMP,"DAM41UDN3CHU2WVF6");
    
    
ALTER TABLE Invoices
DROP COLUMN VIN;

ALTER TABLE Invoices
ADD VIN VARCHAR(25);

INSERT INTO Invoices VALUES 
    (852399038, "22-08-2018", 10001, 00001, CURRENT_TIMESTAMP, "3K096I98581DHSNUP"),
    (731166526, "31-12-2018", 20001, 00002, CURRENT_TIMESTAMP, "ZM8G7BEUQZ97IH46V"),
    (271135104, "22-01-2019", 30001, 00003, CURRENT_TIMESTAMP, "RKXVNNIHLVVZOUB4M");

ALTER TABLE Customers
DROP COLUMN customer_ID;

ALTER TABLE Customers
ADD customer_ID INT PRIMARY KEY;

ALTER TABLE Customers
DROP COLUMN phone_number;

ALTER TABLE Customers
ADD phone_number VARCHAR (20);

INSERT INTO Customers VALUES 
    ("Pablo Picasso", "-", "Paseo Chopera 14", "Madrid", "Madrid", 28045, CURRENT_TIMESTAMP, 10001, "34636176382"),
	("Abraham Lincoln", "-", "120 SW 8th St", "Miami", "Florida", 33130, CURRENT_TIMESTAMP, 20001, "13059077086"),
	("Napoléon Bonaparte", "-", "40 Rue du Colisée", "Paris", "Île-de-France", 75008, CURRENT_TIMESTAMP, 30001, "33179754000");

ALTER TABLE Salespersons
DROP COLUMN staff_id;
ALTER TABLE Salespersons
ADD staff_id INT PRIMARY KEY;

INSERT INTO Salespersons VALUES
("Petey Cruiser", "Madrid", CURRENT_TIMESTAMP, 00001),
("Anna Sthesia", "Barcelona", CURRENT_TIMESTAMP, 00002),
("Paul Molive", "Berlin", CURRENT_TIMESTAMP, 00003),
("Gail Forcewind", "Paris", CURRENT_TIMESTAMP, 00004),
("Paige Turner", "Mimia", CURRENT_TIMESTAMP, 00005),
("Bob Frapples", "MexicoCity", CURRENT_TIMESTAMP, 00006),
("Walter Melon", "Amsterdam", CURRENT_TIMESTAMP, 00007),
("Shonda Leer", "São Paulo", CURRENT_TIMESTAMP, 00008);