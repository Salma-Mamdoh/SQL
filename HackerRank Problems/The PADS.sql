SELECT CONCAT(NAME,'('+LEFT(OCCUPATION, 1)+')') AS OCCUPATION_ABBREVIATION
FROM OCCUPATIONS
ORDER BY NAME;

SELECT 'There are a total of ' + CAST(COUNT(*) AS VARCHAR) + ' ' + LOWER(OCCUPATION)+ 's.'
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(*);