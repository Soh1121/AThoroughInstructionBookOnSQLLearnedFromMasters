SELECT seq
  FROM Sequence N
 WHERE seq BETWEEN 1 AND 12
   AND NOT EXISTS
       (SELECT *
          FROM SeqTbl S
	 WHERE N.seq = S.seq);

SELECT N.seq
  FROM Sequence N LEFT OUTER JOIN SeqTbl S
                    ON N.seq = S.seq
 WHERE N.seq BETWEEN 1 AND 12
   AND S.seq IS NULL;
