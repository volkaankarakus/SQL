--OCAK 2018'DE ALISVERIS YAPAN KADIN VE ERKEK MUSTERILER
SELECT U.GENDER,SUM(BD.TOTAL)
FROM USER_ U
INNER JOIN BASKET B ON B.USERID=U.ID
INNER JOIN BASKETDETAIL BD ON BD.BASKETID=B.ID
WHERE B.CREATEDDATE BETWEEN '20180101' AND '20180131'
GROUP BY U.GENDER