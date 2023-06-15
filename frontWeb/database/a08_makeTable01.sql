/*
# 테이블 생성
1. 데이터베이스에서 핵심 객체인 테이블 생성 물리적 sql에 의해서 처리되는 것을 말한다.
2. 테이블 생성 기초
	1) 데이터 우형
		number : 숫자형
		varchar2(byte) : 가변형문자열
			한글 3byte
			varchar2(10)
			==> 최대 문자열 10 byte
				영문은 글자 10, 한글 3
				입력된 글자 크기만큼 메모리할 himan ==> 5byte
		char(byte) : 고정형 문자열
			char(10)
			==> 무조건 10byte
				'a' ==> 'a			'
				자리수가 정해진 코드성 데이터를 사용할 때, 활용할 때 사용된다.
				주민번호, 학번, 사번, 제품serial number
		Date : 날짜
		==> 테이블 생성시, 사용되는 가장 기초적인 데이터 유형을 분류한것이다.
	2) 테이블 생성 기본형식
		create table 테이블명(
			컬럼1명 데이터 유형,
			컬럼2명 데이터 유형
		);
		ps) 테이블 삭제 sql
	3) 기본 데이터 입력 형식
		insert into 테이블 values(데이터1, 데이터2, ...);
**/
-- 학생 테이블1 학생명과 점수
CREATE TABLE student01(
	name varchar2(50)
	point number
);
INSERT INTO student01 values('홍길동',70);
INSERT INTO student01 values('김길동',80);
INSERT INTO student01 values('신길동',90);
SELECT * FROM student01;
-- ex) 구매물건 정보 테이블(물건일련번호, 물건명, 판매가격)
CREATE TABLE buyproduct01(
	pNumber NUMBER,
	pName varchar2(50),
	pCnt number
);
INSERT INTO buyproduct01 values(1,'사과',3000);
INSERT INTO buyproduct01 values(2,'포도',6500);
INSERT INTO buyproduct01 values(3,'귤',15400);
SELECT * FROM buyproduct01;
-- ex) 회원정보 테이블(회원아이디, 회원패스워드, 회원명, 포인트, 권한)
CREATE TABLE member01(
	memID varchar2(100),
	memPass varchar2(100),
	memNAMe varchar2(100),
	memPoint NUMBER,
	memAcs varchar2(100)
);
INSERT INTO member01 values('hello','hi','hong',2345,'회원');
INSERT INTO member01 values('nice','to','meet',2543,'회원');
INSERT INTO member01 values('fine','thx','you',3545,'관리자');
SELECT * FROM member01;
-- ex) 학생정보 테이블2 (학생번호, 학생명, 국어, 영어, 수학)
CREATE TABLE STUDENT02(
	sno number,
	name varchar2(50),
	kor number(3),
	eng number(3),
	math number(3)
);
INSERT INTO STUDENT02 values(1,'홍길동',70,90,80);
INSERT INTO STUDENT02 values(2,'김길동',90,80,70);
INSERT INTO STUDENT02 values(3,'신길동',50,70,50);
SELECT * FROM STUDENT02;

/*
# 데이터의 수정
1. 기본형식
	update 테이블
		set 컬럼1명 = 수정데이터,
			컬럼2명 = 수정데이터,
			...
			컬럼3명 = 수정데이터
		where 비교/논리연산식 조건	
 */
SELECT * FROM STUDENT02;
-- sno 기준으로 1인 학생
-- 이름과 국어, 영어 수정
UPDATE * STUDENT02
	SET  name ='오영철',
		 kor = 75,
		 eng = 85
	WHERE sno = 1;
/*
 # 트랜잭션 관련 옵션
 1. 데이터 처리에서 안전성/보안성 확보를 위해서
	서버에 등록/수정/삭제시는 commit/rollback 기능을 가지고 있다.
 2. DB 서버에 접속한 사용자는 데이터의 등록/수정/삭제시, 변경되는 데이터는 commit 하기 전까지는 이 접속자1
	화면에서만 등록/수정/삭제 명령 후 처리된 데이터가 보이고,
	다른 사용자(접속자2)는 해당 처리된내용으로 보이지 않는다.
	이 때, 접속자1이 commit하는 순간 다른 접속자2에서도 데이터가 등록/수정/삭제된 데이터가 보인다.
 3. 접속자1은 commit 하기전에서 rollback을 통해서
	원래 데이터를 원복할 수 있고, commit하지 않고, 접속을 끊으면
	등록/수정/삭제된 데이터가 반영되지 않는다.
 4. 클라이언트 설정 옵션에 autocommit을 하면 위 내용이 처리되지 않고, 바로 반영이 된다.
 */
SELECT  * FROM STUDENT02;
UPDATE STUDENT02 
	SET kor =100
	WHERE sno = 1;
-- 위 툴에서 커밋/롤백 처리
-- commit; rollback; 로 코드로 직접처리 가능하다.
-- rollback은 바로 전 commit 직전까지로 제한된다.
COMMIT;
ROLLBACK;
-- ex) 이름 기준으로 김길동인 경우에 국어(80), 영어(70), 수학(90)으로 변경
--		변경 후 확인 ==> rollback 후 확인
--		수정 후 commit ==> 데이터 확인
SELECT * FROM STUDENT02;
UPDATE STUDENT02
	SET kor = 80,
		eng = 80,
		math = 90
	WHERE name = '김길동';
ROLLBACK;
COMMIT;
SELECT * FROM STUDENT02;
-- 수학점수르 5점씩 다 올리는 처리
UPDATE STUDENT02 
	SET math = math + 5; -- 현재 math에서 5점을 더하고 다시 math에 할당처리
-- ex) 영어 점수가 80점인 경우 기존 영어 점수에서 5점을 더 추가헤서 처리
UPDATE STUDENT02
	SET eng = eng + 5
WHERE eng = 80;
SELECT * FROM STUDENT02;
/*
# 삭제 처리
1. 데이터는 행단위로 선택해서 삭제를 처리할 수 있다.
	주의) 특정한 데이터를 null로 삭제하는 것을 삭제가 아니라, 수정구문에 의해서 null로 수정처리하면 된다.
2. 삭제 기본 형식
	delete : 행단위 삭제이기에 컬럼지정할 필요없음.
		from 테이블명
		where 조건문(비교|논리연산)
**/
SELECT * FROM emp01;
DELETE
FROM EMP01
WHERE empno = 7369;
DELETE
FROM EMP01
WHERE empno >= 8000;
-- ex1) 직책(job)이 salesman인 데이터를 삭제
DELETE
FROM EMP01
WHERE job = 'SALESMAN';
-- ex) 급여(sal)가 2000~3000 사이 데이터 삭제
DELETE
FROM EMP01
WHERE sal>2000 or sal<3000;
/*
 # 복사 테이블 만들기
 1. 기본에 ㅣㅆ는 테이블의 구조만 데이터복사하고 다른 테이블명으로 설정하ㅡㄴ 것을 말한다.
 2. 데이터 + 테이블 구조 모두 복사
 	create table 만들어질 테이블명
 	as select * from 기존테이블;
 3. 테이블 구조만 복사
 */
CREATE TABLE emp02
AS select * FROM emp;
SELECT * FROM emp01;

