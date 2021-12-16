SELECT SI.shop,
       count(SI.item) AS my_item_cnt,
       (SELECT COUNT(item) FROM Items) - count(SI.item) AS diff_cnt
  FROM ShopItems SI INNER JOIN Items I
    ON SI.item = I.item
 GROUP BY SI.shop;
