SELECT income, COUNT(*) AS cnt
  FROM Graduates
 GROUP BY income
HAVING COUNT(*) >= ALL(SELECT COUNT(*)
                         FROM Graduates
			GROUP BY income);

SELECT income, COUNT(*) AS cnt
  FROM Graduates
 GROUP BY income
HAVING COUNT(*) >= (SELECT MAX(cnt)
                      FROM (SELECT COUNT(*) AS cnt
		              FROM Graduates
			     GROUP BY income) TMP);
