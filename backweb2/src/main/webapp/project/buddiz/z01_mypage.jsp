<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.List" 
    import="backendWeb.buddiz.vo.Post"
    import="backendWeb.buddiz.dao.MyPostList"
    import="backendWeb.buddiz.dao.BuddyPost"
    import="java.util.Date"
%>

<%
String id = (String) session.getAttribute("id");

if (id != null) {
    request.setAttribute("id", id);
    request.getRequestDispatcher("mypage.jsp").forward(request, response);
} else {
    out.println("유저 id를 가져올 수 없습니다.");
}
%>
