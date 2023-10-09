/* Write your T-SQL query statement below */
select p.project_id , ROUND(SUM(e.experience_years) *1.00 /count(e.employee_id),2) AS average_years
from Project AS p join Employee AS e on p.employee_id=e.employee_id
GROUP BY p.project_id
