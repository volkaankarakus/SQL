--CONCAT
--iki veya daha fazla stringin yanyana birlestirilmesini saglar.

SELECT 'VOLKAN'+'KARAKUS' 

--ya da 

SELECT CONCAT('VOLKAN',' ','KARAKUS')

--CONCAT_WS (araya herhangi bir seperator alir.)
SELECT CONCAT_WS('+','VOLKAN','KARAKUS')
