-- Project Step 4 -- DML & DDL

CREATE TABLE `customers` (
    `customer_ID` int AUTO_INCREMENT UNIQUE NOT NULL PRIMARY KEY,
    `customer_first_name` varchar(255) NOT NULL,
    `customer_last_name` varchar(255) NOT NULL,
    `customer_email` varchar(255) NOT NULL,
    `customer_phone_number` varchar(64) NOT NULL,
    `customer_address` varchar(255) NOT NULL,
    `customer_birthdate` date NOT NULL
);

CREATE TABLE `distributors` (
    `distributor_ID` int AUTO_INCREMENT UNIQUE NOT NULL PRIMARY KEY,
    `distributor_name` varchar(255) NOT NULL,
    `distributor_address` varchar(255) NOT NULL,
    `distributor_email` varchar(255) NOT NULL,
    `distributor_phone` varchar(64) NOT NULL,
    `distributor_contact_person` varchar(255) NOT NULL
);

CREATE TABLE `products` (
    `product_ID` int AUTO_INCREMENT UNIQUE NOT NULL PRIMARY KEY,
    `product_type` varchar(255) NOT NULL,
    `product_name` varchar(255) NOT NULL,
    `distributor_ID` int(16) NOT NULL,
    `retail_price` int(16) NOT NULL,
    `release_date` date NOT NULL,
    `quant_in_stock` int(16), NOT NULL
);

CREATE TABLE `sale_orders` (
    `order_number` int(16) AUTO_INCREMENT UNIQUE NOT NULL PRIMARY KEY,
    `customer_ID` int(16) NOT NULL,
    `order_date` date NOT NULL,
    `cc_number` varchar(255) NOT NULL,
    `cc_exp_date` date NOT NULL,
    `order_complete` boolean NOT NULL
);

CREATE TABLE `sale_order_products` (
    `order_number` int(16) NOT NULL,
    `product_ID` int(16) NOT NULL,
    `quantity` int(16) NOT NULL,
    `selling_price` decimal(16,2),
    `shipped` boolean NOT NULL,
    `shipping_date` date NOT NULL,
    FOREIGN KEY ('order_number') REFERENCES 'sale_orders' ('order_number'),
    FOREIGN KEY ('product_ID') REFERENCES 'products' ('product_ID'),
    PRIMARY KEY ('order_number','product_ID')
);

INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
    ('1','George','Immler','immler@massivehats.net','5039475829','ohio','1990/04/26'),
    ('2','June','Elizabeth','elizabeth@greenthumb.net','5039412329','portland','1987/02/30'),
    ('3','Harold','Shwab','gigachad@hidethepainharold.gov','5039400029','ohio','1990/04/26'),
    ('4','Rachael','Breats','breats@iliketoshop.net','5039475425','new jersey','1984/01/19');


INSERT INTO distributors (distriutor_ID, distributor_name, distributor_address, distributor_email, distributor_phone, distributor_contact_person) VALUES 
    ('1','Raf''s Drip','nebraska','sweetkicks@evangelizeddd.com','5039475829','Josh'),
    ('2','Mike''s Shirts','washington','	mikesshirts@quantity.net','	5039412329','Mike'),
    ('3','Bailey''s Rings','new york','ringmyphone@snazzy.com','5039400029','Rick');

INSERT INTO products (product_ID,product_type,product_name,distributor_ID,retail_price,release_date,quant_in_stock) VALUES 
    ('1','shoes','Raf''s Godly Kicks','02496','419.99','02/30/22','1'),
    ('2','t-shirt','Standard Long Sleeve','02092','	11.99','02/30/20','119'),
    ('3','hat','Magician''s Tophat','04446','49.99','02/12/19','7'),
    ('4','poncho','Unparalleled Comfort','	03002','79.99','07/08/21','22');

INSERT INTO sale_orders(order_number, customer_ID,cc_number, cc_exp_date,delivery_status,paid_status) VALUES 
    ('1','12','12982918478729781', '05/24','delivered','paid'),
    ('2','13','12688918478829784','10/29','	delivered','unpaid'),
    ('3','14','75688912478829883','01/26','not delivered','paid');


