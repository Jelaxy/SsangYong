/*
# keyword 검색(계속)
1. 자리수에 맞추어서 검색하기
	ex) 앞에서 3번째 자리에 A를 포함하는 검색
		컬럼명 like '__A%'
	ex) 뒤에서 두번째 자리에 글자 A가 있는 직책을 검색
		컬럼명 like '%A_'
	ex) 글자수가 6자리이고 앞에서 3번째 자리에 R이 있는 데이터 검색
		컬럼여 like '__R___'



 */
SELECT *FROM emp;
SELECT *
FROM EMP
WHERE ename LIKE '__A%'; -- 세번째 자리에 A가 있는 데이터 검색
SELECT *
FROM emp
WHERE JOB LIKE '%A_';
SELECT *
FROM emp
WHERE ename LIKE '__R___';
-- 	ex) 앞에서 4번 5번 글자 자리에 ES를 포함한 직책 검색
SELECT *
FROM emp
WHERE job LIKE '___ES%';
SELECT ename, ''||HIREDATE "문자열로"
FROM emp;
SELECT  ename, HIREDATE
FROM emp
WHERE HIREDATE LIKE '___02%';
--	ex) 뒤에서 세번째 자리에 M이 포함된 직책 검색
SELECT *
FROM emp
WHERE job LIKE '%M__';
--	ex) 자리수가 5자리이고 중간에 I를 포함된 사원명 검색 
SELECT *
FROM emp
WHERE ename LIKE '__I__';
/*
#  정렬처리
1. sql 명령문에서 검색된 결과는 테이블에 데이터가 입력된 순서로 일반적으로 출력된다
2. 데이터의 출력순서를 특정 컬럼명을 기준으로 오름차순/내림차순으로 정렬하는 경우가 발샌한다
2. 여러개의 컬럼에 대해 정렬 순서를 지정해서 처리해야 할 경우가 발생하는데, 입사일을 오름차순으로, 급여기준으로 내림차순 등이라고 할 수 있따,
4. 기본적인 정렬 방법
	1) 문자값을 알파벳순으로 출력되고, 한글은 가나다라 순으로 출력된ㄷ
	2) 숫자값을 가장 작은 값으로부터 출력
	3) 날짜는 최신 날짜 순으로 출력할 수 있다
5. 기본 형식
	select * from 테이블 where 조건 다음에
	order by 컬럼명1 [asc|desc], 컬럼명2 [asc|desc]
	asc: default로 오름차순 정렬(생략가능)
	desc: 역순/내림차순 정렬
**/
-- 사원 번호를 기준으로 오름차순/내림차순 정렬
SELECT empno, ename
FROM emp;
SELECT empno, ename
FROM emp
ORDER BY empno desc;
SELECT * 
FROM EMP
ORDER BY empno DESC;
-- ex) 연봉이 가장 높은 사람부터 가장 낮은 사람으로 급여와 이름을 출력하새요
SELECT sal, ename
FROM EMP
ORDER BY sal DESC;
-- ex) 입사일을 기준으로 최근에 입사한 사람으로 부터 입사가 먼저된 사람을 출력하세요
SELECT hiredate, ename
FROM emp
ORDER BY hiredate DESC;
-- ex) 부서번호는 오름차순, 연봉은 내림차순으로 이중 정렬 기준으로 부서번호 급여 사원명으로 출력히세요
SELECT deptno, sal, ename
FROM EMP
ORDER BY deptno ASC, sal DESC;