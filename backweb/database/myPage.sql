--=========================회원===================
CREATE TABLE BUser(
   ID varchar2(16) PRIMARY KEY   ,
   N_NAME varchar2(18),
   PASS varchar2(16) ,
   B_DAY varchar2(30) NOT NULL,
   MAIL varchar2(30) ,
   P_NUM varchar2(11) 
);

INSERT INTO BUser VALUES('kkw01','경웅','111111111','980714','rkd@naver.com','01011112222');
INSERT INTO BUser VALUES('ysm01','석민','222222222','980309','tjrals@naver.com','01033334444');
INSERT INTO BUser VALUES('kya01','윤아','333333333','000912','dbsdk@naver.com','01055556666');
INSERT INTO BUser VALUES('syr01','유림','444444444','981123','dbfla@naver.com','01077778888');

select * from buser;
--=========================게시물===================
CREATE TABLE POST (
    POST_ID NUMBER PRIMARY KEY,
    ID varchar2(16) ,
    P_TEXT VARCHAR2(1000) NOT NULL,
    P_TIME DATE NOT NULL,
    TAG_ID NUMBER,
   FOREIGN KEY (ID) REFERENCES BUser (ID)
);

INSERT INTO POST values(1,'syr01','오늘 날씨 너무 더워서 수영도 못가겠다...',to_date(sysdate,'YYYY-MM-DD'),1);
INSERT INTO POST values(2,'kya01','스피닝 처음 다녀왔어요. 진짜 힘들지만 꾸준히 하면 근육도 생길 것 같아요. 성취감이 좋네요',to_date(sysdate,'YYYY-MM-DD'),2);
INSERT INTO POST values(3,'kkw01','베이스 수업 2일차 입니다. 낭만 있어~',to_date(sysdate,'YYYY-MM-DD'),3);
INSERT INTO POST values(4,'syr01','여자친구 주려고 목도리 떴습니다',to_date(sysdate,'YYYY-MM-DD'),4);
INSERT INTO POST values(5,'syr01','다이어트식 처음 만들어 봤습니다...요리 잘하시는 분들 정말 대단한 것 같아요ㅠㅠ 아직 요린이라 그런가 어렵네요ㅠㅠㅠ',to_date(sysdate,'YYYY-MM-DD'),5);
INSERT INTO POST values(6,'syr01','[국비 코딩수업] 2개월차입니다. 아직도 하나도 모르겠습니다. 나중에 할 최종 프로젝트가 벌써부터 걱정되네요. 이미 수료하신 분들은 어떠신가요?',to_date(sysdate,'YYYY-MM-DD'),6);
INSERT INTO POST values(7,'syr01','남자친구 주려고 니트 떴어요. 탑다운 방식이라 금방 떴습니다ㅋㅋㅋㅋㅋ 도안 너무 예뻐서 만원이어도 후회가 안되네요. 다들 하나씩 하세요',to_date(sysdate,'YYYY-MM-DD'),4);

select * from post;

COMMIT;
--=========================댓글===================
CREATE TABLE COM_MENT(
   COMMENT_ID NUMBER PRIMARY KEY,
   ID varchar2(16) ,
   POST_ID NUMBER(30),
   C_TEXT varchar2(300),
   C_TIME DATE NOT NULL,
   FOREIGN KEY (ID) REFERENCES BUser (ID),
   FOREIGN KEY (POST_ID) REFERENCES POST (POST_ID)
);

INSERT INTO COM_MENT values(1,'ysm01',3,'우와 베이스 멋지네요',to_date(sysdate,'YYYY-MM-DD'));
INSERT INTO COM_MENT values(2,'kya01',3,'저도 배우고 싶어요',to_date(sysdate,'YYYY-MM-DD'));
INSERT INTO COM_MENT values(3,'syr01',2,'스피닝 살 엄청 빠진다던데 궁금하네요',to_date(sysdate,'YYYY-MM-DD'));
INSERT INTO COM_MENT values(4,'kya01',2,'아침에 다니시나요? 열정 멋지십니다',to_date(sysdate,'YYYY-MM-DD'));


select * from COM_MENT;

--=========================태그===================
CREATE TABLE TAG (
    TAG_ID NUMBER PRIMARY KEY,
    ID varchar2(16) ,
    T_TEXT VARCHAR2(30) NOT NULL,
    FOREIGN KEY (ID) REFERENCES BUser (ID)
);

INSERT INTO TAG values();

select * from TAG;

--=========================좋아요===================
CREATE TABLE LIKE_ (
    LIKE_ID NUMBER PRIMARY KEY,
    POST_ID NUMBER,
    ID varchar2(16) ,
    L_TIME DATE NOT NULL,
    FOREIGN KEY (POST_ID) REFERENCES POST (POST_ID),
      FOREIGN KEY (ID) REFERENCES BUser (ID)
);


INSERT INTO LIKE_ values();

select * from LIKE_;

--=========================채팅방===================
CREATE TABLE ROOM (
    ROOM_ID NUMBER PRIMARY KEY,
    ID varchar2(16) ,
    ROOM_NAME VARCHAR2(30),
    R_TIME DATE NOT NULL,
    R_YN NUMBER NOT NULL,
   FOREIGN KEY (ID) REFERENCES BUser (ID)
);

INSERT INTO ROOM values();

select * from ROOM;

--=========================채팅 내용===================
CREATE TABLE CHATTING (
    CHAT_ID NUMBER PRIMARY KEY,
    ROOM_ID NUMBER,
    ID varchar2(16) ,
    C_TEXT VARCHAR2(600),
    C_TIME DATE NOT NULL,
    FOREIGN KEY (ROOM_ID) REFERENCES ROOM (ROOM_ID),
    FOREIGN KEY (ID) REFERENCES BUser (ID)
);

INSERT INTO CHATTING values();

select * from CHATTING;

--=========================친구목록===================
CREATE TABLE FRIEND (
    FRIEND_ID NUMBER PRIMARY KEY,
    ID varchar2(16) ,
    F_ID varchar2(16),
    F_YS NUMBER,
    FOREIGN KEY (ID) REFERENCES BUser (ID)
);

INSERT INTO FRIEND values();

select * from FRIEND;


--=========================drop===================
DROP TABLE BUser;
DROP TABLE POST;
DROP TABLE COM_MENT;
DROP TABLE LIKE_;
DROP TABLE FRIEND;
DROP TABLE TAG;
DROP TABLE ROOM;
DROP TABLE CHATTING;

--=========================DAO===================
SELECT * FROM post WHERE id = ?;

UPDATE post
SET POST_ID = ?, ID = ?, P_TEXT = ?, P_TIME =?
WHERE POST_ID = ? ; 

UPDATE tag
SET TAG_ID = ? T_TEXT = ?
WHERE TAG_ID = ? ;

DELETE FROM post
WHERE POST_ID = ? ;


SELECT COUNT(*) FROM friend where id = 1;
SELECT COUNT(*) FROM post where id = 1;
SELECT COUNT(*) FROM friend; 
--=========================join===================
CREATE TABLE POST (
    POST_ID NUMBER PRIMARY KEY,
    ID varchar2(16) ,
    P_TEXT VARCHAR2(1000) NOT NULL,
    P_TIME DATE NOT NULL,
    TAG_ID NUMBER,
   FOREIGN KEY (ID) REFERENCES BUser (ID)
);

-- Post에 엮인 좋아요랑 댓글 수 가져오는 sql문ㅠㅠ
SELECT P.POST_ID, P.P_TEXT,
(SELECT COUNT(LIKE_ID) FROM LIKE_
WHERE POST_ID = P.POST_ID) AS LIKE_COUNT,
(SELECT COUNT(COMMENT_ID) FROM COM_MENT
WHERE POST_ID = P.POST_ID) AS COMMENT_COUNT
FROM POST P
WHERE P.ID = 1;



-- 게시물에 달린 댓글이랑 댓글수, 좋아요 수랑 좋아요 누른 유저 확인...ㅠㅠ
SELECT p.POST_ID, p.P_TEXT, p.ID AS USER_ID,
       COUNT(DISTINCT c.COMMENT_ID) AS COMMENT_COUNT,
       RTRIM(XMLAGG(XMLELEMENT(E, c.C_TEXT || ', ')).EXTRACT('//text()').getStringVal(), ', ') AS COMMENTS,
       RTRIM(XMLAGG(XMLELEMENT(E, u.N_NAME || ' (' || u.ID || '), ')).EXTRACT('//text()').getStringVal(), ', ') AS COMMENT_USERS,
       COUNT(DISTINCT l.LIKE_ID) AS LIKE_COUNT,
       RTRIM(XMLAGG(XMLELEMENT(E, b.N_NAME || ' (' || b.ID || '), ')).EXTRACT('//text()').getStringVal(), ', ') AS LIKE_USERS
FROM POST p
LEFT JOIN COM_MENT c ON p.POST_ID = c.POST_ID
LEFT JOIN BUser u ON c.ID = u.ID
LEFT JOIN LIKE_ l ON p.POST_ID = l.POST_ID
LEFT JOIN BUser b ON l.ID = b.ID
WHERE p.POST_ID = 2
GROUP BY p.POST_ID, p.P_TEXT, p.ID;

-- 유저의 총 게시물수와 친구 수...
SELECT
    COUNT(DISTINCT P.POST_ID) AS TOTAL_POST_COUNT,
    COUNT(DISTINCT F.FRIEND_ID) AS TOTAL_FRIEND_COUNT
FROM POST P
LEFT JOIN FRIEND F ON P.ID = F.ID
WHERE P.ID = 'YOUR_USER_ID';

SELECT p.post_id, p.id, p.p_text, p.p_img, p.p_time
, p.tag_id, b.N_NAME, c.comment_id, c.c_text, c.c_time
FROM post p
JOIN buser b ON p.id = b.id
LEFT JOIN com_ment c ON p.post_id = c.post_id
ORDER BY p.post_id;

SELECT p.post_id, p.id, p.p_text, p.p_img, p.p_time\r\n"
                 + ", p.tag_id, b.N_NAME, c.comment_id, c.c_text, c.c_time\r\n"
                 + "FROM post p\r\n"
                 + "JOIN buser b ON p.id = b.id\r\n"
                 + "LEFT JOIN com_ment c ON p.post_id = c.post_id\r\n"
                 + "ORDER BY p.post_id
                 
SELECT p.post_id, p.id, p.p_text, p.p_time
, p.tag_id, b.N_NAME, c.comment_id, c.c_text, c.c_time
FROM post p
JOIN buser b ON p.id = b.id
LEFT JOIN com_ment c ON p.post_id = c.post_id
WHERE p.id = 'syr01'
ORDER BY p.post_id;

SELECT *
FROM post
WHERE post_id = ?;

SELECT * FROM post;

SELECT * FROM POST 
WHERE ID = 'syr01' ORDER BY P_TIME DESC;