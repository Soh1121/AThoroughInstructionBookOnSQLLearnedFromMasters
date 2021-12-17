SELECT year, sale
  FROM Sales S1
 WHERE sale = (SELECT sale
                 FROM Sales S2
		WHERE S2.year = S1.year - 1)
 ORDER BY year;

SELECT year, current_sale
  FROM (SELECT year,
               sale AS current_sale,
	       SUM(sale) OVER (ORDER BY year
	                       RANGE BETWEEN 1 PRECEDING AND 1 PRECEDING) AS pre_sale
	  FROM Sales) TMP
 WHERE current_sale = pre_sale
 ORDER BY year;
