[1단계:개념] 1. 제약조건의 각각의 특징을 기본 예제를 통해서 설정하고 확인하세요.
-- 1. NOT NULL
select * from COMPANY01;
CREATE TABLE COMPANY01(
	comName varchar2(30) CONSTRAINTS COMPANY01_comName_nn NOT null
);
INSERT INTO COMPANY05 values(null);
-- 2. UNIQUE uniq는 키가 중복 되면 안된다. 단 값이 null일 때는 중복이 가능핟.
CREATE TABLE employee01(
	empno number(5) CONSTRAINTS employee01_empno_uq UNIQUE,
	ename varchar2(30) CONSTRAINTS employee01_ename_mm NOT NULL,
	sal number(5)
);

INSERT INTO employee01(empno, ename) values(3,'마길동');
-- 동일한 사원 정보 입력시 에러
INSERT INTO employee01(ename, sal) values('신길동',5000);
-- null은 동일해도 에러발생안함

-- 3. PRIMARY KEY
CREATE TABLE employee02(
	empno number(4) PRIMARY KEY -- 제약조건을 자동설정
);
CREATE TABLE employee03(
	empno number(4) CONSTRAINT employee03_empno_pk PRIMARY key
);
CREATE TABLE teacher01(
	tno NUMBER PRIMARY KEY
);
-- 4. FOREIGN KEY
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
-- 5. CHECK
CREATE TABLE student06(
	gender varchar2(1) CONSTRAINTS student05_gender_ck
		check(gender IN('F','M'))
);
INSERT INTO STUDENT06 values('F');
INSERT INTO STUDENT06 values('M');
INSERT INTO STUDENT06 values('남');
INSERT INTO STUDENT06 values('여자');
[1단계:코드] 2. 쇼핑몰의 회원 정보/구매정보/물품정보를 테이블로 만들 때, 오늘 배운 제약조건 5가지를 통해 만드세요
[1단계:코드] 3. 컴퓨터부품테이블(부품key, 부품명, 가격, 재고량, 부품 설명)만들되, sequence를 이용해서 부품key를 설정해서 할당하도록 하세요.
[1단계:코드] 4. Enrollments라는 테이블을 생성하고, 학생의 학번(student_id)과 수강한 강의의 고유번호(course_id)를 저장하는데, 
              각각의 값은 Students 테이블과 Courses 테이블의 학번과 고유번호를 참조하는 외래키로 설정되도록 하세요.