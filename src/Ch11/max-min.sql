-- これは全表検索が必要
SELECT MAX(item)
  FROM Items2;

-- これはインデックスを利用できる
SELECT MAX(item_no)
  FROM Items2;
