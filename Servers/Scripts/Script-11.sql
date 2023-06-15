/*
# 데이터 수정
1. update 명령문은 테이블에 저장된 수정을 위한 조작어이다.
2. 기본형식
	update 테이블명
	set 컬럼1 = 수정할 데이터1,
		컬럼2 = 수정할 데이터2,
		...
	where 조건(비교/논리)
3. 주의 사항
	1) where 조건절이 생략되면 모든 행의 데이터가 수정된다(현업에서 발생하는 엄청난 에러)
4. subquery를 활용한 여러가지 수정 처리
	1) where 조건문
	2) set 수정 컬럼 지정 및 데이터 부분에도 subquery를 활용하여 처리한다.
	*/
-- emp02에서 comm이 null인 데이터를 comm을 1000으롯 수정
UPDATE EMP02
	SET comm = 1000
	WHERE to_char(hiredate,'Q') = '1';
-- ex) emp02에서 입사연도가 1/4분기인 사원정보를 현재 날짜로 수정하세요
UPDATE EMP02
	SET hiredate = add_months(hiredate,12*40),
		sal = sal+2000
		WHERE TO_char(hiredate,'YY') IN ('80','81');
-- ex) emp02에서 1980/1982인 입사자는 40년을 더해서 입사날짜를 바꾸고 연보도 + 2000씩 더하여 처리하세요
UPDATE EMP02
	SET hiredate = ADD_MONTHS(hiredate,12*40),
		sal = sal + 2000
	WHERE EXTRACT(YEAR FROM hiredate) IN(1981,1982);
/*
# subquery를 활용한 수정 처리
1. update 명령문에 set부분이나 where 조건절에 subquery를 이용하여 수정처리하는 것을 말한다.
2. 다른 테이블이나 현재 테이블에 정보를 변경할 때, 일단 query를 수행한 결과로 해당 데이터를 수정 처리하는 것을 말한다.
3. 변경할 컬럼의 타입과 갯수는 반드시 일치하여야 한다.
4. 유형
	1) set붑분 subquery 활용
		- 한개의 컬럼 set 컬럼명 = (결과가 1개인 컬럼데ㅣ터)
		- 두개 이상의 컬럼 set 컬럼1, 컬럼2...=(결과가 n인 subquery)
	2) where 조건 subquery 활용
*/
-- 부서정보가 10인 데이터는 부서번호가 20인 사원의 최고급여로 급여를 수정처리하는 경우 어떻게 update 구문을 처리하는기?
SELECT ename, sal
FROM EMP03 WHERE deptno = 10;
SELECT max(sal)
FROM EMP03 WHERE deptno = 20;
UPDATE EMP03
	SET sal = (
 		SELECT MAX(sal)
 		FROM EMP03
 		WHERE deptno = 20
 	)
 WHERE deptno = 10;
 SELECT * FROM emp03;
 -- ex) job이 salesman의 평균 급여를 사원번호 7499의 급여로 수정처리하세요
/*
# 삭제 처리
1. 데이터를 행단위로 삭제 처리하는 구문을 말한다.
2. 기본형식
	delete
	from 테이블명
	where 조건 처리
3. subquery 삭제
	delete
	from 테이블
	where 컬럼 = (subquery)
# subquery를 활용한 where 조건의 수정/삭제
1. 단일/다중행조건
	delete
	from 테이블
	where 컬럼 = (결과가 1개의 데이터)
	
	select
	from 테이블
	where 컬럼 in (결과 2개 이상의 row 데이터)
2. 하나의 컬럼/하나 이상 컬럼 조건
*/
SELECT * FROM emp03;
-- sal가 3000미만인 데이터를 삭제
DELETE FROM EMP03
WHERE sal < 3000;
-- ex) 입사일이 2사분기 데이터를 삭제
DELETE FROM emp03
WHERE TO_CHAR(hiredate,'Q')='2';
CREATE TABLE emp09
AS SELECT * FROM emp;
SELECT * FROM emp09;
-- 여러개의 row 데이터를 검색 처리하는 subquery
-- 급여가 3000이상 사원번호
-- 사원정보를 처리
SELECT empno
FROM emp09
WHERE sal>=2000;
-- 부서별 최고급여자 정보를 출력하고자 한다.
SELECT deptno, max(sal)
FROM emp09
GROUP BY deptno;
SELECT *
FROM emp09
WHERE (deptno, sal) IN (
	SELECT deptno, max(sal)
	FROM emp09
	GROUP BY deptno
);
SELECT *
FROM emp09;
-- ex) 직책별 최근 입사자들의 정보를 출력하세요
SELECT *
FROM emp09
WHERE (job, hiredate) IN (
	SELECT job, max(hiredate)
	FROM emp09
	GROUP BY job
);
-- ex) 직책별 최저 급여인 사원 정보를 출력허세요
SELECT *
FROM emp09
WHERE 
