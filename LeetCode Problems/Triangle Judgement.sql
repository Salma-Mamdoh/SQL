/* Write your T-SQL query statement below */
select x,y,z,
case when x+y> z AND x+z >y AND y+z>x THEN 'Yes'
ELSE 'No' 
end as triangle
from Triangle
