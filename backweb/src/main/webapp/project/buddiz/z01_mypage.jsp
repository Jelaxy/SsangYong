<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.List" 
    import="backendWeb.buddiz.vo.Post"
    import="backendWeb.buddiz.dao.MyPostList"
    import="backendWeb.buddiz.dao.BuddyPost"
    import="java.util.Date"
%>
<%
String id = request.getParameter("id");

BUser user = dao.login(id, pass);


HttpSession session = request.getSession();
session.setAttribute("id", id);


%>