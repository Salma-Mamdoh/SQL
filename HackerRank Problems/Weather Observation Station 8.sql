SELECT DISTINCT CITY FROM STATION WHERE RIGHT(REPLACE(CITY,' ',''),1) IN ('a','e','i','o','u') AND LEFT(REPLACE(CITY,' ',''),1) IN ('a','e','i','o','u');
