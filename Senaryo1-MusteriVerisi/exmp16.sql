--Musterilerin dogum gunlerini haftanin gunu olarak getir(Pzt, Sali gibi)

--Solda Security -> Logins-> sa 'e cift tikla, Default Language'i Turkce yap.
SELECT 
DATENAME(DW,BIRTHDATE),BIRTHDATE,
* FROM CUSTOMERS 

--------------
-- Dil ayari yapmanin kodu :
SET LANGUAGE Turkish
SELECT
CUSTOMERNAME,
DATENAME(DW,BIRTHDATE) AS BIRTHDAY
FROM CUSTOMERS 

