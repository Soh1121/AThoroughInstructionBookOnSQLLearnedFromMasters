SELECT employee, child_1 AS child FROM Personnel
UNION ALL
SELECT employee, child_2 AS child FROM Personnel
UNION ALL
SELECT employee, child_3 AS child FROM Personnel;

CREATE VIEW Children(child)
    AS SELECT child_1 FROM Personnel
       UNION
       SELECT child_2 FROM Personnel
       UNION
       SELECT child_3 FROM Personnel;

SELECT EMP.employee, Children.child
  FROM Personnel EMP
  LEFT OUTER JOIN Children
       ON Children.child IN (EMP.child_1, EMP.child_2, EMP.child_3);
