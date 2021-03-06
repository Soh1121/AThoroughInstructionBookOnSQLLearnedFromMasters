SELECT seq
  FROM Sequence
 WHERE seq BETWEEN 1 AND 12
EXCEPT
SELECT seq
  FROM SeqTbl2;

SELECT seq
  FROM Sequence
 WHERE seq BETWEEN 1 AND 12
   AND seq NOT IN (SELECT seq FROM SeqTbl2);

SELECT seq
  FROM Sequence
 WHERE seq BETWEEN (SELECT MIN(seq) FROM SeqTbl2) AND (SELECT MAX(seq) FROM SeqTbl2)
EXCEPT SELECT seq FROM SeqTbl2;
