SELECT d.DNAME,
       e.ENAME,
       round(e.SAL / (sum(e.SAL) over (PARTITION BY d.DEPTNO)), 2) AS sum_percent
FROM EMP e
         RIGHT JOIN DEPT d ON e.DEPTNO = d.DEPTNO
ORDER BY d.DEPTNO, e.ENAME;
