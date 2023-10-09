/* Write your T-SQL query statement below */
SELECT distinct v.author_id as id
FROM Views AS v
join Views as v2 on v.author_id=v2.viewer_id and v.article_id=v2.article_id 
order by v.author_id
