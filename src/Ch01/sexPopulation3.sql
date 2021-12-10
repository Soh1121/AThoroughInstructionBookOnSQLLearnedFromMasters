SELECT pref_name,
       -- 男性の人口
       CASE WHEN sex = '1' THEN population ELSE 0 END AS cnt_m,
       -- 女性の人口
       CASE WHEN sex = '2' THEN population ELSE 0 END AS cnt_f
  FROM PopTbl2;
