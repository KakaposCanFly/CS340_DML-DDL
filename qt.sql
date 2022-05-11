-- Project Step 4 -- DML & DDL

CREATE TABLE `customers` (
  `customer_ID` INT AUTO_INCREMENT UNIQUE NOT NULL,
  `customer_first_name` varchar(255) NOT NULL,
  `customer_last_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone_number` varchar(64) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_birthdate` date NOT NULL
);


INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
('1','George','Immler','immler@massivehats.net','5039475829','ohio','04/26/90');
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
('2','June','Elizabeth','elizabeth@greenthumb.net','	5039412329','	portland','	02/30/87');
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
('3','Harold','Shwab','gigachad@hidethepainharold.gov','5039400029','ohio','04/26/90');
INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
('4','Rachael','Breats','breats@iliketoshop.net','5039475425','new jersey','01/19/84');
