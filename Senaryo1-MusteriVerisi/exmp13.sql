--TELNR1 ve TELNR2 icin tabloya yeni bir OPERATOR1 ve OPERATOR2 getirmek istiyoruz.
-- TELNR1 (531) 123123423 icin OPERATOR1 (531) gibi.

SELECT *,
SUBSTRING(TELNR1,1,5) AS OPERATOR1,
SUBSTRING(TELNR2,1,5) AS OPERATOR2
FROM CUSTOMERS
