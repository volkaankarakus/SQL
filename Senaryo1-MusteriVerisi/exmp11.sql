--CITIES tablosundan 'Ankara' kaydini sildigimizi varsayalim.
-- bu durumda sehri Ankara olan musterilerin sehir alani bos gelecektir.
-- sehir alani bos olan musterileri listeleyen sorguyu yazýnýz.

-- ankaradakileri getirelim.
SELECT * FROM CUSTOMERS C
INNER JOIN CITIES CT ON CT.ID=C.CITYID
WHERE CT.CITY='ANKARA'

------------------
-- ankarayi tablodan silelim.
DELETE FROM CITIES WHERE CITY='ANKARA'

-----------------
--ankarayi sildik ama ankara kayitli musteriler duruyor :
SELECT * FROM CUSTOMERS WHERE CITYID=6

-----------------
-- ama tekrar 
SELECT * FROM CUSTOMERS C
INNER JOIN CITIES CT ON CT.ID=C.CITYID
WHERE CT.CITY='ANKARA'
--bunu cagirirsam hicbirsey gelmez cunku INNERJOIN kesisimdi.

-----------------
SELECT * FROM CUSTOMERS C
LEFT JOIN CITIES CT ON CT.ID=C.CITYID
WHERE C.CITYID=6 --dersem bu sefer gelir.

------------------
--herhangi null sehirleri bulmak icin
SELECT * FROM CUSTOMERS C
LEFT JOIN CITIES CT ON CT.ID=C.CITYID
WHERE CT.CITY IS NULL

--NULL OLAN SEHIRLERI SUBQUERY ILE BULMAK ISTESEYDIK:
SELECT * FROM CUSTOMERS 
WHERE CITYID NOT IN 
 (SELECT ID FROM CITIES)
