<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="com.google.gson.Gson"
	import="backweb.z01_vo.Code"   
	import="java.util.List"   
	import="backweb.a01_database.A04_PreparedDao" 
%>
<%
String title = request.getParameter("title");
if(title==null)title="";
A04_PreparedDao dao = new A04_PreparedDao();
Gson g = new Gson();
%>
<%=g.toJson(dao.getCodeList(title))%>
<%
String dname = request.getParameter("dname");
String loc = request.getParameter("loc");
A04_PreparedDao dao2 = new A04_PreparedDao();
Gson gson = new Gson();
%>
<%=gson.toJson(dao2.getCodeList(dname))%>