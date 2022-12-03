DROP DATABASE IF EXISTS dbcommercer;

CREATE DATABASE IF NOT EXISTS dbcommercer;

USE dbcommercer;

CREATE TABLE customers(
	customer_id int primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    email_address varchar(50) not null unique,
    number_of_complaints int default 0
);

CREATE TABLE sales(
	purchase_number int primary key auto_increment,
    day_of_purchase date not null,
    customer_id int,
    item_code char(3) not null 
    
);

CREATE TABLE items(
	item_code char(3) primary key,
    item varchar(50) not null,
    unit_pride_usd int,
    company_id int not null,
    company varchar(50),
    headquarters_phone_number char(16)
    
    
);




	
