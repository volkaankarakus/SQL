--herbir personelin ne kadar zamandir calistigini ay olarak getir.
-- PERSON,INDATE,OUTDATE,WORKINGTIME

--iki tane ayri tabloyu UNION ALL ile birlestirirek yapicaz (yeni method)

SELECT P.NAME_+' '+P.SURNAME AS PERSON_,
P.INDATE,
P.OUTDATE,
DATEDIFF(MONTH,INDATE,GETDATE()) AS WORKINGTIME,
CASE
	WHEN OUTDATE IS NOT NULL THEN 'ISTEN AYRILDI'
	ELSE 'DEVAM EDIYOR'
END AS PERSONSTATUS
FROM PERSON P 

UNION ALL

SELECT P.NAME_+' '+P.SURNAME AS PERSON_,
P.INDATE,
P.OUTDATE,
DATEDIFF(MONTH,INDATE,OUTDATE) AS WORKINGTIME,
CASE
	WHEN OUTDATE IS NOT NULL THEN 'ISTEN AYRILDI'
	ELSE 'DEVAM EDIYOR'
END AS PERSONSTATUS
FROM PERSON P 
ORDER BY WORKINGTIME DESC