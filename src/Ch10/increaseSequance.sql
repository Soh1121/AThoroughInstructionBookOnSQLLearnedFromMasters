SELECT MIN(deal_date) AS start_date, '〜', MAX(deal_date) AS end_date
  FROM (SELECT M1.deal_date,
               COUNT(M2.row_num) - MIN(M1.row_num) AS gap
	  FROM MyStockUpSeq M1 INNER JOIN MyStockUpSeq M2
	                          ON M2.row_num <= M1.row_num
			       GROUP BY M1.deal_date) TMP
 GROUP BY gap;
