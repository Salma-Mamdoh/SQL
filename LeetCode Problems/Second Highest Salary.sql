/* Write your T-SQL query statement below */
SELECT 
    CASE 
        WHEN (SELECT COUNT(DISTINCT salary) FROM Employee) >= 2 THEN 
            (SELECT MIN(salary) FROM (
                SELECT DISTINCT TOP 2  salary FROM Employee ORDER BY salary DESC
            ) AS Subquery)
        ELSE NULL
    END AS SecondHighestSalary;
