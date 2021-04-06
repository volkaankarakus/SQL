-- exmp11'de silinen CITIES tablosundaki ANKARA ve ÝSTANBUL kayitlarini,
--	  ayni ID'leri alacak sekilde yeniden tabloya insert ediniz.



--asagida yazan 2 kod satiri calismaz, cunku ID otomatik artandi.
INSER INTO CITIES(ID,CITY)
VALUES (6,'ANKARA') 

---------
--cozum:
SET IDENTITY_INSERT CITIES ON
INSERT INTO CITIES(ID,CITY)
VALUES(6,'ANKARA')

--aynisini istanbul icin yaparken tekrar IDENTITY_INSERT yapmama gerek yok, zaten bunu ON yaptik.
INSERT INTO CITIES(ID,CITY)
VALUES(34,'ÝSTANBUL')
