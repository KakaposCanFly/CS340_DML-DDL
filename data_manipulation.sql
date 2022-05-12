-- Data manipulation for Quality Threads database

-- The $ character is used to denote the variables that will have data from the backened programming language

-- ############################
--          INSERT
-- ############################

-- Query to add a Customer
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
    ($c_id,$fname,$lname,$c_email,$c_phone,$c_address,$c_birthdate);

-- Query to add a Distributor

-- Query to add a Product

-- Query to add a Sale Order

-- Query to add a Sale Order Product

-- ############################
--          DELETE
-- ############################

-- Query to delete a Customer
DELETE FROM customers WHERE customer_ID = $c_id;

-- Query to delete a Distributor

-- Query to delete a Product

-- Query to delete a Sale Order

-- Query to delete a Sale Order Product

-- ############################
--          UPDATE
-- ############################
-- Query to update a Customer
UPDATE customers SET 
customer_first_name = ISNULL($fname, customer_first_name), 
customer_last_name = ISNULL($lname, customer_last_name),
customer_email = ISNULL($c_email, customer_email),
customer_phone_number = ISNULL($c_phone, customer_phone_number),
customer_address = ISNULL($c_address, customer_address),
customer_birthdate = ISNULL($c_birthdate, customer_birthdate)
WHERE customer_ID = $c_id;

-- Query to update a Distributor
UPDATE distributors SET 
distributor_name = ISNULL($dname, distributor_name),
distributor_address = ISNULL($d_address, distributor_address),
distributor_email = ISNULL($d_email, distributor_email),
distributor_phone = ISNULL($d_phone, distributor_phone),
distributor_contact_person = ISNULL($d_contact, distributor_contact_person)
WHERE distributor_ID = $d_id;

-- Query to update a Product
UPDATE products SET
product_type = ISNULL($p_type, product_type),
product_name = ISNULL($p_name, product_name),
distributor_ID = ISNULL($d_id, distributor_ID),
retail_price = ISNULL($r_price, retail_price),
release_date = ISNULL($rel_date, release_date),
quant_in_stock = ISNULL($quant_stock, quant_in_stock)
WHERE product_ID = $p_id;

-- Query to update a Sale Order
UPDATE sale_orders SET
customer_ID = ISNULL($c_id, customer_ID),
order_date = ISNULL($ord_date ,order_date),
cc_number = ISNULL($cc_num, cc_number),
cc_exp_date = ISNULL($cc_ed, cc_exp_date),
order_complete = ISNULL($ord_complete, order_complete)
WHERE order_number = $ord_num;

-- Query to update a Sale Order Product
UPDATE sale_order_products SET
order_number = ISNULL($ord_num, order_number),
product_ID = ISNULL($p_id, product_ID),
quantity = ISNULL($quant, quantity),
selling_price = ISNULL($sell_price, selling_price),
shipped = ISNULL($is_shipped, shipped),
shipping_date = ISNULL($ship_date, shipping_date)
WHERE order_number = $ord_num AND product_ID = $p_id;