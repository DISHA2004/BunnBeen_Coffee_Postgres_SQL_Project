select count(*) from city;
delete from  city;
delete from  product;
delete from customer;
truncate table sales;
SELECT COUNT(*) FROM customer;
SELECT customer_id FROM sales WHERE customer_id NOT IN (SELECT customer_id FROM customer) LIMIT 10;
SELECT customer_id FROM customer WHERE customer_id = 500 OR customer_id > 497;
SELECT generate_series(1, 500) AS id
EXCEPT 
SELECT customer_id FROM customer;
-- to import as it wasshowing error not having customer-ID=500
ALTER TABLE sales DISABLE TRIGGER ALL;
ALTER TABLE sales ENABLE TRIGGER ALL;
