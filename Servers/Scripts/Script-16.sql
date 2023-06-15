[1단계:개념] 1. 제약조건의 각각의 특징을 기본 예제를 통해서 설정하고 확인하세요.
-- 1. NOT NULL
select * from COMPANY01;
CREATE TABLE COMPANY01(
	comName varchar2(30) CONSTRAINTS COMPANY01_comName_nn NOT null
);
INSERT INTO COMPANY01 values(null);

-- 2. UNIQUE
-- 키값이 중복 되면안되지만 null일 경우에는 사용이 가능하다.
CREATE TABLE COMPANY02(
	comNo number(5) CONSTRAINTS COMPANY01_empno_uq UNIQUE,
	comName varchar2(30) CONSTRAINTS employee01_comName_nn NOT NULL,
);

INSERT INTO COMPANY02 values(1,'쌍용');
INSERT INTO COMPANY02(comNo) values(1,null);

-- 3. PRIMARY KEY
CREATE TABLE COMPANY03(
	comNo number(5) PRIMARY KEY -- 제약조건을 자동설정
);
CREATE TABLE PERSON01(
	comNo number(5) CONSTRAINT COMPANY03_comNo_pk PRIMARY key
);

-- 4. FOREIGN KEY
CREATE TABLE COMPANY04(
	comName varchar2(10),
	comNo NUMBER CONSTRAINT COMPANY04_comNo_fk
		REFERENCES PERSON01(comNo)
);
INSERT INTO COMPANY04 values(10,'쌍용');
INSERT INTO COMPANY04 values(20,'KIA');
INSERT INTO COMPANY04 values(30,'현대');
INSERT INTO COMPANY04 values(40,'르노');
SELECT * FROM COMPANY04;

-- 5. CHECK
CREATE TABLE COMPANY04(
	gender varchar2(1) CONSTRAINTS student05_gender_ck
		check(gender IN('F','M'))
);
INSERT INTO STUDENT06 values('F');
INSERT INTO STUDENT06 values('M');
INSERT INTO STUDENT06 values('남'); -- error
INSERT INTO STUDENT06 values('여자'); -- error
[1단계:코드] 2. 쇼핑몰의 회원 정보/구매정보/물품정보를 테이블로 만들 때, 오늘 배운 제약조건 5가지를 통해 만드세요
[1단계:코드] 3. 컴퓨터부품테이블(부품key, 부품명, 가격, 재고량, 부품 설명)만들되, sequence를 이용해서 부품key를 설정해서 할당하도록 하세요.
[1단계:코드] 4. Enrollments라는 테이블을 생성하고, 학생의 학번(student_id)과 수강한 강의의 고유번호(course_id)를 저장하는데, 
              각각의 값은 Students 테이블과 Courses 테이블의 학번과 고유번호를 참조하는 외래키로 설정되도록 하세요.