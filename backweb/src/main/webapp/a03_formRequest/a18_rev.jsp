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
	<%
    String sname = request.getParameter("sname");
    if(sname==null) sname="";
    
    String korS = request.getParameter("kor");
    int kor = 0;
    if(korS!=null) kor = Integer.parseInt(korS);
    
    String engS = request.getParameter("eng");
    int eng = 0;
    if(engS!=null) eng = Integer.parseInt(engS);
    
    String mathS = request.getParameter("math");
    int math = 0;
    if(mathS!=null) math = Integer.parseInt(mathS);
    int tot = kor*eng*math;
    int avg = tot/3;
	%>
    <div class="container mt-3">
       <h2>사원정보 등록</h2>
       <table class=" table table-stripe table-hover">
          <thead class="table-success">
               <tr class="text-center">
                 <th>이름</th>
                 <th>국어</th>
                 <th>영어</th>
                 <th>수학</th>
                 <th>총합</th>
                 <th>평균</th>
               </tr>
          </thead>
          <tbody>
               <tr class="text-center">
                 <td><%=sname %></td>
                 <td><%=korS %></td>
                 <td><%=engS %></td>
                 <td><%=mathS %></td>
                 <td><%=tot %></td>
                 <td><%=avg %></td>
               </tr>
               <tr class="text-center">
                 <td><%=sname %></td>
                 <td><%=korS %></td>
                 <td><%=engS %></td>
                 <td><%=mathS %></td>
                 <td><%=tot %></td>
                 <td><%=avg %></td>
               </tr>
          </tbody>
        </table>         
     </div>
</body>
</html>