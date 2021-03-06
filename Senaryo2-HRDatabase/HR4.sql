--sirkette hala calismaya devam eden,kadin ve erkek sayilarini:
-- DEPARTMENT,GENDER,PERSONALCOUNT olarak getir.

SELECT 
D.DEPARTMENT,

CASE
	WHEN PER.GENDER='E' THEN 'Erkek'
	WHEN PER.GENDER='K' THEN 'Kad?n'
END AS GENDER,

COUNT(PER.ID) AS PERSONALCOUNT
FROM PERSON PER
INNER JOIN DEPARTMENT D ON D.ID=PER.DEPARTMENTID
WHERE PER.OUTDATE IS NULL
GROUP BY GENDER,D.DEPARTMENT
ORDER BY 1,2
