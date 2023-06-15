/*
# where 조건문 처리
1. 행단위 데이터로 검색할 때 주로 사용된다.
2. where 조건절에는 컬럼명을 기준으로 여러가지 연산자를 이용하여 조건 처리를 한다.
	1) 형식
		where 컬럼명 연산자형식 비교할 데이터
		ex) where ename like '%홍%'
		ex) where sal >= 3000
3. where절에서 사용하는 데이터 타입은 문자, 숫자, 날짜, 타입을 사용 가능하다.
4. where절에는
	1) 비교 연산자
		>, <, >=, <=, =, !=, <>
	2) 논리 연산자
		and, or, not
		등으로 사용되고
	3) 그 외 키워드 비교 언산 처리
		컬럼명 between 데이터1 and 데이터2
		컬럼명 in(데이터1, 데이터2, ...)
*/
/*
# 
1. 비교 and 비교
	두가지 이상 비교연산식으 and 논리로 연결
	ex) 부서번호(deptno)가 10번이고 직책(job)이 CLERK인 경우 사원정보 출력
2. 비교 or 비교
	ex) 사원명이 jones, blake 데이터를 출력
*/
SELECT * FROM emp
WHERE ename = 'JONES' OR ename ='BLAKE';
-- ex) 부서번호 30 혹은 급여 20000미만 데이터 출력
SELECT  *FROM emp
WHERE deptno = 30 OR sal<2000;
SELECT *FROM EMP 
WHERE deptno = 10
AND job = 'CLERK';
-- ex) 급여(sal)가 2000 이상이고 직책(job)이 MANAGER인 데이터를 조회하세요
select * from emp
where sal = 2000
and job = 'MANAGER';
/*
# 기타 비교 연산 처리 구문
1. !=(<>) : 같지 않을 때 true
	not(조건문) : 해당 조건이 아닐때
2. 컬럼 is not null : null이 아닐 때
	주의) 컬럼!= null(다름)
   컬럼 is null : null일 때, 조건 처리
   	주의) 컬럼 = null(다름) ==> 컬럼 = 'null'
   	# null : 데이터 자체가 할당되지 않음
   	'null' : 문자열 'null'이 할당되지 않음
*/
SELECT ename, comm
FROM emp
WHERE comm = null; -- 'null'
SELECT ename, comm
FROM emp
WHERE comm IS NOT null;
SELECT ename, comm
FROM emp
WHERE comm ! = null; --x
-- ex) mgr이 null인 데이터와 null이 아닌 데이터를 나누어서 검색하되 컬럼명으로 empno(사원번호), mgr(관리자)번호를 출력하세요
SELECT empno, mgr
FROM emp
WHERE mgr IS NOT null;
SELECT empno, mgr
FROM emp
WHERE mgr is null;
-- 부서번호가 20번이 아닌 데이터를 검색해보자
SELECT deptno, ENAME 
FROM emp
WHERE deptno != 20;
SELECT deptno, ENAME 
FROM emp
WHERE deptno <> 20;
SELECT deptno, ENAME 
FROM emp
WHERE NOT (deptno = 20);
-- ex) 부서번호가 10이거나 20번인 경우와 그렇지 않은 경우를 출력하세요
SELECT deptno, ENAME
FROM EMP
WHERE deptno = 10 OR deptno = 20;
SELECT deptno, ENAME
FROM EMP
WHERE NOT (deptno = 10 OR deptno = 20);

-- 숫자형 데이터 비교
SELECT *
FROM emp
WHERE empno = 7369;
-- 문자형 데이터 비교
SELECT *
FROM emp
WHERE job = 'SALESMAN';
-- ex) MGR이 7839인 데이터와 deptno가 10 job가 'clerk'인 데이터를 각각 출력하세요
SELECT *
FROM emp
WHERE mgr = 7839;
SELECT *
FROM emp
WHERE deptno = 10;

SELECT *
FROM emp
WHERE job = 'CLERK';