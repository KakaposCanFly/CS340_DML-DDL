-- Data manipulation for Quality Threads database

-- ############################
--          INSERT
-- ############################

-- Query to add a new customer with a $ character being used to denote the
-- variables that will have data from the backed programming language
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
    ('$cid','$fname','$lname','$c_email','$c_phone','$c_address','$c_birthdate');
