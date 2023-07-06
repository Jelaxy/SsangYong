<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String id = request.getParameter("id");

    if (id != null && !id.isEmpty()) {
        session.setAttribute("id", id);
        response.sendRedirect("myPage.jsp");
    } else {
        out.println("유효한 ID 값을 입력하세요.");
    }
%>
