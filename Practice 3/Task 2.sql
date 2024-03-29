SELECT *
FROM CONTR c
         LEFT JOIN PERS p
                   ON c.PERS_ID = p.PERS_ID
         JOIN (SELECT *
                    FROM DEPART
                    WHERE 1500 BETWEEN MIN_SALARY AND MAX_SALARY) d
                   ON p.DEPART_ID = d.DEPART_ID
WHERE c.DEPART_ID IS NOT NULL;
SELECT *
FROM CONTR c,
     PERS p,
     (SELECT *
      FROM DEPART
      WHERE 1500 BETWEEN MIN_SALARY AND MAX_SALARY) d
WHERE c.PERS_ID(+) = p.PERS_ID
  AND p.DEPART_ID(+) = d.DEPART_ID
  AND c.DEPART_ID IS NOT NULL;
