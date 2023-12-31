/*
# select sql의 명령문 표준 형식
1. 주로 서버에 데이터를 가져올 때, 활용된다.
2. 기본 형식
	select * | 컬럼명 : 열단위로 나타날 데이터를 선택
	from 테이블명 테이블명 별칭 : 대상 테이블명, 테이블명 alias명
	where 조건문 : 행단위로 나타날 데이터를 filtering 처리
	group by 그룹할 컬럼지정 : 특정 컬럼 기준으로 합산 갯수
		최소/최대값 산정
	having : 그룹의 조건을 지정
	order by 컬럼명 asc/desc : 정렬한 우선 순위 컬럼 지정
 */
SELECT * FROM emp;
SELECT deptno, ename, sal -- [열단위 선택] 컬럼단위로 열을 선택
FROM emp
WHERE sal >= 3000; --[행단위 필터링] sal가 3000이상인 경우만 검색
--group 함수 처리
SELECT deptno, sal
FROM emp
ORDER BY deptno; -- ORDER BY 칼럼명 특정 컬럼 기준으로 정렬
SELECT deptno, avg(sal) msal -- 그룹할 컬럼, 함수명(컬럼명)
FROM emp
GROUP BY deptno;
-- order by 컬럼명 desc|asc 
SELECT ename, sal
FROM emp
ORDER BY sal;
/*
# columm의 alias 활용
1. select 컬럼명 as 별칭
2. select 컬럼명 별칭
3. select 컬럼명 "공백이나 특수문자 포함"
*/
SELECT ename AS name, sal salary, deptno 사원번호,
		empno "사원 번호", job "직책 번호"
FROM emp;
-- ex) empno ==> no, ename ==> 사 원 명, mgr ==> 관리자번호로 표현하여 컬럼으로 출력하세요
SELECT  empno AS NO, ename "사 원 명", mgr 관리자번호
FROM emp;
/*
# 데이터의 산술연산자와 문자 연결 처리
1. 컬럼의 타입이 숫자이면 +, -, *, / 4칙연산자가 처리된다
2. 문자열과 문자열은 || 기호로 연결한다.
*/
SELECT sal, sal*2 "2배수", sal/100 "100나누기"
FROM emp;
SELECT ename ||'/'|| job "이름과 직책"
FROM emp;
-- ex) 사원의 이름은 @@@ 입니다.
SELECT ename, '사원의 이름은' ||ename|| '입니다' msg
FROM emp;
SELECT ename, sal, sal*0.2 "보너스(급여의 20%)"
FROM emp;
-- ex) 사원의 이름은 @@@이고 급여와 보너스(급여의 15%)의 합산은 @@@원입니다
SELECT '사원의 이름은' ||ename|| '입니다' 사원명, sal 임금, sal*0.15 보너스, '급여와 보너스의 합산은 ' || (sal+ sal*0.15) || ' 입니다' 합산액
FROM emp;