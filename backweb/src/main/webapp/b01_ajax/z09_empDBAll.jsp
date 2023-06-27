<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="backweb.a01_database.A04_PreparedDao"
	import="backweb.z01_vo.Emp"    
%>
		    <% 
		    A04_PreparedDao dao = new A04_PreparedDao();
		    String ename = request.getParameter("ename");
		    String job = request.getParameter("job");
		    for(Emp e : dao.getEmpList(ename,job))
		    %>
				<%for(Emp e:dao.getEmpList()){ %>
			   	<tr  class="text-center">
			        <td><%=e.getEmpno() %></td>
			        <td><%=e.getEname() %></td>
			        <td><%=e.getJob() %></td>
			        <td><%=e.getMgr() %></td>
			        <td><%=e.getHiredateS() %></td>
			        <td><%=e.getSal() %></td>
			        <td><%=e.getComm() %></td>
			        <td><%=e.getDeptno() %></td>
			   	</tr>
			   	<%}%>    	
