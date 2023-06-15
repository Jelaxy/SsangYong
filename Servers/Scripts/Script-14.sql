CREATE TABLE jobPosting(
 postId varchar2(50) PRIMARY KEY,
 comName varchar2(50),
 phoneNum varchar2(50),
 placeOfWork varchar2(50),
 fieldName varchar2(50),
 taskInCharge varchar2(50),
 education varchar2(50),
 gender varchar2(50),
 salary NUMBER(5),
 recruitmentDate varchar2(50),
 receptionMethod varchar2(50)
);

SELECT * FROM jobPosting;


INSERT INTO JOBPOSTING  VALUES('1','쌍용','010-3453-2233','역삼','영업','B2B영업','대학교 졸업','여자',3500,'2022-02-23','사람인');
INSERT INTO JOBPOSTING VALUES('2','기아','010-2222-2222','강남','PM','IT PM','대학원 졸업','남자',3000,'2023-02-23','사람인');
INSERT INTO JOBPOSTING VALUES('3','카카오','010-7922-8923','제주','보안','본사 보안','대학 졸업','남자',3100,'2021-05-23','FAX');

DROP TABLE JOBPOSTING;
DELETE FROM JOBPOSTING
	WHERE postId = '4';
create TABLE scedule(
 scheduleID varchar2(50),
 scheduleName varchar2(50),
 startDate varchar2(50),
 endDate varchar2(50),
 PRIMARY key(scheduleID)
);

DROP TABLE scedule;

SELECT * FROM SCEDULE;

INSERT INTO scedule values('1','쌍용 경력직 모집','2022-01-20','2022-01-25');
INSERT INTO scedule values('2','기아 신입 모집','2023-01-04','2022-01-10');
INSERT INTO SCEDULE values('3','넥슨 상반기 정규직 채용','2023-05-01','2023-05-10');
INSERT INTO scedule VALUES('4','대한통운 물류사원 모집','2021-03-20','2021-04-04');
DELETE FROM scedule
	WHERE scheduleID = '4';