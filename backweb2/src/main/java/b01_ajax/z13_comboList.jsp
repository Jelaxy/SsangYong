<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="com.google.gson.Gson"
	import="backweb.z01_vo.Code"   
	import="java.util.List"   
	import="a01_dao.A04_PreparedDao" 
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
<%--
# 상세 데이터 ajax 가져오기
1. 내용
	해당 list 내용 중에 특정 데이터 row단위로 클릭시
	상세 데이터를 ajax로 가져와서 form 화면에 출력한다.
2. 처리순서
	1) 클릭시 , 해당데이터를 요청값을 만들어 ajax 처리한다.(핸들러함수 선언)
	2) 단일 데이터 가져오는 dao 생성
	3) 단일 데이터 가져와서 json데이터 return하는 servlet 생성
	4) ajax 요청 처리로 servlet 호출, ajax 처리
 --%>