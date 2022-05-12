-- Data manipulation for Quality Threads database

-- The $ character is used to denote the variables that will have data from the backened programming language

-- ############################
--          INSERT
-- ############################

-- Query to add a Customer
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
    ($cid,$fname,$lname,$c_email,$c_phone,$c_address,$c_birthdate);

-- Query to add a Distributor

-- Query to add a Product

-- Query to add a Sale Order

-- Query to add a Sale Order Product

-- ############################
--          DELETE
-- ############################

-- Query to delete a Customer
DELETE FROM customers WHERE customer_ID = $cid;

-- Query to delete a Distributor

-- Query to delete a Product

-- Query to delete a Sale Order

-- Query to delete a Sale Order Product

-- ############################
--          UPDATE
-- ############################
-- Query to update a Customer
UPDATE customers SET customer_ID = ISNULL($cid, customer_ID), 
customer_first_name = ISNULL($fname, customer_first_name), 
customer_last_name = ISNULL($lname, customer_last_name),
customer_email = ISNULL($c_email, customer_email),
customer_phone_number = ISNULL($c_phone, customer_phone_number),
customer_address = ISNULL($c_address, customer_address),
customer_birthdate = ISNULL($c_birthdate, customer_birthdate)
WHERE customer_ID = $cid;

-- Query to update a Distributor

-- Query to update a Product

-- Query to update a Sale Order

-- Query to update a Sale Order Product