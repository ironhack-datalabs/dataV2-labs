USE lab_mysql;


UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso' and cust_id = 1;
UPDATE customers
SET email = 'gwash1@us.gov'
WHERE cust_name = 'George Washington' and cust_id = 2;
UPDATE customers
SET email = "Your'eAWizardHarry@ministryofmagic.gov"
WHERE cust_name = 'Harry Potter'and cust_id = 3;

select *
From customers


