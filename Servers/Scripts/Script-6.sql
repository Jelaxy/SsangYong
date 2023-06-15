SELECT *
FROM emp02
WHERE ename LIKE '%'||'B'||'%';
-- 1. 입력값에 따라서 검색되는 데이터가 다른 처리
-- 2. 매개변수 : 사원명(ename)
select * FROM emp02;
SELECT * dept01 d
WHERE dname LIKE '%'||'S'||'%'
SELECT count(*) cnt
FROM EMP02
WHERE 
SELECT *
FROM emp02
WHERE empno = 7499
;
select * from dept01 where deptno=10;
SELECT *
FROM DEPT01
WHERE deptno = 10;
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
SELECT *
FROM JOBS
WHERE JOB_ID like '%'||'AD_PRES'||'%'
;
SELECT * FROM JOBS;

SELECT  * FROM  emp02
WHERE ename like '%'||'A'||'%'
and job like '%'||'A'||'%';
SELECT *
FROM LOCATIONS
WHERE STREET_ADDRESS LIKE '%'||'u'||'%'
AND CITY LIKE '%'||'o'||'%';
SELECT * FROM LOCATIONS;
-- first name과 last_name을 합쳐서 키워드 검색
-- salary를 범위를 정해서 검색처리
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME || LAST_NAME LIKE '%'||'A'||'%'
AND SALARY BETWEEN 0 AND 12000
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME || LAST_NAME LIKE '%'||'?'||'%'
AND SALARY BETWEEN ? AND ?
;
--sql을 map과 함께 처리해보세요
SELECT *
FROM JOB_HISTORY
WHERE JOB_ID LIKE '%'||''||'%'
AND DEPARTMENT_ID BETWEEN 10 AND 120
;
SELECT * FROM JOB_HISTORY;
SELECT *
FROM JOBS
WHERE JOB_TITLE LIKE '%'||'S'||'%'
AND MIN_SALARY BETWEEN 1000 AND 10000
;
SELECT * FROM emp02;
-- sysdate : 현재 날짜/시간
-- 전체 컬럼데이터 입력
INSERT INTO emp02 values(1000,'홍길동','사원',7902,
	sysdate,4000,1000,10);
-- 특정 컬럼데이터 입력
-- 테이블명(입력할 컬럼 순서대로 나열)
-- 날짜로 번호('입력할 문자열','입력할 문자열의 형식')
SELECT to_date('2020-01-01','YYYY-MM-DD') FROM dual;
INSERT INTO emp02(empno, ename, hiredate, sal)
	values(1002,'마길동', to_date('2020-01-01','YYYY-MM-DD'),3500);
SELECT * FROM emp02 ORDER BY empno ASC;
-- ex) 1003 사원번호로 전체 데이터 입력
INSERT INTO emp02(empno, ename, hiredate, sal)
	VALUES(1003, '신길동', to_date('2020-02-04','YYYY-MM-DD'),2000);
-- ex) 1004 2023-06-01, 오길동을 입력하세요
INSERT INTO emp02(empno, ename, hiredate, sal)
	VALUES(1004,'오길동',to_date('2023-06-01','YYYY-MM-DD'),1200);
SELECT * FROM emp02 ORDER BY empno;
SELECT * FROM DEPARTMENTS;
-- departments를 입력 처리하세요
CREATE TABLE DEPARTMENTS10
AS SELECT * FROM DEPARTMENTS;
SELECT * FROM DEPARTMENTS10;
INSERT INTO DEPARTMENTS10 values(300,'IT Sales',100,1700);
INSERT INTO DEPARTMENTS10 VALUES(350,'재무');
/*
 # 수정 처리 구문
 */
SELECT * FROM emp02;
UPDATE EMP02
	SET ENAME = '오길동(upt)',
		job = '대리',
		sal = 4000,
		hiredate = to_date('2023/05/01','YYYY/MM/DD')
	WHERE empno = 7369;
/*
# 수정할 생성자만 추가*/
CREATE TABLE location10
AS SELECT * FROM LOCATIONS;
SELECT * FROM location10;
UPDATE location10
	SET street_address = '종로1가',
		postal_code = '34122',
		city = '서울',
		state_province = '서울',
		country_id = 'SE'
	WHERE location_id=1000;
--UPDATE location10
--	SET street_address = ?,
--		postal_code = ?,
--		city = ?,
--		state_province = ?,
--		country_id = ?
--	WHERE location_id=?;
	-- ex) 항목 중에 insert 내용 복사해서 update 처리하세요
INSERT INTO location10 values(5000,'배곧','2344','시흥','SIHEUNG','SI');
--INSERT INTO location10 values(6000,'은계','2333','시흥','SIHEUNG','SI');
DELETE 
FROM location10
WHERE location_id=1000
;
/*
DELETE 
FROM location10
WHERE location_id=?
*/
SELECT*FROM LOCATION10;
SELECT * FROM location10;