USE sales_db;
SELECT * FROM sales_db.sales;

-- Display all orders sorted by price in descending order.
SELECT * FROM sales
ORDER BY price DESC;

-- Display distinct customer names who have placed orders
SELECT DISTINCT customer_name FROM sales;

-- Show distinct products sold in the North region.
SELECT DISTINCT product FROM sales
WHERE region = 'North';

-- Show order_id, product, price,Sort by price (lowest first).
SELECT order_id , product , price , quantity
FROM sales
ORDER BY quantity;

-- Display all orders where: region is South ,quantity is greater than 1 ,Sort the result by order_date.
SELECT * FROM sales
WHERE region = 'South' AND quantity > 1
ORDER BY order_date;