# Updating store. Note: I am adding the key staff_nr, because the system uses safe update mode and does not allow me to update without this parameter.
SELECT staff_nr
FROM salespersons
WHERE salesp_name = "Paige Turner";

UPDATE salespersons
SET store = "Miami"
WHERE salesp_name = "Paige Turner" and staff_nr = 5;

SELECT * FROM salespersons;

# Updating emails. Note: I am adding the key cust_nr here, because the system uses safe update mode and does not allow me to update without this parameter.
UPDATE customers
SET email = "ppicasso@gmail.com"
WHERE cust_name = "Pablo Picasso"   and cust_nr = 1;

UPDATE customers
SET email = "lincoln@us.gov"
WHERE cust_name = "Abraham Lincoln"   and cust_nr = 2;

UPDATE customers
SET email = "hello@napoleon.me"
WHERE cust_name = "Napoléon Bonaparte"   and cust_nr = 3;

SELECT * FROM customers;
