-- her personelin adini,pozisyonunu, bagli oldugu menajerin adini ve pozisyonunu yazdir.
-- PERSON,POSITION,MANAGER,MANAGERPOSITION
SELECT
P.NAME_+' '+P.SURNAME AS PERSONNAME,
POS.POSITION,
P2.NAME_+' '+P2.SURNAME AS MANAGERNAME,
POS2.POSITION AS MANAGERPOSITION
FROM PERSON P
INNER JOIN POSITION POS ON POS.ID=P.POSITIONID
INNER JOIN PERSON P2 ON P.MANAGERID=P2.ID --person'u bir daha cektik cunku herhangi birinin 
										  --menajeri de person tablosunda.
INNER JOIN POSITION POS2 ON POS2.ID=P2.POSITIONID	  