--REPLACE
--birseyle birseyi yerdegistirir.

--degisken tanimlama
DECLARE @CUMLE AS VARCHAR(MAX) --degisken oldugunu tanimlamak icin @ isareti, sonra da turu.
--sonra bu degiskene deger atariz.
SET @CUMLE='Aradaki 7 farki bulunuz ve bu farklarin ne oldugunu aciklayiniz.'

--'aradaki' yerine 'resimdeki' yazalim.
SET @CUMLE=REPLACE(@CUMLE,'Aradaki','Resimdeki')
SELECT @CUMLE

--kac tane 'fark' kelimesi gectigini bulalim.
DECLARE @LEN1 AS INT
SET @LEN1=LEN(@CUMLE)

DECLARE @LEN2 AS INT
SET @CUMLE=REPLACE(@CUMLE,'fark','')
SET @LEN2=LEN(@CUMLE)

SELECT (@LEN1-@LEN2)/LEN('fark') -- 2 kere geciyormus