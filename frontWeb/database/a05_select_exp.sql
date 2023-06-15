SELECT * FROM EMPLOYEES e; 
SELECT * FROM emp;
-- 사원번호(empno), 사원명(ename), 직책(job)
-- 관리자번호(mgr), 입사일(hiredate), 급여(sal)
-- 보너스(comm), 부서번호(deptno)
-- 급여가 3000이상이거나 2000미만이고 부서명이 30이 아닌 데이터를 검?
SELECT sal, deptno
FROM emp
WHERE (sal <2000 or sal >=3000) AND deptno != 30;
-- 사워명과 관리자번호(mgr)-null인 경우 0으로 출력
SELECT ename, mgr
FROM emp
WHERE mgr IS NULL;
-- null이 아닌 경우만 중복되지 않는 관리자번호를 출력하세요
SELECT mgr
FROM emp
WHERE mgr IS NOT NULL;
-- 급여가 2000이ㅣ상이고 보너스가 null이 아닌 경우를 출력
SELECT ename, sal, comm
FROM EMP
WHERE sal <= 2000 AND comm IS NOT NULL;
-- 직책이 salesman이거나 부서번호가 20인 경우 사원명 직책, 부서번호 출룍
SELECT ename, job, deptno
FROM emp
WHERE job='SALESMAN' or deptno=20;