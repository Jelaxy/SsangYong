<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Insert title here</title>
</head>
<body>
    <div class="container mt-3">
    <%    
    Integer num01 = (Integer) session.getAttribute("num01");
    if (num01 == null) {      
        num01 = 0;
    } else {       
        num01++;
    }
    session.setAttribute("num01", num01);
%>
  <table class="table table-striped table-hover">      
          <tbody>                              
               <tr  class="text-center">
                 <td onclick="location.href='a01_session.jsp'"><%=session.getAttribute("num01")%>(확인하기)</td>                
               </tr>
               
          </tbody>
  </table>      	
    </div>
</body>
</html>