--musterinin sepetine ekledigi son urun?
-- bunun cozumu icin subquery yazmaktan baska sansimiz yok.

SELECT U.ID,U.NAMESURNAME,
(SELECT MIN(CREATEDDATE) FROM BASKET WHERE USERID=U.ID) AS FIRSTBASKETDATE,--sisteme ilk sepet ekleme tarihi
(SELECT MAX(CREATEDDATE) FROM BASKET WHERE USERID=U.ID) AS LASTBASKETDATE,--sisteme en son sepet ekleme tarihi
																		 --NULL gelenler daha once sepet eklemeyenler
(SELECT COUNT(*) FROM BASKET WHERE USERID=U.ID) AS BASKETCOUNT, -- kac kere sepet eklemis

--simdi total'i bulurken bir musterinin birden fazla siparis olabilicegi icin subquery icinde subquery
(SELECT SUM(TOTAL) FROM BASKETDETAIL WHERE BASKETID IN (SELECT ID FROM BASKET WHERE USERID=U.ID)) AS TOTAL,

--kac tane urun aldigina bakalim.
(SELECT COUNT(*) FROM BASKETDETAIL WHERE BASKETID IN (SELECT ID FROM BASKET WHERE USERID=U.ID)) AS ITEMCOUNT_,

--son urun
(
SELECT ITEMNAME FROM ITEM WHERE ID IN
	(
	SELECT TOP 1 ITEMID FROM BASKETDETAIL WHERE BASKETID IN 
		(
		SELECT ID FROM BASKET WHERE USERID=U.ID
		) ORDER BY DATE_ DESC
	)
) AS LASTITEMNAME
FROM 
USER_ U
WHERE (SELECT COUNT(*) FROM BASKET WHERE USERID=U.ID)>0
