SELECT I.item_no
  FROM Items2 I INNER JOIN SalesHistory SH
    ON I.item_no = SH.item_no;

SELECT DISTINCT I.item_no
  FROM Items2 I INNER JOIN SalesHistory SH
    ON I.item_no = SH.item_no;

SELECT item_no
  FROM Items2 I
 WHERE EXISTS (SELECT *
                 FROM SalesHistory SH
	        WHERE I.item_no = SH.item_no);
