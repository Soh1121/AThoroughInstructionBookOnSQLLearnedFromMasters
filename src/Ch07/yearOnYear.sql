SELECT year, current_sale AS sale,
       CASE WHEN current_sale = pre_sale
            THEN '→'
	    WHEN current_sale > pre_sale
	    THEN '↑'
	    WHEN current_sale < pre_sale
	    THEN '↓'
	    ELSE '-' END AS var
  FROM (SELECT year,
               sale AS current_sale,
	       (SELECT sale
	          FROM Sales S2
		 WHERE S2.year = S1.year - 1) AS pre_sale
	  FROM Sales S1) TMP
 ORDER BY year;

SELECT year, current_sale AS sale,
       CASE WHEN current_sale = pre_sale
            THEN '→'
	    WHEN current_sale > pre_sale
	    THEN '↑'
	    WHEN current_sale < pre_sale
	    THEN '↓'
	    ELSE '-' END AS var
  FROM (SELECT year, sale AS current_sale,
               SUM(sale) OVER (ORDER BY year
	                       RANGE BETWEEN 1 PRECEDING AND 1 PRECEDING) AS pre_sale
	  FROM Sales) TMP
 ORDER BY year;
