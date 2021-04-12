--SALEORDERS tablosu uzerinde hangi sehirde ne kadarlik satis yapildigi bilgisini cek.
-- CITY, TOTALSALE

SELECT CITY,
SUM(LINETOTAL) AS TOTALSALE
FROM SALEORDERS
GROUP BY CITY
ORDER BY CITY

