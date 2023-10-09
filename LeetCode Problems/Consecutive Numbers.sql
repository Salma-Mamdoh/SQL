/* Write your T-SQL query statement below */
SELECT DISTINCT num as ConsecutiveNums
FROM (
    SELECT num,
           LEAD(num) OVER (ORDER BY id) AS next_num,
           LAG(num) OVER (ORDER BY id) AS prev_num
    FROM Logs
) AS consecutive_numbers
WHERE num = next_num AND num = prev_num;
