drop table if exists city;
drop table if exists sales;
drop table if exists products;
drop table if exists customer;

-- Creating tables in db
create table city (
city_id int primary key,
city_name varchar(55),
populations bigint,
estimated_rent int,
city_rank int
);
create table customer (
customer_id int primary key,
customer_name varchar(55),
city_id int,
constraint fk_city foreign key(city_id) references city(city_id)
);
create table product (
product_id int primary key,
product_name varchar(55),
price float 
);
create table sales (
sale_id int primary key,
sale_date date,
product_id int,
total int,
customer_id int,
rating int,
constraint fk_customer foreign key(customer_id) references customer(customer_id),
constraint fk_product foreign key(product_id) references product(product_id)
);