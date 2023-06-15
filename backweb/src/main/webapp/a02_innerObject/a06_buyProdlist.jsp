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
String pnames[] = request.getParameterValues("pnames");
String prices[] = request.getParameterValues("prices");
int tot=0;
if(pnames!=null){
	for(int idx=0; idx<pnames.length; idx++){
		out.print("<tr>");
		out.print("<th>"+(idx+1)+"</th>");
		out.print("<th>"+pnames[idx]+"</th>");
		out.print("<th>"+prices[idx]+"</th>");
		out.print("</tr>");
		tot+=Integer.parseInt(prices[idx]);
	}
}
%>
<tr><th colspan=2></th></tr>
</body>
</html>