/*
# check
1. 특정 컬럼에 조건이나 범위를 지정해서,
	해당 범위에 데이터만 입력되도록 처리하는 것을 말한다.
2. 형식
	컬럼명 데이터우형 constraint 제약명 check(조건데이터-where문 하위)
	컬럼명 데이터유형 check(제약조건 내용)
**/
CREATE TABLE student06(
	gender varchar2(1) CONSTRAINTS student05_gender_ck
		check(gender IN('F','M'))
);
INSERT INTO STUDENT06 values('F');
INSERT INTO STUDENT06 values('M');
INSERT INTO STUDENT06 values('남');
INSERT INTO STUDENT06 values('여자');
INSERT INTO STUDENT06 values(null);
SELECT * FROM STUDENT06;
-- student07 테이블을 생성해서
-- sno(프라이머리 키), 이름,
-- 성별(남/여), 국어(0~100), 영어(0~100), 수학(0~100)
CREATE TABLE student07(
	gender varchar2(3) CONSTRAINTS student06_gender_ck
		check(gender IN ('남','여')),
	kor number(3),
	eng number(3),
	math number(3)
);
INSERT INTO student07 values('남',100,20,53);
INSERT INTO student07 values('여',90,86,100);
INSERT INTO student07 values('남',36,71,53);
INSERT INTO student07 values(null,100,20,53);
SELECT * FROM student07;
/*
# 외래키 설정 관계(foreign key)
1. 연관관계 있는 두 테이블에 대하여, 한쪽 테이블에 있는 데이터 기준으로 다른 테이블의 데이터를 입력할 수 있게 하는 것을 말한다.
2. 기본 형식
	컬럼명 데이터유형 constraint 테이블명_컬럼명_fk
		references 대상테이블명(컬럼명)
*/
CREATE TABLE teacher01(
	tno NUMBER PRIMARY KEY
);
INSERT INTO teacher01 values(10);
INSERT INTO teacher01 values(20);
INSERT INTO teacher01 values(30);
SELECT * FROM teacher01;
CREATE TABLE student08(
	name varchar2(10),
	tno NUMBER CONSTRAINT student08_tno_fk
		REFERENCES teacher01(tno)
);
INSERT INTO student08 values('홍길동',10);
INSERT INTO student08 values('김길동',20);
INSERT INTO student08 values('신길동',30);
INSERT INTO student08 values('오길동',40);
SELECT * FROM student08;
/*
ex) 물건테이블(물건번호, 물건명, 가격, 재고량)
	구매테이블(구매번호, 구매수량, 물건번호-외래키설정)
**/
CREATE TABLE product01(
	pno number(5) PRIMARY KEY,
	pname varchar2(20),
	price number(10),
	cnt number(10)
);
INSERT INTO product01 values('301','분말류',3000,200);
INSERT INTO product01 values('450','어폐류',15000,30);
SELECT * FROM product01;

CREATE TABLE buyproduct02(
	buyNo number(5) PRIMARY KEY,
	buyCnt number(10),
	pno NUMBER CONSTRAINT buyproduct02_pno_fk
		REFERENCES product01(pno)
);

INSERT into


