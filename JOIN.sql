SELECT USER_.USERNAME_,USER_.NAMESURNAME,USER_.EMAIL,USER_.TELNR1,USER_.TELNR2,
	   ADDRES.ADDRESSTEXT
FROM USER_
JOIN ADDRES ON USER_.ID=ADDRES.USERID
WHERE USER_.ID=1
