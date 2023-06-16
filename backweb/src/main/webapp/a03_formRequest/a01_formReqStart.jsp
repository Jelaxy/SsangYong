<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
# form과 requset의 관계
1.form의하위객체는cluent가 서버에 qyery string으로 대이터를 전송하게 해준느 Ui(user interfae)가 있는 태그 및 객체이다.
2. 화면단에서 입력을해서 전송 이벤트로 처리시 qyery string을 만들어 주는 태그가 form과 form하위 요소 객체들이다.
3. qyery string과 form 요소객체의 속성비교
	1)a02_formReceive.jsp?name=홍길동
	2) <form action="a02_formReceuve.jsp">
		이름:<input name="name" value="홍길동"/>
		<inout type="submit">
	3) 위 내용 전달하는 대상
	 	a02_formReceuve.jsp? ==> action="a02_formReceive.jsp"
	 	name=홍길동 ==> name 속성값과, value 속성값 동일 
	 	submit라는 버튼을 클릭시 위 qurystring을 만들어주어 요청처리한다.
--%>
<h2>전송준비</h2>
<form action="a02_formREceuve.jsp">
	전송할이름:<input type="text" name="name"/><br>
	<input type="submit"/>
</form>
<%--
ex) 전송 2 연습
a03_formRev.jsp
 --%>
</body>
</html>