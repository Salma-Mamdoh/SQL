SELECT 
  CASE 
    WHEN A + B > C AND B + C > A AND A + C > B THEN
      CASE 
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        WHEN A <> B AND B <> C AND A <> C THEN 'Scalene'
      ELSE 'Not A Triangle'
      END
    ELSE 'Not A Triangle'
  END AS TriangleType
FROM TRIANGLES;
