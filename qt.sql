-- Project Step 4 -- DML & DDL

CREATE TABLE `customers` (
  `customer_ID` INT AUTO_INCREMENT UNIQUE NOT NULL,
  `customer_first_name` varchar(255) NOT NULL,
  `customer_last_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone_number` varchar(64) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_birthdate` varchar(64) NOT NULL
);


INSERT INTO customers (customer_ID, customer_first_name, customer_last_name, customer_email, customer_phone_number, customer_address, customer_birthdate) VALUES 
('1','George','Immler','immler@massivehats.net','5039475829','ohio','04/26/90');
