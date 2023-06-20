<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="<%=request.getParameter("color01")%>">
	<h2>다양한 form 요소 객체 받기</h2>
	<h3>숫자:<%=request.getParameter("num01") %></h3>
	<h3>색상:<%=request.getParameter("color01") %></h3>
	<h3>날짜:<%=request.getParameter("date01") %></h3>
	<%--
	# 날짜형 데이터의 처리
	1. emp 기준
		1) 요청값을 처리되는 데이터느 모두 문자열이기에
			emp클래스에 String hiredateS;
			라고 문자열을 바들 수 있는 속성을 만들고
			emp 요청값에 의해 문자열을 입력받은 후 dao처리 to_date(?,'YYYY-MM-DD')
			입력되어 있는 데이터 형식으로 문자열을 날짜형으로 변호나 처리하게 하세요
			INSERT EMP(HIREDATE) VALUES(to_date(?,'YYYY-MM-DD'))
			pstmt.set(@@, emp.getHiredateS());
	 --%>
</body>
</html>