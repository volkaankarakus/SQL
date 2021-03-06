--istanbulda olup ilcesi kadikoy disindakileri listele.

--JOIN ILE
SELECT * FROM CUSTOMERS C
INNER JOIN CITIES CT ON CT.ID=C.CITYID
INNER JOIN DISTRICTS D ON D.ID=C.DISTRICTID
WHERE CT.CITY='?STANBUL' AND D.DISTRICT<>'KADIK?Y' -- esit degildir : <>
--ya da WHERE CT.CITY='?STANBUL' AND D.DISTRICT NOT LIKE 'KADIK?Y'
--ya da WHERE CT.CITY='?STANBUL' AND D.DISTRICT NOT IN('KADIK?Y')
--ya da WHERE CT.CITY='?STANBUL' AND NOT D.DISTRICT='KADIK?Y'


--SUBQUERY ILE
SELECT * FROM CUSTOMERS 
WHERE CITYID IN (SELECT ID FROM CITIES WHERE CITY='?STANBUL')
AND DISTRICTID NOT IN (SELECT ID FROM DISTRICTS WHERE DISTRICT='KADIK?Y')
