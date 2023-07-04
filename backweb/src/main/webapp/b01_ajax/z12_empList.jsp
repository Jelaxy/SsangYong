<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="com.google.gson.Gson"
	import="backweb.z01_vo.Emp"   
	import="java.util.List"   
	import="backweb.a01_dao.A04_PreparedDao" 
%>

<%
String ename = request.getParameter("ename");
if(ename==null) ename ="";
String job = request.getParameter("job");
if(job==null) job ="";
A04_PreparedDao dao = new A04_PreparedDao();
List<Emp> emplist = dao.getEmpList(ename, job);
Gson gson = new Gson();
%>
<%=gson.toJson(emplist)%>