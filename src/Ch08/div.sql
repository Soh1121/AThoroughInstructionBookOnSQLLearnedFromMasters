SELECT DISTINCT shop
  FROM ShopItems SI1
 WHERE NOT EXISTS
       (SELECT I.item
          FROM Items I LEFT OUTER JOIN ShopItems SI2
	    ON I.item = SI2.item
	   AND SI1.shop = SI2.shop
	 WHERE SI2.item IS NULL);
