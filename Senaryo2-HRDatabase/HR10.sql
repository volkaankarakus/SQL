--Sirket 5. yýlýnda ustunde herkesin isminin ve soyisminin bas harflerinin bulundugu bir ajanda bastýracaktýr.
--bunun icin hangi harf kombinasyonundan en az ne kadar sayida ajanda bastirilacagini sorgulat.
--SHORTNAME,PERSONCOUNT
--(iki isimlilerin ilk isminin bas harfi kullanilsin)

SELECT
SUBSTRING(NAME_,1,1)+'.'+SUBSTRING(SURNAME,1,1)+'.' AS SHORTNAME, --substring yerine LEFT desek de olurdu.
COUNT(*) AS PERSONCOUNT
FROM PERSON 
GROUP BY SUBSTRING(NAME_,1,1),SUBSTRING(SURNAME,1,1)
ORDER BY 2 DESC