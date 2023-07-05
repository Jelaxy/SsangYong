<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.google.gson.Gson"
    import="java.util.*"
    import="backendWeb.buddiz.dao.a01_mypageDao"
    import="backendWeb.buddiz.vo.Post"
    %>
    
    
    <%
a01_mypageDao dao = new a01_mypageDao();
List<Post> postList =dao.getPostList();
Gson gson = new Gson();

%>

<%=gson.toJson(postList) %>
