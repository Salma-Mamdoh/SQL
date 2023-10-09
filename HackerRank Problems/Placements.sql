SELECT S.Name FROM STUDENTS AS S 
JOIN FRIENDS AS F ON F.ID=S.ID
JOIN PACKAGES AS P1 ON P1.ID=S.ID
JOIN PACKAGES AS P2 ON P2.ID = F.FRIEND_ID
WHERE P2.SALARY>P1.SALARY
ORDER BY P2.SALARY;
