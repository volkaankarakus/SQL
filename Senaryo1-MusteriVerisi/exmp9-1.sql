-- exmp9'daki havada kalan column'u biz DynamicView haline getirip, 
--		sonraki satirlarsa tek satirda column ismiyle cagirabiliriz.

SELECT AGEGROUP2,COUNT(TMP.ID) AS CUSTOMERCOUNT FROM 
(
SELECT *,
CASE 
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 20 AND 35 THEN '20-35 YAS ARASI'
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 36 AND 45 THEN '20-35 YAS ARASI'
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 46 AND 55 THEN '20-35 YAS ARASI'
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 56 AND 65 THEN '20-35 YAS ARASI'
	WHEN DATEDIFF(YEAR,BIRTHDATE,GETDATE())> 65 THEN '+ 65 YAS'
END AGEGROUP2 -- buna AGEGROUP2 dedim, cunku AGEGROUP zaten CUSTOMERS icinde var. Ýsmi ayni olursa hata verir.
			  --  hangi columnu kastettigimizi bilemez.
FROM CUSTOMERS 
) TMP -- tmp diye yeni bir tablo olusturdum aslinda.Sonra da bu tablonun column'larini yukarida girdim.
GROUP BY AGEGROUP2
ORDER BY AGEGROUP2 