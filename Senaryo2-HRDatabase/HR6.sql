--sirketin PLANLAMA departmanina yeni bir SEF ATAMASI yapildi ve maasýný belirlemek istiyoruz.
--planlama departmani icin minimum,maximum ve ortalama sef maasý getiren sorgu.
--(NOT:isten cikmis personal maaslari dahildir)


--INNERJOIN ILE 
SELECT
POS.POSITION,MIN(P.SALARY) AS MIN_SALARY,
MAX(P.SALARY) AS MAX_SALARY,
ROUND(AVG(P.SALARY),2) AS AVG_SALARY --virgulden sonra 2 basamak yuvarlasin.
FROM POSITION POS
INNER JOIN PERSON P ON P.POSITIONID=POS.ID
WHERE POS.POSITION='PLANLAMA ÞEFÝ'
GROUP BY POS.POSITION 