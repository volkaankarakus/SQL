--herbir pozisyonda mevcut halde calisanlar olarak kac kisi ve ortalama maaslarinin ne kadar oldugunu listelettir.
-- POSITION,PERSONCOUNT,AVG_SALARY

--SUBQUERY ILE
SELECT
POS.POSITION,
(SELECT COUNT(*) FROM PERSON WHERE POSITIONID=POS.ID) AS PERSONCOUNT,
(SELECT ROUND(AVG(SALARY),2) FROM PERSON WHERE POSITIONID=POS.ID) AS AVG_SALARY
FROM POSITION POS
ORDER BY POS.POSITION 