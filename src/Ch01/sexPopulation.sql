-- 男性の人口
SELECT pref_name, population
  FROM PopTbl2
 WHERE sex = '1';

-- 女性の人口
SELECT pref_name, population
  FROM PopTbl2
 WHERE sex = '2';
