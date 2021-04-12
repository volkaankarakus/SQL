--sehirlerin haftanin gunlerine gore ne kadarlik satis yaptigi bilgisini soyle getir :
-- CITY, PAZARTESI,SALI,CAR..........

SELECT 
DISTINCT CITY,--distinct yerine FROM SALEORDERS S'ten sonra GROUP BY CITY de yapabilirdik.
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND DAYOFWEEK_='01.PZT') AS PAZARTESI,
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND DAYOFWEEK_='02.SAL') AS SALI,
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND DAYOFWEEK_='03.�AR') AS CARSAMBA,
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND DAYOFWEEK_='04.PER') AS PERSEMBE,
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND DAYOFWEEK_='05.CUM') AS CUMA,
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND DAYOFWEEK_='06.CMT') AS CUMARTESI,
(SELECT SUM(LINETOTAL) FROM SALEORDERS WHERE CITY=S.CITY AND DAYOFWEEK_='07.PAZ') AS PAZAR

FROM SALEORDERS S
ORDER BY 1