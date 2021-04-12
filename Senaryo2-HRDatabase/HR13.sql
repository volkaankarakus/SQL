--departmanlar�n ortalama k�demini ay olarak hesapla ve su sekilde cikart:
-- DEPARTMENT,AVG_WORKINGTIME
SELECT DEPARTMENT,
AVG(WORKINGTIME) AS AVG_WORKINGTIME 
FROM
(
SELECT D.DEPARTMENT,
CASE
	WHEN OUTDATE IS NOT NULL THEN DATEDIFF(MONTH,INDATE,OUTDATE)
	ELSE DATEDIFF(MONTH,INDATE,GETDATE())
END AS WORKINGTIME
FROM PERSON P
INNER JOIN DEPARTMENT D ON D.ID=P.DEPARTMENTID
) T 
GROUP BY DEPARTMENT
ORDER BY 1