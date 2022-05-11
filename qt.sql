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
('1','George','Immler','immler@massivehats.net','5039475829','ohio','04/26/90');
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
('2','June','Elizabeth','elizabeth@greenthumb.net','	5039412329','	portland','	02/30/87');
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
('3','Harold','Shwab','gigachad@hidethepainharold.gov','5039400029','ohio','04/26/90');
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
('4','Rachael','Breats','breats@iliketoshop.net','5039475425','new jersey','01/19/84');
