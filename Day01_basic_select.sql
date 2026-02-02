CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    price INT,
    region VARCHAR(20)
);

SELECT * FROM sales;

-- Find all sales in the North region with price > 20000
SELECT * FROM sales
WHERE region = 'NORTH' and price > 20000;

-- Find all orders for Laptop or Tablet
SELECT * FROM sales
WHERE product = 'Laptop' or product = 'Tablet';

-- Find all sales not from the South region
SELECT * FROM sales
WHERE region <> 'South';

-- Find all sales where quantity > 2
SELECT * FROM sales
WHERE quantity > 2;

-- Find sales for Laptop with quantity = 1
SELECT * FROM sales
WHERE product = 'Laptop' AND quantity = 1;
