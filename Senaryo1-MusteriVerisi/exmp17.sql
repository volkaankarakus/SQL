--dogum gunu bugun olan musteriler

SELECT * FROM CUSTOMERS

WHERE DATEPART(MONTH,BIRTHDATE)=DATEPART(MONTH,GETDATE())
AND
DATEPART(DAY,BIRTHDATE)=DATEPART(DAY,GETDATE())

------------------------
--ya da 
SELECT * FROM CUSTOMERS

WHERE MONTH(BIRTHDATE)=MONTH(GETDATE())
AND
DAY(BIRTHDATE)=DAY(GETDATE())
