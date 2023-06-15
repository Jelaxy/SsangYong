/*
# keyword를 이용한 조건문의 활용
1. nvl() 함수 : null을 효과적으로 처리
2. in : or를 줄이기 위한 조건검색
3. like : 키워드 검색 - 비슷한 글자가 있으면 검색
*/
SELECT mgr, comm
FROM EMP;
-- 사원정보에서 급여+보너스 합산하여 출력
-- null 포함되어 있을 때는 +연산자에 의해서 처리되면 null
SELECT ename, sal, comm, sal + comm 합산
FROM emp;
-- nvl(컬럼, 대체데이터) : 해당 컬럼이 null일때 해당 컬럼과 같은 유형의 데이터를 지정하면, null 대신 처리된다.
SELECT comm, nvl(comm,0) 보너스
FROM emp;
--SELECT comm, nvl(comm,' ') 보너스  ==> 같은 유형이 아니기에 에러 발생
--FROM emp;
CREATE TABLE emp01
AS SELECT * FROM emp;
INSERT INTO emp01(empno) VALUES(8000);
INSERT INTO emp01(empno) VALUES(8001);
INSERT INTO emp01(empno) VALUES(8002);
SELECT empno, nvl(ename,'이름없음') 이름, nvl(job,0) 직책 --숫자는 자동 casting되어 '0'처리
FROM emp01
WHERE ename IS NULL;
SELECT * FROM EMPLOYEES e;
-- ex) employees 기준으로 last name과 salary와 commission_pct 기준으로 보너스를 출력하되,
--		급여와 보너스의 합산을 처리하세요
SELECT LAST_NAME 사원, SALARY 급여,
nvl(COMMISSION_PCT,0)*100 "보너스(%)",
nvl(SALARY*COMMISSION_PCT,0) 보너스,
SALARY + nvl(COMMISSION_PCT*SALARY,0) "급여+보너스"
FROM EMPLOYEES e;
-- 사원의 보너스
SELECT * FROM emp;
-- 보너스가 null이거나 0인 데이터를 제외하고 사원정보에서 급여와 보너스를 확인할 때
SELECT ename, sal, comm
FROM EMP
WHERE comm IS NOT NULL and comm != 0;
-- where not(comm is null or comm = 0);
-- nvl로 처리한 경우
SELECT ename, sal comm
FROM emp
WHERE nvl(comm,0) != 0; --null도 아니고 0이 아닐 경우
-- 함수를 통해서 간단하게 처리할 수 있다.
SELECT *
FROM emp;
-- 사원번호를 7499, 7521, 7566, 7654에 대한 데이터를 가져올떄
SELECT *
FROM emp
WHERE empno =7499
OR empno = 7521
OR empno = 7566
OR empno = 7654;
-- 컬럼명 in (데이터1, 데이터2, 데이터3, 데이터4)
-- 지정한 데이터가 or 조건으로 연결될 때, 사용한다.
SELECT *
FROM emp
WHERE empno IN (7499, 7521, 7566, 7654);
SELECT *
FROM emp
WHERE ename IN ('SMITH', 'ALLEN', 'JONES');
SELECT * FROM emp;
-- ex) 부서번호가 20이거나 30인 경우 급여가 2000미만인 데이터를 출력하세요
SELECT ename, deptno, sal
FROM emp
WHERE deptno IN (20, 30) AND sal < 2000;
SELECT ename, job
FROM emp
WHERE ename LIKE '%A%'
AND job LIKE '%MAN%';
-- 키워드 검색 형식
-- 컬럼명 like '%키워드%' : 해당 키워드를 포함되어 있을 때 검색
-- 컬럼명 like '키워드%' : 해당 키워드로 시작이 포함되어 있을 때 검색
-- 컬럼명 like '%키워드' : 해당 키워드로 마지막이 포함되어 있을 때 검색
-- 어라라
-되게 싫어하네
SELECT * FROM EMPLOYEES;
-- ex) first_name, last_name을 검색할때
--	1) 특정한 키워드를 포함이 되는 경우 처리
SELECT FIRST_NAME, LAST_NAME 
FROM EMPLOYEES
WHERE FIRST_NAME  LIKE '%S%'
AND LAST_NAME  LIKE '%K%';
--	2) first_name/last_name은 특정한 키워드로 시작하는 데이터 검색
SELECT FIRST_NAME, LAST_NAME 
FROM EMPLOYEES
WHERE FIRST_NAME  LIKE 'S%'
AND LAST_NAME  LIKE 'K%';
--	3) FIRST_NAME에 'er'로 끝나는 데이터를 검색하세요
SELECT FIRST_NAME, LAST_NAME 
FROM EMPLOYEES
WHERE FIRST_NAME  LIKE '%s'
AND LAST_NAME  LIKE '%p';

SELECT *
FROM emp
WHERE ename LIKE '%'||'A'||'%';

SELECT *
FROM DEPT;