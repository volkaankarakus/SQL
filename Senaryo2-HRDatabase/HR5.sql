--hala calismaya devam eden KADIN ve ERKEK sayilarini baslik olarak :
-- DEPARTMENT,MALE_PERSONCOUNT,FEMALE_PERSONCOUNT olarak getiren sorgu.

--burada JOIN yapilmayacak, cunku kadin ve erkek icin satir tekrari soz konusu, o yuzden SUBQUERY yapmamiz gerekiyor.
SELECT *,
(SELECT COUNT(*) FROM PERSON WHERE DEPARTMENTID=D.ID AND GENDER='E' AND OUTDATE IS NULL) AS MALE_PERSONCOUNT,
(SELECT COUNT(*) FROM PERSON WHERE DEPARTMENTID=D.ID AND GENDER='K' AND OUTDATE IS NULL) AS FEMALE_PERSONCOUNT,
(SELECT COUNT(*) FROM PERSON WHERE DEPARTMENTID=D.ID  AND OUTDATE IS NULL) AS TOTAL_PERSONCOUNT
FROM
DEPARTMENT D
ORDER BY D.DEPARTMENT