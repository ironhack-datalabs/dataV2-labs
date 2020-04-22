#Challenge 2 - Create the Database and Tables

CREATE DATABASE lab_mysql_CC;

USE lab_mysql_CC;

CREATE TABLE CARS (ID int NOT NULL AUTO_INCREMENT, VIN VARCHAR(30), 
manufacturer VARCHAR(30), model VARCHAR(30), year YEAR, color VARCHAR(30), 
			primary key(ID));

CREATE TABLE CUSTOMERS (ID int NOT NULL AUTO_INCREMENT, customer_ID VARCHAR(30),
						customername VARCHAR(30), phone INT, email VARCHAR(30), 
                        address VARCHAR(30), city VARCHAR(30), state VARCHAR(30), 
                        country VARCHAR(30), zipcode VARCHAR(30),primary key(ID));
       
CREATE TABLE SALESPERSONS (ID int NOT NULL AUTO_INCREMENT, staff_ID VARCHAR(30),
						staffname VARCHAR(30), store VARCHAR(30),primary key(ID));
       
CREATE TABLE INVOICES (ID int NOT NULL AUTO_INCREMENT, invoice_ID VARCHAR(30), 
						transactiondate DATE, car VARCHAR(30), customer VARCHAR(30), 
                        salesperson VARCHAR(30),primary key(ID));	
