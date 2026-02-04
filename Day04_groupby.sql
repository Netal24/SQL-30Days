use sales_db;

SELECT * FROM sales;

ALTER TABLE sales
ADD COLUMN revenue DECIMAL(10,2);

UPDATE sales
SET revenue = quantity * price;

SELECT product,COUNT(order_id) 
FROM sales
GROUP BY product;

-- Find total quantity sold for each product.
SELECT product,SUM(quantity) 
FROM sales
GROUP BY product;

-- Find the total revenue generated in each region.
SELECT region,SUM(revenue) AS total_revenue
FROM sales
GROUP BY region;

-- Calculate total revenue for each product.
SELECT product,SUM(revenue)
FROM sales
GROUP BY product;

-- Count the number of orders placed in each region.
SELECT region,SUM(quantity) 
FROM sales
GROUP BY region;

-- Find the total number of orders for each customer.
SELECT customer_name,SUM(quantity) 
FROM sales
GROUP BY customer_name;

-- Revenue by region for only Laptop sales
SELECT region, SUM(revenue) AS laptop_revenue
FROM sales
WHERE product = 'Laptop'
GROUP BY region;

-- Average order revenue per product
SELECT product, AVG(revenue) AS avg_revenue
FROM sales
GROUP BY product;

-- Find the maximum & minimum price for each product.
SELECT product, MAX(price) AS max_price , MIN(price) AS min_price
FROM sales
GROUP BY product;

-- Regions with total revenue greater than 70,000
SELECT region, SUM(revenue) AS total_revenue
FROM sales
GROUP BY region
HAVING SUM(revenue) > 70000;

-- Products with more than 2 orders
SELECT product, COUNT(order_id) AS order_count
FROM sales
GROUP BY product
HAVING COUNT(order_id) > 2;

-- Customers whose total purchase exceeds 50,000
SELECT customer_name, SUM(revenue) AS total_spent
FROM sales
GROUP BY customer_name
HAVING SUM(revenue) > 50000;

-- Top 2 selling products

SELECT product, SUM(revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 2;



