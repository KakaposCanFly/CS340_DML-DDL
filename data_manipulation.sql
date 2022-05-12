-- Data manipulation for Quality Threads database

-- The $ character is used to denote the variables that will have data from the backened programming language

-- ############################
--          INSERT
-- ############################

-- Query to add a Customer
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
    ($c_id,$f_name,$l_name,$c_email,$c_phone,$c_address,$c_birthdate);

-- Query to add a Distributor
INSERT INTO distributors (distributor_ID, distributor_name, distributor_address, distributor_email, distributor_phone, distributor_contact_person) VALUES 
    ($c_id,$d_ID,$d_name,$d_address,$d_phone,$d_contact);

-- Query to add a Product
INSERT INTO products (product_ID,product_type,product_name,distributor_ID,retail_price,release_date,quant_in_stock) VALUES 
    ($c_id,$p_ID,$p_type,$p_name,$d_ID,$r_price,$rel_date,$quant_stock);

-- Query to add a Sale Order
INSERT INTO sale_orders(order_number, customer_ID, order_date, cc_number, cc_exp_date, order_complete) VALUES 
    ($ord_num,$c_ID,$ord_date,$cc_num,$cc_exp_date,$ord_complete);

-- Query to add a Sale Order Product
INSERT INTO sale_order_products(order_number,product_ID,quantity,selling_price,shipped,shipping_date) VALUES 
     ($ord_num,$prod_ID,$quant,$sell_price,$shipped,$ship_date),

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
