DELETE FROM Products
 WHERE rowid IN (SELECT rowid
                   FROM Products
		 EXCEPT
		 SELECT MAX(rowid)
		   FROM Products
		  GROUP BY name, price);

DELETE FROM Products
 WHERE rowid NOT IN (SELECT MAX(rowid)
                       FROM Products
		      GROUP BY name, price);
