/*
# self join
1. 테이블 컬럼안에 내부적으로 연관관계가 있는 컬럼간의 조인을 말한다,
2. 하나의 테이블 내에 있는 컬럼끼리 연결하는 조인이 필요한 경우에 사용된다.
3. where 절을 사용한 self join
	하나의 테이블에서 두개의 컬럼을 연결하여 equi join 
	from 절에서 하나의 테이블에 테이블의 별명을 따로 지정해서 처리
4. 형식
	select a.*, b.*
	from 테이블 a, 테이블 b
	where a.컬럼 = b.컬럼
5. 사용 예
	emp테이블에서 empno와 mgr은 연관관계의 계층형 join관계로 내부 join을 유지하고 있다.
	empno : 모든 사원고유 번호
	mgr : 해당 사원의 관리자 번호
	SMITH의 관리자 번호는 7902이고 이 관리자의 이름은 FORD
*/
SELECT empno, ename, mgr FROM emp;
SELECT empno, ename, mgr
FROM EMP
WHERE empno = 7902;
SELECT empno, ename, mgr
FROM EMP
WHERE empno = 7566;
SELECT empno, ename, mgr
FROM EMP
WHERE empno = 7839;
SELECT e.empno 사원번호, e.ename 사원명, e.mgr 관리자번호,
	   m.ename 관리자의이름
FROM emp e, emp m
WHERE e.mgr = m.empno;

-- 하위 테이블의 mgr(관리자 번호)과 상위 테이블의 empno연관관계로 SELF JOIN
SELECT '사원명 '||e.ename||'의 관리자는 '||m.ENAME|| '입니다' show
FROM emp e, emp m
WHERE e.mgr = m.empno;






-- 1. Group 함수 연습 예제:
--   1.1 직업별로 평균 급여를 계산하시오.
SELECT job, avg(sal)
FROM emp
GROUP BY job;
--   1.2 각 부서별로 가장 높은 급여를 받는 사람을 찾으시오.
SELECT job_id, max(salary)
FROM EMPLOYEES
GROUP BY job_id;

-- 2. Subquery 연습 예제:
--   2.1 급여가 평균 급여보다 많이 받는 사원들의 이름과 급여를 찾으시오
SELECT ename, sal
FROM emp
WHERE sal >= (
	SELECT avg(sal)
	FROM emp
);

--   2.2 Smith의 급여보다 많은 급여를 받는 사원들의 이름과 급여를 찾으시오.
SELECT ename, sal
FROM EMP
WHERE sal > (
	SELECT ename, SAL
	FROM EMP
	WHERE ename='SMITH'
);


-- 3. Outer Join 연습 예제:
--   3.1 사원들의 ,이름과 부서 이름을 가져오시오. (부서에 할당되지 않은 사원도 포함)
SELECT first_name 사원명, department_name 부서명
FROM EMPLOYEES e, DEPARTMENTS d
WHERE e.DEPARTMENT_ID (+) = d.DEPARTMENT_ID;

--   3.2 각 부서별로 최대 급여를 받는 사원의 이름을 가져오시오. (부서에 할당되지 않은 사원도 포함)
SELECT nvl(FIRST_NAME,'사원없음') 사원명, nvl(max(salary),0) 최대급여, department_name 부서명
FROM EMPLOYEES e, DEPARTMENTS d
WHERE e.DEPARTMENT_ID (+) = d.DEPARTMENT_ID
GROUP BY department_name, FIRST_NAME 
ORDER BY department_name;

-- 4. Group 함수와 Subquery를 조합한 연습 예제:
--   4.1 각 직업별로 최대 급여를 받는 사원의 이름을 가져오시오.
SELECT job, nvl(max(sal),0) 최소급여, nvl(ename,'사원없음')
FROM emp
GROUP BY job, ename
ORDER BY job;

--   4.2 각 부서별로 최소 급여를 받는 사원의 이름을 가져오시오.
SELECT department_name 부서명, nvl(min(SALARY),0) 최소급여, nvl(FIRST_NAME,'사원없음') 사원명
FROM EMPLOYEES e, DEPARTMENTS d
WHERE e.department_id(+) = d.department_id
GROUP BY department_name, FIRST_NAME
ORDER BY department_name;
   */
