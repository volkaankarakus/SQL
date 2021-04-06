-- CUSTOMERS TABLOSUNDAKI AGEGROUP ALANINI,
-- 20-35 YAS ARASI, 36-45 YAS ARASI, 46-55 YAS ARASI, 56-65 YAS ARASI VE 65USTU OLARAK
-- GUNCELLE.


--YAS HESAPLAMAK ICIN TARIH FARKI ALMAMIZ GEREKIYOR.
SELECT
DATEDIFF(YEAR,BIRTHDATE,GETDATE()) AS YAS,AGEGROUP
FROM CUSTOMERS 

UPDATE CUSTOMERS SET AGEGROUP='20-35 YAS'
WHERE DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 20 AND 35
UPDATE CUSTOMERS SET AGEGROUP='36-45 YAS'
WHERE DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 36 AND 45
UPDATE CUSTOMERS SET AGEGROUP='46-55 YAS'
WHERE DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 46 AND 55
UPDATE CUSTOMERS SET AGEGROUP='56-65 YAS'
WHERE DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 56 AND 65
UPDATE CUSTOMERS SET AGEGROUP='+ 65'
WHERE DATEDIFF(YEAR,BIRTHDATE,GETDATE())>65

