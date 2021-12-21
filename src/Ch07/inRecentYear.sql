SELECT year, sale
  FROM Sales2 S1
 WHERE sale =
       (SELECT sale
          FROM Sales2 S2
	 WHERE S2.year =
	       (SELECT MAX(year)
	          FROM Sales2 S3
		 WHERE S1.year > S3.year))
 ORDER BY year;

SELECT year, current_sale
  FROM (SELECT year,
               sale AS current_sale,
	       SUM(sale) OVER (ORDER BY year
	                        ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS pre_sale
	  FROM Sales2) TMP
 WHERE current_sale = pre_sale
 ORDER BY year;
