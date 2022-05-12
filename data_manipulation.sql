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
    ($ord_num,$c_ID,$ord_date,$cc_num,$cc_ed,$ord_complete);

-- Query to add a Sale Order Product
INSERT INTO sale_order_products(order_number,product_ID,quantity,selling_price,shipped,shipping_date) VALUES 
     ($ord_num,$prod_ID,$quant,$sell_price,$is_shipped,$ship_date),

-- ############################
--          DELETE
-- ############################

-- Query to delete a Customer
DELETE FROM customers WHERE customer_ID = $c_id;

-- Query to delete a Distributor
DELETE FROM distributors WHERE distributor_ID = $cid;

-- Query to delete a Product
DELETE FROM products WHERE product_ID = $cid;

-- Query to delete a Sale Order
DELETE FROM sale_orders WHERE customer_ID = $cid;

-- Query to delete a Sale Order Product
DELETE FROM sale_order_products WHERE product_ID = $cid;

-- ############################
--          UPDATE
-- ############################
-- Query to update a Customer
UPDATE customers SET 
customer_first_name = ISNULL($f_name, customer_first_name), 
customer_last_name = ISNULL($l_name, customer_last_name),
customer_email = ISNULL($c_email, customer_email),
customer_phone_number = ISNULL($c_phone, customer_phone_number),
customer_address = ISNULL($c_address, customer_address),
customer_birthdate = ISNULL($c_birthdate, customer_birthdate)
WHERE customer_ID = $c_id;

-- Query to update a Distributor
UPDATE distributors SET 
distributor_name = ISNULL($d_name, distributor_name),
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
