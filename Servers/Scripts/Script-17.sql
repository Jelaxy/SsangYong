/*
# 정규화
1. 정규화와 이상 현상
	1) 이상현상
		불필요한 데이터의 중복을 인해 릴레이션(테이블간의 연관관계)에 대한 데이터의 삽입, 수정, 삭제 연산을 수행할 때, 발생하는 부작용을 말한다.
	2) 정규화 과정
		이러한 이상 현상을 제거하면서 데이터베이스를 무결성있게 설계해나가는 과정을 말한다.
2. 이상현상 종류
	1) 삽입 이상: 새 데이터를 삽입하기 위해 불필요한 데이터도 함께 삽입해야 하는 문제
		ex) empdept(통합테이블)의 경우
			부서나 사원정보 중 하나만 입력하더라도 다른 정보를 null로 남겨두거나 임의로 입력해야 하는 상활 발생
	2) 갱신 이상 : 중복 튜플 중 일부만 변경하여 데이터가 불일치하게 되는 모습의 문제
		ex) empdept(통합테이블)에서 부서명을 하나의 사원정보 단위로 수정할 떄, 오타로 공백이나 다른 부서명으로 입력시, 부서명이 통일화 되지 않는 상황이 발생한다.
	3) 삭제 이상: 튜플을 삭제하면 꼭 필요한 데이터까지 삭제되는 데이터 손실의 문제
		ex) empdept(통합테이블)에서 10부서는 삭제하는데, 연관되어있는 사원정보가 모두 삭제되는 현상 발생
3. 정규화를 위한 단계적 학습 내용
	1) 정규화 과정은 이러한 이상 현상을 효과적으로 처리하기 위해
		단계별 과정을 가진다.
	2) 이 과정을 각 단계별로 정규화를 효과적으로 처리하 기위한 내용이고,
		이전 과정을 거쳐야 다은과저을 처리하게 하고 있다.
	2) 개괄적으로 
		제 1 정규화
		제 2 정규화
		제3 정규화
		BCNF정규화
		제4 정규화
		제5 정규화
		로 구분 되는데, 실무적으로는 1~3 정규화까지 많이 활용되고 데이터의 용량과 복잡성에 따라
		정규화과정에 의해서 무결성은 보장되지만 속도이슈 때문에 역정규화 과정을 거치는 경우도 많다.
	4) 정규화의 핵심으 1~3정규화에서 사용되는 함수 개념부터 확인하여야한다.
		- 데이터 원자성
		- 완전함수 종속성
		- 이행적 함수 종속성
# 제1정규화 처리
1. 릴레이션의 모든 속성이 더느 분해되지 않는 원자값만 가지면 제1정규형을 만족한다.
2. 제1정규형을 만족해야 관계 데이텅베이스의 리레이션이 될
		
*/

-- 제1 정규화 前 테이블
CREATE TABLE normalForm00(
	cuid varchar2(50), --고객 아이디
	eventno varchar2(100), -- 이벤트번호
	ck_yn varchar2(50), -- 당첨여부
	grade varchar2(19), -- 등급
	discount number(4,2) -- 할인율
);
INSERT INTO normalForm00 values(
	'apple', 'E001,E005,E010','Y,N,Y','gold',0.1
);
INSERT INTO normalForm00 values(
	'banana', 'E002,E005','N,Y','vip,',0.2
);
INSERT INTO normalForm00 values(
	'carrot', 'E003,E007','Y,Y','gold',0.1
);
INSERT INTO normalForm00 values(
	'orange', 'E004','N','silver',0.05
);
SELECT * FROM normalForm00;
-- ex) 제1정규화 테이블로 normalForm01로 해서 테이블을 만들고 데이터를 입력하세요
CREATE TABLE normalForm01
AS SELECT * from normalForm00 WHERE 1=0;
SELECT * FROM normalForm01;
CREATE TABLE normalForm001(
	student_id int PRIMARY KEY,
	stunent_name varchar(100),
	cousre1 varchar(100),
	cousre2 varchar(100),
	cousre3 varchar(100)
);
CREATE TABLE normalForm011(
	student_id int PRIMARY KEY,
	stunent_name varchar(100)
);
CREATE TABLE normalForm021(
	cousre_id int PRIMARY KEY,
	cousre_name varchar(100)
);

CREATE TABLE normalForm031(
	student_id int PRIMARY KEY,
	cousre_id int,
	FOREIGN key(student_id)
		REFERENCES normalForm011(student_id),
	FOREIGN key(cousre_id)
		REFERENCES normalForm021(cousre_id)
);
CREATE TABLE normalForm002(
	employee_id int PRIMARY KEY,
	employee_name varchar2(100)
);
-- 사원 : 010-4333-4333, 010-3533-3333
-- ==>
-- 1 himan 010-4333-4333
-- 2 himan 010-3533-3333

CREATE TABLE normalForm022(
	phone_id int PRIMARY KEY,
	employee_id int,
	phone_number varchar2(100),
	FOREIGN key(empoyee_id) REFERENCES
		normalForm012(employee_id)
);
-- 아래 구조의 내용을 테이블로 만들어보고(정규화 전 테이블)
-- 정규화 적용된 테이블도 만들어보세요.
/*
    주문정보   고객이름   주문날짜      상품목록
    1      홍길동   2023-05-18   사과,바나나,딸기
    2      마길동   2023-05-19   사과,오렌지,수박
    3      오길동   2023-05-20   바나나,딸기,키위
       
 ==> 제1정규화가 적용된 주문상품 테이블
 주문정보   고객이름   주문날짜      상품목록
    1      홍길동   2023-05-18   사과
    1      홍길동   2023-05-18   바나나
    1      홍길동   2023-05-18   딸기
    2      마길동   2023-05-19   사과
    2      마길동   2023-05-19   오렌지
    2      마길동   2023-05-19   수박
    3      오길동   2023-05-20   바나나
    3      오길동   2023-05-20   딸기
    3      오길동   2023-05-20   키위
     */
/*
 학생정보 테이블
    학생id   학생이름   과목1   과목2   과목3
    1      홍길동   수학      영어      과학
    2      마길동   역사      지리      음악
    3      하길동   체육      미술      수학 
 ==> 제1정규화 처리 테이블
    학생테이블
       학생ID   학생이름
       1      홍길동
       2      마길동
       3      하길동
       
    과목테이블
       과목ID   과목이름
       1      수학
       2      영어
       3      과학   
       4      역사
       5      지리
       6      음악   
       7      체육
       8      미술
       
    학생과목연결테이블

ex) 아래 테이블을 정규화 과정을 처리하여
	주문정보 테이블
	주문번호	고객명		주문일자		상품명
	1		홍길동,김철수	2022-01-01	노트북,키보드,마우스
	2		이영희		2022-02-14	스마트폰
	3		박지성		2022-03-10	모니터
	==> 테이블 분리, 컬럼지정
	고객정보
	고객번호	고객명
	1		홍길동
	2		김길동
	3		이영희
	4		박지성	
	
	
	주문정보(주문-고객)
	
**/
