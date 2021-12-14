SELECT MIN(seq + 1) AS gap
  FROM SeqTbl
 WHERE (seq + 1) NOT IN (SELECT seq FROM SeqTbl);
