use sales_db;
SELECT * FROM sales;
-- Show first 5 rows only
SELECT * FROM sales LIMIT 5;

-- Show top 3 most expensive orders (RANKING)
SELECT * FROM sales
ORDER BY price DESC
LIMIT 3;

-- Display: customer_name AS Customer,product AS Item,price AS Price
SELECT customer_name AS Customer,product AS Item,price AS Price
FROM sales;

-- Show orders from North region, limit 2
SELECT * FROM sales
WHERE region = 'North'
LIMIT 2;

-- Show:order_id,quantity,price,quantity * price AS revenue
SELECT order_id,quantity,price,quantity * price AS revenue
FROM sales;