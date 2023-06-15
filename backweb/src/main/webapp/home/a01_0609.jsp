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
확인예제
1. web server와 web application server의 차이점을 기술하세요.
Web Serversms 정적인 데이터 처리
WAS는 동적인 데이터를 처리 DB와 연결하여 사용자와 데이터를 주고 받을 때 사용

2. was안에서 jsp 프로그램의 처리 과정으로 client단부터 sever단까지 구분하여 설명하세요.
client-> WAS내에 web server가 웹 컨테이너로 전달하고, 웹컨테이너에서 jsp 파일이 있는지 확인한다. 없으면 jsp로 자바코드가 생성 된 뒤에 컴파일이 된 후 서블릿에서 .class에 지정된 내용에 따라 response 객체가 최종 html로 만들 내용을 전달한다.

3. servlet과 jsp의 차이점을 기술하세요.
servlet은 java안에 html,
jsp는 html 안에 java 코드가 들어간다.

4. servlet에서 한글과 html 코드로 처리할 때, 사용되는 코드를 기술하세요.
		servlet에서 한글 처리하는 코드
		response.setCharacterEncoding("utf-8");
		servlet에서 html 처리하는 코드
		response.setContentType("text/html;charset=utf-8");
		여기서 response는 client에 전달하는 객체이다.
		
5. servlet에서 반복문으로 7가지 무지개 색 h2를 만드세요
<%
	String [] arry1 = {"red","orange","yellow","green","blue","navy","purple"};
%>
<%
	for(String color:arry1){
%>
	<h2 style="color:<%=color%>;">무지개</h2>
<% } %>

6. servlet에서 4X4테이블로 클릭시 @@번호 안녕하세요가 alert으로 로딩되게 하세요.

7. jsp의 script 3가지를 코드와 함께 기술하세요.

8. jsp에서 선언(declaration)을 통해서 가격과 갯수를 선언하고, 메서드를 통해 가격과 갯수를 받아서 합산을 처리하는 메서드를
   선언하고, 하단에서 호출하는 화면을 만드세요.
<%!
String pname="자유시간";
int price = 3000;
int cnt =3;
String getProdInfo(){
	return "상품명:"+pname+"시장가:"+price+"갯수"+cnt;
}
%>
<h2>메서드 호출<%=getProdInfo() %></h2>
9. jsp의 sciptlet과 expression을 이용해서 랜덤 구구단을 테이블로 9X1로 출력해보세요 --%>

</body>
</html>