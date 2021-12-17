SELECT prc_date, A1.prc_amt,
       (SELECT AVG(prc_amt)
          FROM Accounts A2
	 WHERE A1.prc_date >= A2.prc_date
	   AND (SELECT COUNT(*)
	          FROM Accounts A3
		 WHERE A3.prc_date BETWEEN A2.prc_date AND A1.prc_date) <= 3) AS mvg_sum
  FROM Accounts A1
 ORDER BY prc_date;
