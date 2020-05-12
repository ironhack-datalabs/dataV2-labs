USE lab_mysql;
# entering data into car table
INSERT INTO cars (vin,make,model,yearl,color) VALUES
('3K096198581DHSNUP', 'Volkswagon', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot','Rifter', 2019, 'Red'),
('TR845HTEE98H8325T','Ford','Fusion',2018,'White'),
('HKNDGS7CU31E9350J','Toyota','RAV4',2018,'silver'),
('DAM4200HUTJEKNFOS','Volvo','V60',2019,'Gray'),
('DAM41UDKNOALRHGO4','Volvo,V60', 'CrossCountry',2019, 'Gray');

# entering data into customers table
INSERT INTO customers (cust_name,phone_no,address,city,state,country,zip_code,date_of_sale) VALUES
('Pablo Picasso','+34 636 17 63 82','Paseo de la Chopera,14','Madrid','Madrid',' Spain',28045,'2020-01-01'),
('George Washington','+1 412 341 5194','1600 Pennsylvania Ave','Washington DC', 'Washington DC', 'USA', 15017, '2020-02-02'),
('Harry Potter','+41 WIZARD','4 Privet Dr Under the Stairs','Little Whinging', 'Surrey', 'England', 'CR3 0AA', '2020-07-31');

#entering Staff information
INSERT INTO sales_people (staff_num,name_s,country) VALUES
(20190228, 'Ron Weasley', 'England'),
(20180331, 'Paul Revere', 'USA'),
(20181113, 'Don Quixote', 'Spain'),
(20100101, 'Hermione Granger', 'England'),
(20090513, 'Benedict Arnold', 'USA'),
(20200221, 'Inigo Montoya', 'Spain');

#entering invoice information
INSERT INTO invoices (invoice_num, date_of_sale, car, customers, sales_person,country) VALUES
(12345, '2020-01-01', 3, 1, 2, 'Spain'),
(23451, '2020-02-02', 1, 2, 5, 'USA'),
(54321, '2020-07-31', 5, 3, 1, 'England');


