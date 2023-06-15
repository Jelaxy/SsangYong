/*
# 여러가지 조인 구문 형식 활용
1. 조인은 기본 inner와 함께 여러가지 형식
2. 조인 형식
	1) no equi join
		조인하는 두개의 테이브르이 컬럼값이 동일하지 않을 때,
		조인하는 형식
		- 범위로 조인하는 경우
	2) outer join
		equi join의 조인 조건에서 야오ㅡ 컬럼 값 중, 어느 하나라도 null이면 '=' 비교 결과가 거짓이 되어 null값을 가진 행은 출력이 되지 않는다.
	3) self join
		테이블 컬럼 안에 내부적으로 연관관계가 있는 컬럼간의 조인을 말한다,
 */
select * from emp e, dept d;
-- equi join(inner join) 12(emp)*4(dept) = 48건이 조인된다.
-- 범위로 join하는 경우
SELECT ename, sal FROM emp;
-- 등급, 최소급여, 최대급여 : 해당 등급에 최소 최대 범위를 설정
SELECT * FROM SALGRADE;
SELECT ename, sal, grade
FROM emp e, SALGRADE s
WHERE sal BETWEEN losal AND hisal;
-- 4등급에 해당 하는 사원 정보를 출력하세요
SELECT grade, e.*
FROM emp e, SALGRADE s
WHERE sal BETWEEN losal AND hisal
AND grade = 4;
-- ex) smith의 급여와 급여 등급을 출력하세요
SELECT ename, sal, grade
FROM emp e, SALGRADE s
WHERE ename = 'SMITH' AND sal BETWEEN losal AND hisal;
-- ex) salesman의 급여와 등급을 출력하세요
SELECT job, sal, grade
FROM EMP e, SALGRADE s
WHERE job='SALESMAN' AND sal BETWEEN losal AND hisal;
SELECT * FROM JOBS j;
/*
# subquery, inline view을 통한 조인 구문 처리
1. 조인하기 전에, 데이터를 로딩해서 가져오는 형식을 subquery라고 한다.
	1) subquery에서 컬럼에 대한 비교 연산식으로 subquery를 가져오는 형태가 있는 경우도 있고
		SELECT *
		FROM 테이블
		WHERE 컬럼 = (SQL 결과)
	2) SQL 실행 겨로가를 테이블 형태로 선언(inline  view)하여 처리하는 형태가 있다.
		SELECT *
		FROM (
			sql결과
		)
		WHERE....
*/
-- 사원 정보중 최고 급여자의 사원 정보를 출력하세요
SELECT max(sal)
FROM emp;
SELECT *
FROM EMP
WHERE sal = 5000;
SELECT *
FROM EMP
WHERE sal = (
	SELECT max(sal)
	FROM emp
);

-- ex) 사원번호가 가장 낮은 사원의 정보를 출력하세요
SELECT *
FROM EMP
WHERE EMPNO = (
	SELECT min(empno)
	FROM emp
);
-- ex) 사원중에서 가장 최근에 입사한 사원의 정보를 출력하세요
SELECT * FROM emp;
SELECT *
FROM EMP
WHERE HIREDATE = (
	SELECT max(hiredate)
	FROM emp
);
-- view : 가상 테이블
-- inline view (sql을 통해서 테이블 형태와 같이 바로 처리하는 것을 말한다.)
SELECT *
FROM EMP e,
(
	SELECT max(sal) sal
	FROM emp
) me
WHERE e.sal = me.sal;
-- 부서별 최고 급여자에 대한 정보를 출력하고자 한다.
SELECT deptno, max(sal)
FROM EMP
GROUP BY deptno;
SELECT *
FROM emp e,
(
	SELECT deptno, max(sal) sal
	FROM EMP
	GROUP BY deptno
) me
WHERE e.DEPTNO = me.deptno
AND e.DEPTNO  = me.sal
ORDER BY e.DEPTNO;
-- ex) 직책별로 가장 최근에 입사한 사원의 정보를 출력하세요
SELECT e.*
FROM emp e,
(
	SELECT job, max(hiredate) hiredate
	FROM EMP
	GROUP BY job
) je
WHERE e.job = je.job
AND e.hiredate = je.hiredate;
/*
# outer join
1. equi join의 조인 조건에서 야윽 컬럼 값 중, 어느 하나라도 null이면 '=' 비교 결과가 거짓이 되어 null값을 가진 행은 출력이 되지 않는다.
2. 부서 번호에 해당하는 사원이 없으면 inner join시 해당 부서정보를 표시 못하는 경우가 발생한다.
3. 즉, 해당 부서에 사원이 없더라도 부서정보를 표시할 필요성이 있을 때는 equi join으로 불가능하게 된다.
4. out join 처리 형식
	1) ANSI 방식
	  where 절의 조인 조건에서 outer join 연산차이 (+) 기호
      사용하면 조인 조건에 의해 null로 출력되는 컬럼의
 */
SELECT ename, deptno
FROM EMP
ORDER BY deptno;
SELECT d.*, e.*
FROM emp e, dept d
WHERE e.deptno(+) = d.DEPTNO
ORDER BY d.deptno;
SELECT dname 부서명, nvl(ename,'사원없음') 사원명
FROM EMP e, DEPT d
WHERE e.deptno(+) = d.DEPTNO
ORDER BY dname;
SELECT DISTINCT department_id
FROM EMPLOYEES;
SELECT *
FROM DEPARTMENTS;
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
-- ex) EMPLOYEES와 DEPARTMENTS의 department_id 기준으로 부서명, 사원명(first_name)을 출력하되, 사원이 없는 부서는 미배정이라고 표시하세요
SELECT department_name 부서명, nvl(first_name,'미배정') 사원명
FROM EMPLOYEES e, DEPARTMENTS d
WHERE e.department_id(+) = d.department_id
ORDER BY department_name;
-- 부서별로 할당된 인원형환(반드시 outer join 설정 필요)
SELECT department_name 부서명, count(first_name) 인원수
FROM EMPLOYEES e, DEPARTMENTS d
WHERE e.department_id(+) = d.department_id
GROUP BY department_name
ORDER BY department_name;
