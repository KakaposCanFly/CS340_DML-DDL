-- Project Step 4 -- DML & DDL

CREATE TABLE `customers` (
    `customer_ID` INT AUTO_INCREMENT UNIQUE NOT NULL PRIMARY KEY,
    `customer_first_name` varchar(255) NOT NULL,
    `customer_last_name` varchar(255) NOT NULL,
    `customer_email` varchar(255) NOT NULL,
    `customer_phone_number` varchar(64) NOT NULL,
    `customer_address` varchar(255) NOT NULL,
    `customer_birthdate` date NOT NULL
);

CREATE TABLE `distributors` (
    `distributor_ID` INT AUTO_INCREMENT UNIQUE NOT NULL PRIMARY KEY,
    `distributor_name` varchar(255) NOT NULL,
    `distributor_address` varchar(255) NOT NULL,
    `distributor_email` varchar(255) NOT NULL,
    `distributor_phone` varchar(64) NOT NULL,
    `distributor_contact_person` varchar(255) NOT NULL
);

CREATE TABLE `products` (
    `product_ID` INT AUTO_INCREMENT UNIQUE NOT NULL PRIMARY KEY,
    `product_type` varchar(255) NOT NULL,
    `product_name` varchar(255) NOT NULL,
    `distributor_ID` INT(16) NOT NULL,
    `retail_price` INT(16) NOT NULL,
    `release_date` date NOT NULL,
    `quant_in_stock` INT(16), NOT NULL
);

CREATE TABLE `sale_orders` (
    `order_number` INT(16) AUTO_INCREMENT UNIQUE NOT NULL PRIMARY KEY,
    `customer_ID` INT(16) NOT NULL,
    `order_date` date NOT NULL,
    `cc_number` varchar(255) NOT NULL,
    `cc_exp_date` date NOT NULL,
    `order_complete` boolean NOT NULL
)

INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
('1','George','Immler','immler@massivehats.net','5039475829','ohio','1990/04/26');
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
('2','June','Elizabeth','elizabeth@greenthumb.net','5039412329','portland','1987/02/30');
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
('3','Harold','Shwab','gigachad@hidethepainharold.gov','5039400029','ohio','1990/04/26');
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
('4','Rachael','Breats','breats@iliketoshop.net','5039475425','new jersey','1984/01/19');



INSERT INTO distributors (distriutor_ID, distributor_name, distributor_address, distributor_email, distributor_phone, distributor_contact_person) VALUES 
('1','Raf''s Drip','nebraska','sweetkicks@evangelizeddd.com','5039475829','Josh');
INSERT INTO distributors (distriutor_ID, distributor_name, distributor_address, distributor_email, distributor_phone, distributor_contact_person) VALUES 
('2','Mike''s Shirts','washington','	mikesshirts@quantity.net','	5039412329','Mike');
INSERT INTO distributors (distriutor_ID, distributor_name, distributor_address, distributor_email, distributor_phone, distributor_contact_person) VALUES 
('3','Bailey''s Rings','new york','ringmyphone@snazzy.com','5039400029','Rick');

INSERT INTO products (product_ID,product_type,product_name,distributor_ID,retail_price,release_date,quant_in_stock) VALUES 
('1','shoes','Raf''s Godly Kicks','02496','419.99','02/30/22','1');
INSERT INTO products (product_ID,product_type,product_name,distributor_ID,retail_price,release_date,quant_in_stock) VALUES 
('2','t-shirt','Standard Long Sleeve','02092','	11.99','02/30/20','119');
INSERT INTO products (product_ID,product_type,product_name,distributor_ID,retail_price,release_date,quant_in_stock) VALUES 
('3','hat','Magician''s Tophat','04446','49.99','02/12/19','7');
INSERT INTO products (product_ID,product_type,product_name,distributor_ID,retail_price,release_date,quant_in_stock) VALUES 

('4','poncho','Unparalleled Comfort','	03002','79.99','07/08/21','22');

INSERT INTO sale_orders(order_number, customer_ID,cc_number, cc_exp_date,delivery_status,paid_status) VALUES 
('1','12','12982918478729781', '05/24','delivered','paid');
INSERT INTO sale_orders(order_number, customer_ID,cc_number, cc_exp_date,delivery_status,paid_status) VALUES 
('2','13','12688918478829784','10/29','	delivered','unpaid');
INSERT INTO sale_orders(order_number, customer_ID,cc_number, cc_exp_date,delivery_status,paid_status) VALUES 
('3','14','75688912478829883','01/26','not delivered','paid');


