/* Write your T-SQL query statement below */
SELECT'Low Salary' AS category , COUNT(CASE WHEN income <20000 THEN 1 ELSE NULL END ) as accounts_count FROM Accounts 
union
SELECT'Average Salary' AS category , COUNT(CASE WHEN income>=20000 and income<=50000 THEN 1 ELSE NULL END ) as accounts_count FROM Accounts
union
SELECT'High Salary' AS category , COUNT(CASE WHEN income>50000 THEN 1 ELSE NULL END ) as accounts_count FROM Accounts
