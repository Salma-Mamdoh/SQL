/* Write your T-SQL query statement below */
SELECT
    e.employee_id AS employee_id,
    e.name AS name,
    COUNT(DISTINCT r.employee_id) AS reports_count,
    ROUND(AVG(r.age*1.00), 0) AS average_age
FROM
    Employees e
LEFT JOIN
    Employees r ON e.employee_id = r.reports_to
GROUP BY
    e.employee_id, e.name
HAVING
    COUNT(DISTINCT r.employee_id) >= 1
ORDER BY
    e.employee_id;
