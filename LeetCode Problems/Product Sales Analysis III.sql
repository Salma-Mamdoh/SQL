/* Write your T-SQL query statement below */
WITH MinYearRows AS (
    SELECT product_id, MIN(year) AS min_year
    FROM Sales
    GROUP BY product_id
)

SELECT s.product_id, s.year AS first_year, s.quantity, s.price
FROM Sales s
JOIN MinYearRows m ON s.product_id = m.product_id AND s.year = m.min_year;
