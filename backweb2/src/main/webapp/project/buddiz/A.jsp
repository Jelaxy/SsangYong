<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.List" 
    import="backendWeb.buddiz.vo.Post"
    import="backendWeb.buddiz.dao.MyPostList"
    import="backendWeb.buddiz.dao.BuddyPost"
%>
  <%
  // String id = (String) session.getAttribute("id");
  String id = "syl01";
  MyPostList dao2 = new MyPostList();
  List<Post> posts = dao2.getMyPosts(id);

  for (Post post : posts) { %>
  <%=post.getP_text() %>
  <%=post.getP_time() %>
    <% } %>