SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN ('a','e','i','o','u','A','E','I','O','U') AND RIGHT(REPLACE(CITY,' ',''),1) NOT IN ('a','e','i','o','u');
