-- 中間テーブルが無駄な場合
SELECT *
  FROM (SELECT salse_date, MAX(quantity) AS max_qty
          FROM SalesHistory
	 GROUP BY salse_date) TMP
 WHERE max_qty >= 10;

-- HAVING句を活用
SELECT salse_date, MAX(quantity)
  FROM SalesHistory
 GROUP BY salse_date
HAVING MAX(quantity) >= 10;
