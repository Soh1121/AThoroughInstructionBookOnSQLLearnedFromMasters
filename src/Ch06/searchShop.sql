SELECT SI.shop
  FROM ShopItems SI INNER JOIN Items I
    ON SI.item = I.item
 GROUP BY SI.shop
HAVING COUNT(SI.item) = (SELECT COUNT(item) FROM Items);

SELECT SI.shop
  FROM ShopItems SI LEFT OUTER JOIN Items I
    ON SI.item=I.item
 GROUP BY SI.shop
HAVING COUNT(SI.item) = (SELECT COUNT(item) FROM Items)
   AND COUNT(I.item) = (SELECT COUNT(item) FROM Items);
