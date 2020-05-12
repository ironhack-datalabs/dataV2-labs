CREATE TABLE cars (
  car_id     INT AUTO_INCREMENT PRIMARY KEY,
  vin        VARCHAR(30),
  manuf      VARCHAR(20),
  model      VARCHAR(30),
  year       INT,
  color      VARCHAR(20),
);

CREATE TABLE customers (
  cust_id        INT AUTO_INCREMENT PRIMARY KEY,
  cust_cust_id   INT,
  name           VARCHAR(30),
  phone          VARCHAR(30),
  email          VARCHAR(50),
  address        VARCHAR(100),
  city           VARCHAR(30),
  state_prov     VARCHAR(30),
  county         VARCHAR(30),
  postal         VARCHAR(20),
);

CREATE TABLE salespersons (
  sales_id   INT AUTO_INCREMENT PRIMARY KEY,
  staff_id   INT,
  name       VARCHAR(30),
  store      VARCHAR(30),
);

CREATE TABLE invoices (
  invoice_id   INT AUTO_INCREMENT PRIMARY KEY,
  number       VARCHAR(20),
  date         DATE,
  car_id       INT,
  cust_id      INT,
  sales_id     INT,
  FOREIGN KEY car_id REFERENCES cars.car_id,
  FOREIGN KEY cust_id REFERENCES cusomers.cust_id`,
  FOREIGN KEY sales_id REFERENCES salespersons.sales_id,
);