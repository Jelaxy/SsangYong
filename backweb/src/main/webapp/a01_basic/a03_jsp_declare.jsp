<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
String pname="자유시간";
int price = 3000;
int cnt =3;
String getProdInfo(){
	return "상품명:"+pname+"시장가:"+price+"갯수"+cnt;
}
String getProdInfo(int cnt){
	return pname+"("+price*cnt+")";
}
%>
<h2>메서드 호출<%=getProdInfo() %></h2>
<h2>메서드 호출<%=getProdInfo(5) %></h2>
</body>
</html>