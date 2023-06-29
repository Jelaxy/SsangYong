<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="com.google.gson.Gson"
	import="backweb.z01_vo.Code"   
	import="java.util.List"   
	import="backweb.a01_database.A04_PreparedDao" 
%>
<%
String title = request.getParameter("title");
if(title==null) title="";
String refnoS = request.getParameter("refno");
int refno = 0;
if(refnoS!=null && !refnoS.equals("")) refno = Integer.parseInt(refnoS);
	
A04_PreparedDao dao = new A04_PreparedDao();
Gson g = new Gson();
%>
<%=g.toJson(dao.getCodeList(title, refno))%>
