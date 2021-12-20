SELECT deal_date, price,
       CASE SIGN(price - MAX(price) OVER (ORDER BY deal_date
                                           ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING))
	    WHEN 1 THEN 'up'
	    WHEN 0 THEN 'stay'
	    WHEN -1 THEN 'down' ELSE NULL END AS diff
  FROM MyStock;

CREATE VIEW MyStockUpSeq(deal_date, price, row_num)
AS
SELECT deal_date, price, row_num
  FROM (SELECT deal_date, price,
               CASE SIGN(price - MAX(price) OVER (ORDER BY deal_date
	                                           ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING))
	       WHEN 1 THEN 'up'
	       WHEN 0 THEN 'stay'
	       WHEN -1 THEN 'down' ELSE NULL END AS diff,
	       ROW_NUMBER() OVER (ORDER BY deal_date) AS row_num
          FROM MyStock) TMP
 WHERE diff = 'up';
