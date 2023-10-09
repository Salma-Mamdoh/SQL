/* Write your T-SQL query statement below */
SELECT p.product_id, ROUND(SUM(p.price * u.units) * 1.0 / SUM(u.units),2) AS average_price
FROM Prices AS p
JOIN UnitsSold AS u
ON p.product_id = u.product_id AND u.purchase_date >= p.start_date AND u.purchase_date <= p.end_date
GROUP BY p.product_id;
