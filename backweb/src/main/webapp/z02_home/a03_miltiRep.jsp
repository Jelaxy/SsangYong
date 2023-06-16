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
	String []priceS = request.getParameterValues("price");
	String []cntS = request.getParameterValues("cnt");
	int tot =0;
	if(priceS!=null){
		for(int idx=0;idx<priceS.length;idx++){
			int price = Integer.parseInt(priceS[idx]);
			int cnt = Integer.parseInt(cntS[idx]);
			out.print("<tr>");
			out.print("<th>"+(idx+1)+"</th>");
			out.print("<th>"+price+"</th>");
			out.print("<th>"+cnt+"</th>");
			out.print("<tr>");
			tot+=price*cnt;
		}
	}
	%>
	<tr><th colspan="2">총액</th><th><%=tot %></th></tr>
</body>
</html>