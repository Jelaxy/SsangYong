select * from emp;
select empno from emp; -- ctrl+enter
select empno, ename from emp;
-- ex) empno, job, mgr deptno를 1, 2, 3, 4 선택해서 조회해보세요
SELECT empno from emp;
SELECT empno, job from emp;
SELECT empno, job, mgr from emp;
SELECT empno, job, mgr, deptno from emp;
SELECT deptno, empno, ename
from emp;
select ename,sal
from emp
where sal>=2000;
select *
from emp;
-- ex) sal(급여)가 2000미만인 사원정보 검색하세요
select ename, sal
from emp
where sal<2000;
-- ex) sal(급여)가 2000이산 4000미만인 사원정보 검색하세요
--      and, or 이용
select ename, sal
from emp
where sal>=2000 and sal<4000;

select deptno, ename, sal
from emp
where sal<2000 or sal>=5000;
select * from emp;
--ex) empno 기준으로 7500미만 이거나 7800이상인
--   사원의 empno, ename, sal를 출력하세요
select empno, ename, sal
from emp
where empno < 7500 or empno >= 7800;
select *
from emp
where ename ='SMITH';
-- '문자열' : 문자열데이터
-- = :비교연산자(동일데이터)
-- 숫자형은 그대로 표시
select * from emp;
-- ex) sal가 1250인 사원 정보를 출력
select * from emp
where sal = 1250;
-- ex) job이 CLERK인 사원 정보 중에 empno, ename, job을 출력하세요
select empno,ename,job from emp
where job = 'CLERK';

select * from emp;
/*
DB ==> ArrayList<Emp> 할당
ex)
class Emp{
    private int empno;
    private String ename;
    private String job;
    private int mgr;
    private Date hiredate;
    private double sal;
    private double comm;
    private int deptno;
}
*/
select * from dept;
select * from emp;
select *
from emp, dept
where emp.deptno = dept.deptno;