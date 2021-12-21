SELECT CASE WHEN COUNT(*) = MAX(seq) THEN '歯抜けなし'
            ELSE '歯抜けあり' END AS result
  FROM SeqTbl;

SELECT '歯抜けあり' AS gap
  FROM SeqTbl
HAVING COUNT(*) <> MAX(seq)
 UNION ALL
SELECT '歯抜けなし' AS gap
  FROM SeqTbl
HAVING COUNT(*) = MAX(seq);
