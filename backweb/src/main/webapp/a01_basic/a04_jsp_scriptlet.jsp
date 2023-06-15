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
# scriptlet
1. jsp에서 가장 많이 활용되는 java코드 및 로직이 처리되는 부분이다.
2. 여러가지 화면 구성과 함께 많이 활용된다.
(메서드 블럭 안에 처리되는 부분으로 java로 비유하면 main()에서 처리되는 실제 화면을 구현하는 부분이다)
	1) 변수도 선언
	2) 변수 할당 및 활용
	3) 여러가지 화면과 함께 로직 처리
--%>
<%
	String name = "홍길동";
	String [] arry = {"사과","바나나","딸기"};
%>
	<%	for(String fruit: arry){
%>
	<%-- 출력 영역 --%>
		<h2>과일:<%=fruit %><h2>		
<%	} %>
<%--
# scriptlet 연습
1. 반복문
	1) 증감 연산자에 의한 화면 구성 처리
	2) 지역변수/전역변수 활용
2. 조건문
3. 반복분과 조건문 혼합
4. 배열데이터 처리
5. 객체사용
6. 객체형배열처리
 --%>
  <h2>카운트업</h2>
  <%-- ex) 1~10까지 h3로 카운트업 --%>
  <%
  	for(int cnt=1;cnt<=10;cnt++){ %>
		<h2>카운트<%=cnt%>!!</h2>
  <% } %>
  <%-- ex) 테이블의 1x10로 카운트 다운 처리
  	10 9 8 7 6 5 4 3 2 1
   --%>
	   <table width="50%" border>
	   <tr>
   <% for(int cnt=10; cnt>=1; cnt--){%>
	   <td><%=cnt%></td>
   <% } %>
	   </tr>
	   </table>
<%--
# jsp의 조건문 처리
1. java 단의 코드에서 화면을 분리시키거나 로직을 분리시킬 때 활용된다.
2. 여러가지 유형
	1) 화면 분리
		권한에 따른 메뉴 항목이 다르게 처리할 때
	2) 로직에 의한 처리
		point에 의해서 고객 등급을 다르게 변수로 설정할 때
--%>
<%--
<% %> : java
그 외 화면에 처리될 영역
 --%>
	<%
	// java 코드
	String auth = "admin";
	if(auth.equals("admin")){
	%>
		<span>관리자 메뉴</span>
		<span>회원 메뉴</span>
		<span>배송관련 처리 메뉴</span>
	<%
	}else{%>
		<span>물품종류1</span>
		<span>물품종류2</span>
		<span>장바구니메뉴</span>
	<% } %>
	<%
	int point = (int)(Math.random()*1000+1);
	String grade = "";
	// 반복문 안에서 여러가지 로직에 의해서 처리 될 수 있다.
	if(point>=800){
		grade = "VVIP";
	}else if(point>=500){
		grade = "VIP";
	}else{
		grade = "일반고객";
	}
	%>
	<h2>
	포인트:<%=point %>, 고객등급:<%=grade %>
	</h2>
	<%--
	ex) 임의의 수를 1~10까지 발생해서 짝수일 때와 홀수일 때를 나누어,
	오늘은 운이 좋은 날입니다/오늘은 운이 안좋으시니 활동을 삼가하십시오
	라고 출력되게 하세엥
	 --%>
	 <%
	 int num = (int)(Math.random()*10+1);
	 String luck = "";
	 if(num%2==0){
		 luck = "오늘은 운이 좋은 날입니다";
	 }else{
		 luck = "오늘은 운이 안좋으시니 활동을 삼가하십시오";
	 }
	 %>
	 <h2>
	 짝/홀 여부:<%=num %>, 운세:<%=luck %>
	 </h2>
	 <%--
	 ex) 나이는 1~90임의로 나오게 하여
	 13세 이하 : 어린이 사이트입니다
	 ~18 : 청소년 사이트입니다
	 ~65 : 일반 사이트입니다.
	 65세 초과 : 노인을 위한 사이트 입니다
	 처리하세요
	  --%>
	 <%
	 int age = (int)(Math.random()*90+1);
	 %>
	 	<h2>해당 나이는 <%=age%>세</h2>
	 <%
	 if(age<=13){
	 %> 
	 	<h2>어린이 사이트입니다.</h2>
	 <%
	 }else if(age<18){
	 %>
	  	<h2>청소년 사이트입니다.</h2>
	 <%
	 }else if(age<65){
	 %>
	 	<h2>일반 성년 사이트입니다.</h2>
	 <%
	 }else{
	 %>	 
	  	<h2>노년을 위한 사이트입니다.</h2>
	 <%}
	 %>
</body>
</html>