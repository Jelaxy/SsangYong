<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

   
		<%
		String nName = request.getParameter("nName");
		String name = request.getParameter("name");
		String bDay = request.getParameter("bDay");
		String mail = request.getParameter("mail");
		String pNum = request.getParameter("pNum");
		
		String responseText = "프로필이 업데이트되었습니다."; // 예시 응답 메시지
		response.getWriter().write(responseText);
		%>






