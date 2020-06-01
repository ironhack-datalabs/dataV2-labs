CREATE TABLE mysql_car.car (
car_id INT PRIMARY KEY AUTO_INCREMENT,
make VARCHAR (30),
model VARCHAR (30),
year_made Integer,
color VARCHAR(30),
VIN VARCHAR(40) 
);

CREATE TABLE mysql_car.customer (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR (50),
phone_number INTEGER,
email VARCHAR (50),
address VARCHAR (50),
city VARCHAR (30),
state VARCHAR (30),
country VARCHAR (30),
zip_code VARCHAR (20)
);

CREATE TABLE mysql_car.sales (
sales_id INT PRIMARY KEY AUTO_INCREMENT,
store_location VARCHAR(50);
staff_name VARCHAR(50);
staff_id INTEGER
);

CREATE TABLE mysql_car.invoices (
invoice_id INT PRIMARY KEY AUTO_INCREMENT,
inv_date DATETIME DEFAULT CURRENT_TIMESTAMP,
sales_id INTEGER,
customer_id INTEGER,
car_id INTEGER,
);

insert into mysql_car.car values(car_id=0, make='Volkswagen', model = 'Tiguan', year_made='2019', color='Blue', VIN='3K096I98581DHSNUP');
insert into mysql_car.car values(car_id=1, make='Peugeot', model = 'Rifter', year_made='2019', color='Red', VIN='ZM8G7BEUQZ97IH46V');
insert into mysql_car.car values(car_id=2, make='Ford', model ='Fusion', year_made=2018, color='White', VIN='RKXVNNIHLVVZOUB4M');
insert into mysql_car.car values(car_id=3, make='Toyota', model ='RAV4', year_made=2018, color='Silver', VIN='HKNDGS7CU31E9Z7JW');
insert into mysql_car.car values(car_id=4, make='Volvo', model ='V60', year_made=2019, color='Gray', VIN='DAM41UDN3CHU2WVF6');
insert into mysql_car.car values(car_id=5, make='Volvo', model ='V60 Cross Country', year_made=2019, color='Gray', VIN='DAM41UDN3CHU2WVF6')
insert into mysql_car.car values(car_id=6, make='Ferrari', model ='LA Ferrari', year_made=2017, color='Yellow', VIN='FERLA33V12HDGFAHSID');

insert into customer values(customer_id=1, name='Abraham Lincoln', email= '-', ' address='120 SW 8th St', city= 'Miami', state='Florida',zip_code= 33130, country= 'US');
insert into mysql_car.customer values(customer_id=2, name='Pable Picasso', email= '-', address='Paseo de la Chopera, 14', city='Madrid', state='Madrid', zip_code=28045, country='Spain');
insert into mysql_car.customer values(customer_id=3, name='Napoléon Bonaparte', email= '-', address = '120 SW 8th St', city='Miami', state='Florida', zip_code=33130, country='US');

insert into mysql_car.sales values(0, 'Madrid', 'Petey Cruiser', 0001);
insert into mysql_car.sales values(1,'Barcelona', 'Anna Sthesia', 00002);
insert into mysql_car.sales values(2,'Barcelona', 'Paul Molive', 00003);
insert into mysql_car.sales values(3,'Barcelona', 'Gail Forcewind', 00004);
insert into mysql_car.sales values(4,'Barcelona', 'Paige Turner', 00005);
insert into mysql_car.sales values(5,'Barcelona', 'Bob Frapples', 00006);
insert into mysql_car.sales values(6,'Barcelona', 'Walter Melon', 00007);
insert into mysql_car.sales values(7,'Barcelona', 'Shonda Leer', 00008);

insert into mysql_car.invoices values(0, '2018-08-22', 3, 1, 1, 852399038);
insert into mysql_car.invoices values(1, '2018-12-31', 3, 3, 3, 731166526);
insert into mysql_car.invoices values(2, '2019-01-22', 2, 2, 2, 271135104);

