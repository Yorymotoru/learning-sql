SELECT e.DEPTNO,       SUM(e.SAL) AS SUM_SALARYFROM EMP eGROUP BY e.DEPTNOHAVING SUM(SAL) >= ALL (SELECT SUM(SAL) AS SUM_SALARY                        FROM EMP                        GROUP BY DEPTNO);