SELECT num AS prime
  FROM Numbers Dividend
 WHERE num > 1
   AND NOT EXISTS
       (SELECT *
          FROM Number Divisor
	 WHERE Divisor.num <= Dividend.num /2
	   AND Divisor.num <> 1
	   AND MOD(Dividend.num, Divisor.num) = 0)
 ORDER BY prime;
