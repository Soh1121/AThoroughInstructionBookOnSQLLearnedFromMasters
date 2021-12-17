SELECT I.item_no, SH.total_qty
  FROM Items2 I LEFT OUTER JOIN
       (SELECT item_no, SUM(quantity) AS total_qty
          FROM SalesHistory
	 GROUP BY item_no) SH
    ON I.item_no = SH.item_no;

SELECT I.item_no, SUM(SH.quantity) AS total_qty
  FROM Items2 I LEFT OUTER JOIN SalesHistory SH
    ON I.item_no = SH.item_no
 GROUP BY I.item_no;
