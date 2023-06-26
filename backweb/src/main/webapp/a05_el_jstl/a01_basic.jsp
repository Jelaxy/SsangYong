<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Insert title here</title>
</head>
<body>
<%--
# Expression language
1. jsp에서 사용가능한 새로운 스크립트 언어
	jsp 프로그램은 그동안 scriptlet, expression, declare형태로 사용했는데,
	변수 설정과 scope에 따를 처리를 하다보면 예외를 처리해야하고,
	scriptlet의 복잡성을 많은 에러가 발생할 가능성이 보였다.
	
2. 이에, 보단 null 예외를 줄이고, scope에 따른 변수설정을 효과적으로 처리하기 위해서 사용하는 언어를 jsp에서 지원하게 되었다.
3. el 사용과 기본코드
	1) el코드의 기본 형식
		el 코드는 scope에 의해 설정된 데아터를 가져올 때,
		기본의 getAttribute()로 가져오거나, 요청값을 처리할 때,
		화면단에서 처리해야 하는 데이터를 간편하게 ${@@}형식으로 처리할 수 있게 하였다.
		- 기본 변수 ${변수명}
		- 객체형데이터 ${변수명.property}
			변수명.get프로퍼티영()과 동일
			주의_ private 접근제어자인 속성이 아니고 getXXX()의 get을 빼고 소문자로 처리된 데이터이다.
			${m.name} ==> <%=m.getName()%> 동일
4. el의 주요기능
	1) jsp의 3가지 기본 객체의 범위에 따라 영역의 속성과 함께 변수로 지정
	2) 집합 객체에 대한 접근방법 제공
	3) 수치연산, 관계연산, 논리연산자 제공
	3) 자바 클래스의 매소드 호출 기능 제공
	5) 표현 언어만의 기본 객체 제공
	==> 간단한 구문 때문에 표현식 대신 사용
	el와 jstl을 사용하면 script(scriptlet, expression)을 사용하지 않을 수 있다.
		
 --%>
 <%
 	request.setAttribute("name","홍길동");
 	session.setAttribute("age",25);
 	
 	pageContext.setAttribute("pname","짱구 액자");
 	pageContext.setAttribute("price",5000);
 	pageContext.setAttribute("cnt",2);
 %>
    <div class="container mt-3">
    	<h2>이름:${name}</h2>
    	<%--
	    	String name=request.getAttribute("name")
	    	<%=name%>
    	 --%>
    	<h2 onclick="location.href='a02_el_session.jsp'">session범위 확인하러 가기</h2>
    	<%--
    	# a02_el_session.jsp
    	<h2>이름:${name}<h2>
    	<h2>이름:${age}<h2>
    	<%
    		int age = (Integer)session.getAttribute("age")
    		<%=age%>
    	%>
    	ex) 물건명, 기격, 갯수를 설정하고, el로 호출하여 아래 화면에서 출력하세요
    	
    	 --%>
    	 <h3>물건명:${pname}</h3>
    	 <h3>가격:${price}</h3>
    	 <h3>갯수:${cnt}</h3>
    	 <h3>총계:${price*cnt}</h3>
    	 <h3>비용등급:${price*cnt >= 3000}</h3>
    	 <h3>비용등급:${price*cnt >= 3000?'고비용':'저비용'}</h3>
    	       	
    </div>
</body>
</html>