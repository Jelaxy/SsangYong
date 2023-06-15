/*
# SQL 함수
1. 컬럼의 값이나 데이터 타입의 변경하는 경우
2. 숫자 또는 날짜 데이터의 출력 형식이 변경하는 경우
3. 하나 이상의 행에 대한 집계를 하는 경우
# SQL 함수의 유형
1. 단일행 함수 : 테이블에 저장되어 있는 개별 행을 대상으로
함수를 적용하여 하나의 결과를 반환하는 함수
	- 데이터 값을 조작하는데 주로 사용
	- 행별로 함수를 적용하여 하나의 결과를 반환하는 함수
	1) 종류
	- 문자함수
	- 숫자함수
	- 날짜함수
	- 변환함수 : 묵시적 데이터변환/명시적 데이터변환
	- 일반함수
	2) 사용방법
		함수명(컬럼명|표현식, 매개변수1, 매개변수2,....)		
2. 복수행 함수 : 조건에 따라 여러 행을 그룹화하여 그룹별로
결과를 하나씩 반환하는 함수
	1) 사용방법
		select 그룹대상컬럼, 그룹함수(그룹데이터)
		from 테이블
		group by 그룹대상컬럼
		ex) 부서번호별 최고 급여
		select deptno, max(sal)
		from emp
		group by deptno;


*/
-- 문자함수 : 문자 데이터를 입력하여 문자나 숫자를 결과로
-- 반환하는 함수
-- 1. initcap() : 문자의 첫 번째 문자만 대문자로 변환
SELECT ename, INITCAP(ename), job, INITCAP(job)
FROM emp;
-- ex) || 연결연산자, initcap()를 활용하여
--   사원명 is a 직책명   
--ex)Smith is a Clerk! 표현하세요
SELECT INITCAP(ename)||' is a '||initcap(job)|| '!'
	   intro
FROM emp;
/*
2. 대소문자 변환 함수
	주로 실무상 대소문자 구분없이 검색이 필요하거나
	또는 입력시/수정시 입력된 내용이 대문자/소문자로 변환해서
	등록/수정되게 할 때, 주로 활용된다.
	 1) lower() : 문자열 전체를 소문자로 변환처리한다.
	 	ex) lower('Student') ==> student
	 2) upper() : 문자열 전체를 대문자로 변환처리한다.
	 	ex) upper('student') ==> STUDENT
**/
SELECT ename, lower(ename) "사원명(소문자)",
	JOB||upper('- Hi! Man!!') "조합(대문자)"
from emp;
SELECT  first_name||' '||last_name "전체이름1",
	upper(first_name||' '||last_name) "전체이름2"
FROM EMPLOYEES e;
SELECT *
FROM EMPLOYEES e;
-- ex) job_id는 소문자, email은 소문자, first_name은 대문자로 변환하여
--	직챙 @@@인 @@@의 이메일은 @@@입니다라고 출력되게하세요
SELECT '직책'||lower(JOB_ID)||'인'|| lower(FIRST_NAME)||'의 이메일은'||upper(EMAIL) ||'입니다' msg
FROM EMPLOYEES e;
-- 검색시, 대소문자 입력 상관없이 검색을 처리해야하는 경우
--	ex) first_name이 대소문자 상관없이 키워드 검색 처리
--	1) 컬럼의 데이터 대문자/소문자로 전환한다.
--	2) 대문자 변환 ==> 키워드로 대문자로 변경
--	3) 소문자 변환 ==> 키워드로 소문자로 변경
SELECT first_name,last_name,email,job_id,
upper(FIRST_NAME) 이름1, LOWER(FIRST_NAME) 이름2 
FROM EMPLOYEES e;
-- first_name을 대소문자 관계없이 키워드 검색
SELECT lower(first_name) 이름, e.*
FROM EMPLOYEES e
WHERE LOWER(first_name) LIKE '%'||lower('steven')||'%';
SELECT *
FROM EMPLOYEES e;
-- ex) email 과 job_id이 대소문자 관계없이 키워드 검색되게 처리하세요
/*
SELECT EMAIL, JOB_ID, e.*
FROM EMPLOYEES e
WHERE upper(EMAIL) LIKE '%'||upper('o')||'%'
AND lower(JOB_ID) LIKE '%'||lower('A')||'%';
*/
SELECT EMAIL, JOB_ID, e.*
FROM EMPLOYEES e
WHERE upper(EMAIL) LIKE upper('%o%')
AND lower(JOB_ID) LIKE lower('%A%');
/*
# 문자열 길이 반환
1. length(데이터/컬럼) : 해당 데이터나 컬럼의 문자열 길이를 반환하는 함수
2. lengthb(데이터/컬럼) : 입력되는 문자열의 바이트를 변환하는함수
	1) 영문은 1자와 byte는 같아
	2) 한글은 1자가 3byte이다,
cf) dual : 오라클에서 지원되는 임시가상 테이블로 데이터를 간단하게 확일할 때 사용한다.
*/
SELECT '홍길동' name, lengthb('홍길동') "이름(byte)",
	length('홍길동') "이름(글자수)"
FROM dual;
SELECT ename, length(ename) "글자수",
		lengthb(ename) "byte 크기",
		job, length(job) "글자수",
		lengthb(job) "byte 크기"
FROM emp02;
-- ex) 사원 테이블에서 사원명과 직책의 글자 수를 표현하되, 직책의 글자갯수가 6이상인 데이터만 출력하세요
SELECT * FROM emp;
SELECT jOb, ename
FROM emp 
WHERE LENGTHB(job) >= 6;
/*
# 기타 문자열 조작 함수
1. concat(문자열1, 문자열2) : 두 문자열을 결합처리한다.
	문자열1 || 문자열2 동일
	문자열1 || 문자열2 || 문자열3 ===> concat(concat(문자열1,문자열2),문자열3)
3. substr(문자열 데이터, 시작위치(0부터), 시작위치에서부터 갯수)
	문자열 데이터를 시작위치와 마지막 위치를 기준으로적살처리하여
	사용하는 것을 말한다.
	ex) substr('sql*plus',5,4) ==> plus
		다섯번째부터 4개를 추출하여 가져온다
**/
SELECT empno, ename, job, concat(ename,job) "이름과 직책"
FROM emp02;
SELECT substr('sql*plus',5,4) "데이터" FROM dual;
-- ex) 사원명과 사원번호를 이어서 표현하ㄱ, 직책을 2번째부터 3글자를  추출해서 출력하세요
SELECT CONCAT(ename,empno)  "사원명과 사원번호", SUBSTR(job,2,3) "직책추출"
FROM EMP02;
--1. emp 테이블에서 사원명(소문자)과 직무를 이어서 표현하고, 직무는 대문자로 변환하여 출력하세요.
SELECT CONCAT(LOWER(ename),UPPER(job)) "사원명과 직무"
FROM emp02;
--2. emp 테이블에서 사원명의 글자 수와 직무의 글자 수를 출력하세요.
SELECT ename, length(ename) "글자수",
		job, length(job) "글자수"
FROM emp02;
--3. emp 테이블에서 직무가 'SALESMAN'인 사원들의 사원명과 직무를 이어서 표현하세요.
SELECT CONCAT(ename,job) "사원명과 SALESMAN직무"
FROM EMP02
WHERE job = 'SALESMAN';
--4. emp 테이블에서 급여가 3000 이상인 사원들의 사원명과 급여를 이어서 표현하세요.
SELECT CONCAT(ename,sal) "사원명과 급여3000"
FROM EMP02
WHERE sal >= 3000;
--5. emp 테이블에서 사원명에서 첫 글자만 대문자로 변환하여 출력하세요.
SELECT INITCAP(ename)
FROM emp02;
--6. emp 테이블에서 사원명과 직무를 이어서 표현하고, 사원명을 소문자로 변환하여 출력하세요.
SELECT CONCAT(lower(ename),job)
FROM emp02;
--7. emp 테이블에서 직무가 'ANALYST'인 사원들의 사원명과 직무를 이어서 표현하고, 직무를 소문자로 변환하여 출력하세요.
SELECT CONCAT(ename,LOWER(job))
FROM emp02
WHERE job = 'ANALYST';
--8. emp 테이블에서 직무가 'MANAGER'이거나 'SALESMAN'인 사원들의 사원명과 직무를 이어서 표현하고, 직무를 대문자로 변환하여 출력하세요.
SELECT CONCAT(ename, UPPER(job))
FROM EMP02
WHERE job = 'MANAGER' OR job ='SALESMAN';
-- WHERE job IN ('MANAGER','SALESMAN');
--9. emp 테이블에서 급여가 2000 이상이고 3000 이하인 사원들의 사원명과 급여를 이어서 표현하세요.
SELECT CONCAT(ename, sal)
FROM emp02
WHERE sal <= 2000 or sal>=3000;
--10. emp 테이블에서 사원명에서 첫 3글자를 추출하여 출력하세요.
SELECT SUBSTR(ename,1,3) "이름 앞 세글자 추출"
FROM emp02;
--11. emp 테이블에서 사원명에서 뒤에서 3글자를 추출하여 출력하세요. ####
SELECT SUBSTR(ename,-3)
FROM EMP02;
--12. emp 테이블에서 사원명에서 2번째부터 4번째까지의 글자를 추출하여 출력하세요.
SELECT SUBSTR(ename, 2,4)
FROM EMP02;
--13. emp 테이블에서 사원명에서 뒤에서 5번째부터 뒤에서 2번째까지의 글자를 추출하여 출력하세요.
SELECT SUBSTR(ename, -5, 4)
FROM emp02;
--14. emp 테이블에서 사원명에서 첫 번째와 두 번째 글자를 추출하여 이어서 출력하세요.
SELECT SUBSTR(ename, 1,2)
FROM emp02;
--15. emp 테이블에서 직무가 'CLERK'인 사원들의 사원명과 직무를 이어서 표현하고, 사원명을 소문자로 변환하여 출력하세요.
SELECT CONCAT(LOWER(ename),job)
FROM EMP02
WHERE job ='CLERK';
--16. emp 테이블에서 직무가 'CLERK'가 아닌 사원들의 사원명과 직무를 이어서 표현하고, 직무를 대문자로 변환하여 출력하세요.
SELECT CONCAT(ename,UPPER(job))
FROM EMP02
WHERE NOT job <> 'CLERK';
--17. emp 테이블에서 사원명과 직무를 이어서 표현하고,직무를 대문자로 변환하여 출력하세요. 단, 사원명과 직무 사이에 '/'를 추가하세요.
SELECT CONCAT(CONCAT(ename, '/'),UPPER(job))
FROM emp02;
SELECT ENAME ||'/'|| UPPER(JOB)
FROM emp02;
--18. emp 테이블에서 급여가 1000 이하인 사원들의 사원명과 급여를 이어서 표현하세요.
SELECT CONCAT(ename, sal)
FROM emp02
WHERE sal <= 1000;