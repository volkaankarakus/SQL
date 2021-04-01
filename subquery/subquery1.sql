--SUBQUERY
--gerek bir tablodan gerekse birden fazla tablodan joinleyerek datamizi donduruyorduk.
--bu kolonlar bazen isimizi gormeyebilir.

--ayni ornegý hem JOIN ile hem de SUBQUERY ile yapalim. 
SELECT U.NAMESURNAME,COUNT(B.ID)
FROM USER_ U
JOIN BASKET B ON B.USERID=U.ID
GROUP BY U.NAMESURNAME

SELECT U.ID,U.NAMESURNAME,
( SELECT COUNT(*) FROM BASKET WHERE USERID=U.ID)
FROM USER_ U 
WHERE (SELECT COUNT(*) FROM BASKET WHERE USERID=U.ID)>0