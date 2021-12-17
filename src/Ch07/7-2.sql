SELECT prc_date, prc_amt,
       CASE WHEN cnt < 3 THEN NULL
            ELSE mvg_avg END AS mvg_avg
  FROM (SELECT prc_date, prc_amt,
               AVG(prc_amt) OVER (ORDER BY prc_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) mvg_avg,
	       COUNT(*) OVER (ORDER BY prc_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) cnt
	  FROM Accounts) TMP;

SELECT prc_date, A1.prc_amt,
       (SELECT AVG(prc_amt)
          FROM Accounts A2
	 WHERE A1.prc_date >= A2.prc_date
	   AND (SELECT COUNT(*)
	          FROM Accounts A3
		 WHERE A3.prc_date BETWEEN A2.prc_date AND A1.prc_date) <= 3
	HAVING COUNT(*) = 3) AS mvg_sum
  FROM Accounts A1
 ORDER BY prc_date;
