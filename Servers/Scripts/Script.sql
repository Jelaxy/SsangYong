SELECT * FROM MEMBER01;
CREATE TABLE member02(
	id varchar2(50),
	pass varchar2(50),
	name varchar2(50),
	point NUMBER,
	auth varchar2(50),
	regdate date
);
SELECT * FROM member02;
INSERT INTO member02 values('himan','7777','홍길동',1000,'관리자',sysdate);
SELECT * FROM MEMBER02;
WHERE id = 'himan' AND pass = '7777';
INSERT INTO  member02 values('higril','8888','홍리나',1000,'관리자',sysdate);
/*
SELECT * FROM member02
WHERE id = ? AND pass = ?

SELECT * FROM MEMBER02
WHERE id = ? AND pass = ?
AND name = ? AND point = ?
AND auth = ? AND DATE = ?


shMember
private String id;
private String pass;
private String name;
private int point;
private String auth;
private Date regdate;
생성자 id, pass 추가...

*/
