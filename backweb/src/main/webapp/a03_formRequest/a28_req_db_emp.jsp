<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.z01_vo.Emp"
    import="backweb.a01_database.A04_PreparedDao"%>
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
    	<%--
    	ex) 사원정보를 등록하고, 등록된 내용을 출력한느 처리를 하세요
empno, ename, job, hiredate, sal, comm, deptno
    	 --%>
    	 <%
    	 boolean insSuc = false;
    	 String empnoS = request.getParameter("empno");
    	 int empno = 0;
    	 if(empnoS!=null) empno = Integer.parseInt(empnoS);
    	 
    	 String ename = request.getParameter("ename");
    	 
    	 String job = request.getParameter("job");
    	 
    	 String hiredateS = request.getParameter("hiredateS");
    	 
    	 String salS = request.getParameter("sal");
    	 Double sal = 0.0;
    	 if(salS!=null) sal = Double.parseDouble(salS);
    	 
    	 A04_PreparedDao dao = new A04_PreparedDao();
    	 dao.insertEmp(new Emp());
    	 
    	 %>
    	<h2>사원정보 등록</h2>
    	<form action="" method="post">
         	<div class="mb-3 mt-3">
            <label for="empno">사원번호:</label>
            <input type="number" class="form-control" 
      	     id="empno" placeholder="사원번호 입력" name="empno">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="ename">사원명:</label>
            <input type="text" class="form-control" 
      	     id="ename" placeholder="사원명 입력" name="ename">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="job">직책:</label>
            <input type="text" class="form-control" 
      	     id="job" placeholder="직책 입력" name="job">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="hiredateS">입사일:</label>
            <input type="text" class="form-control" 
      	     id="hiredateS" placeholder="입사일 입력" name="hiredateS">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="sal">급여:</label>
            <input type="text" class="form-control" 
      	     id="sal" placeholder="급여 입력" name="sal">
         	</div>
         	<button type="submit" class="btn btn-primary">등록</button>
     	</form>
    	 
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>사원번호</th>
				    <th>사원명</th>
				    <th>직책</th>
				    <th>입사일</th>
				    <th>급여</th>
		      	</tr>
		    </thead>
		    <tbody>
		    <%
		    Map<String, String> sch = new HashMap<String, String>();
		    System.out.println(sch.get("name"));
		    System.out.println(sch.get("minSal"));
		    System.out.println(sch.get("maxSal"));
		    for(Emp e:dao.getEmpList(sch)) %>
			   	<tr  class="text-center">
			        <td><%=empno %></td>
			        <td><%=ename %></td>
			        <td><%=job %></td>
			        <td><%=hiredateS %></td>
			        <td><%=sal %></td>
			   	</tr>
		 	</tbody>
		</table>      	
    </div>
</body>
</html>