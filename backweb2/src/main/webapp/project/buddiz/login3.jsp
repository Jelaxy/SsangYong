<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="backendWeb.buddiz.dao.Buddiz_dao"
	import="backendWeb.buddiz.vo.BUser"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%
   request.setCharacterEncoding("UTF-8");
   Buddiz_dao dao = new Buddiz_dao();   
   String id =request.getParameter("id");   
   String pass =request.getParameter("pass");
   String b_day =request.getParameter("b_day");
   String n_name=request.getParameter("n_name");
   String name=request.getParameter("name");
   String mail=request.getParameter("mail");
   String p_num=request.getParameter("p_num");
   
   BUser user = dao.login(id, pass);
   
   if (user != null) {
       session.setAttribute("user", user);
       response.sendRedirect("Main.jsp");
       response.sendRedirect("myPage.jsp");
   } else {%>
       <script>
           alert("로그인실패!.");
           window.location.href = "home.jsp";
       </script>
	<%
	   }
	%>
	
   
</body>
</html>