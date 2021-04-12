--SALEORDERS tablosunda sehirlere gore hangi ayda ne kadarlik satis yapildigi bilgisi
--CITY,MONTH_,TOTALSALE

SELECT 
CITY,
MONTH_,
SUM(LINETOTAL) AS TOTALSALE 
FROM SALEORDERS
GROUP BY CITY,MONTH_