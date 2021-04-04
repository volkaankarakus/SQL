--10'dan fazla musterisi olan sehirleri, musteri sayisi ile birlikte
--musteri sayisi azalarak getir.

SELECT CT.ID,CT.CITY,
COUNT(C.ID) AS CUSTOMERCOUNT
FROM CUSTOMERS C
INNER JOIN CITIES CT ON CT.ID=C.CITYID
GROUP BY CT.ID,CT.CITY
HAVING COUNT(C.ID)>=10 --WHERE COUNT(C.ID)>=10 olmaz, cunku istenen sart COUNT'lu, yani aggregate function o yuzden HAVING.
ORDER BY CUSTOMERCOUNT DESC -- ORDER BY 2 de yazabilirdik.

