--LEFT,RIGHT,LEN
-- left ve right, ister soldan ister sagdan istedigimiz kadar karakter almamizi saglar.

SELECT LEFT('VOLKAN KARAKUS',6)
SELECT RIGHT('VOLKAN KARAKUS',3)
SELECT LEN('VOLKAN KARAKUS')

--adimi ve soyadimi ayri ayri yazdirmak istiyorum.
SELECT LEFT('VOLKAN KARAKUS',CHARINDEX(' ','VOLKAN KARAKUS')),
       RIGHT('VOLKAN KARAKUS',LEN('VOLKAN KARAKUS')-CHARINDEX(' ','VOLKAN KARAKUS'))


--elimizdeki datadaki isim soyisimleri bu sekilde ayiralim.(tek isimliler icin)
SELECT LEFT(NAMESURNAME,CHARINDEX(' ',NAMESURNAME)),
       RIGHT(NAMESURNAME,LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME))
FROM USER_ U