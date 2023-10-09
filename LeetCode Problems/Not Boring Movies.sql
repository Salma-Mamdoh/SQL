/* Write your T-SQL query statement below */
select id,movie,description,rating from Cinema 
where id%2=1 and NOT description='boring'
ORDER BY rating DESC
