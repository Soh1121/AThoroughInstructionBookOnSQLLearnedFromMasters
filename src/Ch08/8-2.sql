SELECT EMP.employee, COUNT(Children.child) AS child_cnt
  FROM Personnel EMP
  LEFT OUTER JOIN Children
    ON Children.child IN (EMP.child_1, EMP.child_2, EMP.child_3)
 GROUP BY EMP.employee
 ORDER BY child_cnt DESC;
