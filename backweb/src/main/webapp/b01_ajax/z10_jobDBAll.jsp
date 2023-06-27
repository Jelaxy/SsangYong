<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="backweb.a01_database.A04_PreparedDao"
	import="backweb.z01_vo.Job"  
	import="java.util.Map"  
	import="java.util.HashMap"  
%>
<%
//a10_DBAjax.jsp?title=Clerk&min_sal1=2000&min_sal2=4000
String title = request.getParameter("title");
if(title==null) title="";
String min_sal1 = request.getParameter("min_sal1");
if(min_sal1==null) min_sal1="0";
String min_sal2 = request.getParameter("min_sal2");
if(min_sal2==null) min_sal2="999999";

A04_PreparedDao dao = new A04_PreparedDao();

Map<String, String> map = new HashMap<String, String>();
map.put("title","");
map.put("min_sal1,","0");
map.put("min_sal2","999999"); 
%>
<%--
	<% for(Job j:dao.getJobs()){%>
		<tr  class="text-center">
			<td><%=j.getJobID() %></td>
			<td><%=j.getJobTitle() %></td>
			<td><%=j.getMinSal() %></td>
			<td><%=j.getMaxSal() %></td>
		</tr>
--%>
	 <% for(Job job:dao.getJob(map)){%>
	<tr  class="text-center">
		<td><%=job.getJobID() %></td>
		<td><%=job.getJobTitle() %></td>
		<td><%=job.getMinSal() %></td>
		<td><%=job.getMaxSal() %></td>
	</tr> 	
<%} %>
