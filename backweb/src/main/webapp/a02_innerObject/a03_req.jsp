<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("name");
String korS = request.getParameter("kor");
String eng = request.getParameter("eng");
int kor = 0;
if(korS!=null){
	kor=Integer.parseInt(korS);
}
%>
	<h2>학생 성적 조회</h2>
	<h3>이름:<%=name %> </h3>
	<h3>국어:<%=kor+10 %> </h3>
	<%--
	<h3>수학:<%=eng %> </h3> --%>
</body>
</html>