SELECT '歯抜けあり' AS gap
  FROM SeqTbl
HAVING COUNT(*) <> MAX(seq);
