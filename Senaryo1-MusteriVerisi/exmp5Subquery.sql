--10'dan fazla musterisi olan sehirleri, musteri sayisi ile birlikte
--musteri sayisi azalarak getir.
-- SUBQUERY ILE.
SELECT *,
(SELECT COUNT(*) FROM CUSTOMERS C WHERE CITYID=CT.ID) AS CUSTOMERCOUNT
FROM CITIES CT
WHERE
(SELECT COUNT(*) FROM CUSTOMERS C WHERE CITYID=CT.ID)>=10
ORDER BY CUSTOMERCOUNT DESC
