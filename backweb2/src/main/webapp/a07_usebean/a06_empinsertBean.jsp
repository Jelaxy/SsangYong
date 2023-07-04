<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Insert title here</title>
   
    <script src = "https://code.jquery.com/jquery-3.7.0.js" type="text/javascript"></script>
    
    <script type="text/javascript">
    	// window.onload와 동일한 메서드
    	$(document).ready( function(){
    		
    		$("h2").text("jquery 로딩 성공")
    	});
    </script>      
    
    
</head>
<body>

<jsp:useBean id="emp" class="z01_vo.Emp"/>
<jsp:useBean id="dao" class="a01_dao.A04_PreparedDao"/>
<jsp:setProperty property="*" name="emp"/>
     	<c:if test="${not empty emp.empno}">
     		${dao.insertEmp(emp)}
     	</c:if>
    <div class="container mt-3">
	  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  		<div class="container-fluid">    	
	    	<form method="post"  class="d-flex align-items-center" >
	            <input type="number" class="form-control me-2" 
	      	     id="empno" placeholder="사원번호 입력" name="empno"  aria-label="Search">
	      	    <input type="text" class="form-control me-2" 
	      	     id="ename" placeholder="이름 입력" name="ename"  aria-label="Search">
	      	    <input type="text" class="form-control me-2" 
	      	     id="job" placeholder="직책 입력" name="job"  aria-label="Search">
	      	    <input type="number" class="form-control me-2" 
	      	     id="mgr" placeholder="관리자 입력" name="mgr"  aria-label="Search">
	      	    <input type="text" class="form-control me-2" 
	      	     id="hiredateS" placeholder="입사일 입력" name="hiredateS"  aria-label="Search">
	      	    <input type="number" class="form-control me-2" 
	      	     id="sal" placeholder="급여 입력" name="sal"  aria-label="Search">
	      	    <input type="number" class="form-control me-2" 
	      	     id="comm" placeholder="보너스 입력" name="comm"  aria-label="Search">
	      	    <input type="number" class="form-control me-2" 
	      	     id="deptno" placeholder="부서번호 입력" name="deptno"  aria-label="Search">
	         	<button type="submit" class="btn btn-primary" 
	         		style="width:200px;">등록</button>
	     	</form>
	 	    </div>
	 	</nav>
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>사원번호</th>
				    <th>이름</th>
				    <th>직책</th>
				    <th>관리자</th>
				    <th>입사일</th>
				    <th>급여</th>
				    <th>보너스</th>
				    <th>부서번호</th>
		      	</tr>
		    </thead>
		    <tbody>
		    <c:forEach var="e" items="${dao.getEmpList()}">
			   	<tr  class="text-center">
			        <td>${e.empno}</td>
			        <td>${e.ename}</td>
			        <td>${e.job}</td>
			        <td>${e.mgr}</td>
			        <td>${e.hiredateS}</td>
			        <td>${e.sal}</td>
			        <td>${e.comm}</td>
			        <td>${e.deptno}</td>
			   	</tr>
			</c:forEach>
		 	</tbody>
		</table>      	
    </div>
</body>
</html>