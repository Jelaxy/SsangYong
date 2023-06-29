<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="com.google.gson.Gson"
	import="backendWeb.buddiz.vo.BUser"   
	import="java.util.List"   
	import="backendWeb.buddiz.dao.a01_mypageDao" 
%>

<%
String ID = request.getParameter("ID");
if(ID==null) ID="";

a01_mypageDao dao = new a01_mypageDao();
Gson g = new Gson();
%>
<%=g.toJson(dao.updateBUser())%>