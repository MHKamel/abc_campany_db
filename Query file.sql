----------------------------------------------------------------------------------------------
/* Detail information about suppliers and the number of products that they provide. */
----------------------------------------------------------------------------------------------
SELECT s.supplier_id, s.name, s.email, s.last_login, s.address, s.telephone,
COUNT(p.product_id) AS number_of_products 
FROM supplier s LEFT OUTER JOIN products p ON s.supplier_id = p.supplier_id 
GROUP BY s.supplier_id, s.name, s.email, s.last_login, s.address, s.telephone
----------------------------------------------------------------------------------------------
/* 10 best-selling products with the total amount and their supplier.*/
----------------------------------------------------------------------------------------------
SELECT p.product_id, p.name AS product_name, p.description, p.price, p.images, p.tags, 
p.comments,p.total_amount,s.name AS supplier_name, 
COUNT(oi.order_item_id) number_of_sold_items
FROM `products` p 
JOIN orderitems oi ON oi.product_id = p.product_id
JOIN supplier s ON p.supplier_id = s.supplier_id 
GROUP BY p.product_id, p.name, p.description, p.price, p.images, p.tags, 
p.comments, p.total_amount, s.name
LIMIT 10
----------------------------------------------------------------------------------------------
/* List of customers and their total purchases.*/
----------------------------------------------------------------------------------------------
SELECT c.customer_id, c.full_name, c.email, c.last_login, c.address, c.telephone, 
SUM(oi.quantity*oi.price) AS total_purchases 
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id
JOIN orderitems oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.full_name, c.email, c.last_login, c.address, c.telephone
----------------------------------------------------------------------------------------------
/* List of returned items.*/
----------------------------------------------------------------------------------------------
SELECT * FROM `returned_products` rp JOIN products p ON rp.product_id = p.product_id
----------------------------------------------------------------------------------------------
/* List of products in the fashion category that were sold last month.*/
----------------------------------------------------------------------------------------------
SELECT p.product_id, p.name AS product_name, p.description, p.price, p.images, p.tags, 
p.comments,p.total_amount, c.name AS catagory_name, o.order_date
FROM category c 
JOIN products p ON c.category_id = p.category_id
JOIN orderitems oi ON p.product_id = oi.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE c.name = 'fashion' AND o.order_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY oi.product_id
----------------------------------------------------------------------------------------------