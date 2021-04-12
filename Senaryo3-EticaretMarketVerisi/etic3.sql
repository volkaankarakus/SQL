--her ilin haftanin en cok hangi gununde satis yaptigini ogrenip,
--   ona gore sehir ve gunlere ozel kampanya yapmak istiyoruz.
-- bunu : CITY,DAYOFWEEK_,TOTALSALE olarak getir.

SELECT CITY,
DAYOFWEEK_,
SUM(LINETOTAL) AS TOTALSALE
FROM SALEORDERS
GROUP BY CITY,DAYOFWEEK_
ORDER BY CITY,DAYOFWEEK_

------------------once ust tarafi run edelim.sonra asagiyi, sonra tekrar ustu.
------------------ bunun nedeni gunleri alfabetik siralamasi, bizim istedigimiz sey pazartesiden baslamasý.

UPDATE SALEORDERS SET DAYOFWEEK_='01.PZT' WHERE DAYOFWEEK_='Pazartesi'
UPDATE SALEORDERS SET DAYOFWEEK_='02.SAL' WHERE DAYOFWEEK_='Salý'
UPDATE SALEORDERS SET DAYOFWEEK_='03.ÇAR' WHERE DAYOFWEEK_='Carsamba'
UPDATE SALEORDERS SET DAYOFWEEK_='04.PER' WHERE DAYOFWEEK_='Persembe'
UPDATE SALEORDERS SET DAYOFWEEK_='05.CUM' WHERE DAYOFWEEK_='Cuma'
UPDATE SALEORDERS SET DAYOFWEEK_='06.CMT' WHERE DAYOFWEEK_='Cumartesi'
UPDATE SALEORDERS SET DAYOFWEEK_='07.PAZ' WHERE DAYOFWEEK_='Pazar'

