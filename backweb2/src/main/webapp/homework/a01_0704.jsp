<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
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
    
<%-- 
[확인과제]
[개념] 1. useBean 기본 속성을 정리하고, 활용방법을 예시를 통해서 정리하세요
useBean은 자바빈의 액션태그로 속성으로는 id, class, scope가 있다
id : JSP페이지에서 자바빈 객체에 접근 할 때 사용하는 이름이다.
class : 패키지 이름을 포함한 자바빈 클래스의 완전한 이름을 입력
scope : 자바빈 객체가 저장될 영역을 지정. page, request, session, application 중 하나를 값으로 갖는다
활용 방법
1. 사용 객체를 class 선언
	패키지명과 클래스명 복사
2. jsp:useBean class 속성에 할당
3. setProperty로 데이터 저장
4. gerProperty나 el로 데이터 호출
--%>
 <jsp:useBean id="pro" class="z01_vo.Product" scope="session"/>
 <jsp:setProperty property="pname" name="pro" value="김밥" />
 ${pro.setPrice("2000")}
 <jsp:getProperty property="pname" name="pro"/>
 <h2>${pro.price}</h2>
 
<%-- 
[확인] 2 useBean을 이용하여 구구단 수학문제를 입력(사칙연산혼합)하고 등록리스트를 출력하게 하세요
--%>

<jsp:useBean id="gu" class="z01_vo.Product" scope="session"/>
<jsp:setProperty property="num1" name="gu" value="(int)(Math.random()*9+1)"/>
${gu.setNum2((int)(Math.random()*9+1))}
<jsp:getProperty property="num1" name="gu"/>
<h2>${gu.num2}</h2>

<%-- 
[확인] 3 useBean을 이용하여 id, pass입력하여 인증여부를 Dao에서 확인하세요(A05_MemberDao.java)
--%>

<jsp:useBean id="depart" class="z01_vo.Member"/>
<jsp:useBean id="mem" class="a01_dao.A05_MemberDao" scope="session"/>
<jsp:setProperty property="id, pass" name="mem"/>
	<c:if test="${not empty mem.id and mem.pass}">
		${list.add(mem)}
	</c:if>
      <table class="table table-striped table-hover">
         <thead class="table-success">
               <tr class="text-center">
                <th>ID</th>
                <th>Pass</th>
                <th>인증여부</th>
               </tr>
          </thead>
          <tbody>
          <c:forEach var="m" items="${list}">
               <tr class="text-center">
                  <td>${m.id }</td>
                 <td>${m.pass }</td>
                 <td>${m.name }</td>
               </tr>
           </c:forEach>
          </tbody>
      </table>

<%-- 
[확인] 4 useBean을 이용하여 insertDepartments메서드로 등록하고 출력하세요(A04_PreparedDao.java)
--%>
	  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  		<div class="container-fluid">    	
	    	<form method="post"  class="d-flex align-items-center" >
	            <input type="number" class="form-control me-2" 
	      	     id="department_id" placeholder="입력" name="department_id"  aria-label="Search">
	      	    <input type="text" class="form-control me-2" 
	      	     id="pass" placeholder="입력" name="pass"  aria-label="Search">
	      	    <input type="text" class="form-control me-2" 
	      	     id="department_name" placeholder="입력" name="department_name"  aria-label="Search">
	      	    <input type="number" class="form-control me-2" 
	      	     id="manager_id" placeholder="입력" name="manager_id"  aria-label="Search">
	      	    <input type="number" class="form-control me-2" 
	      	     id="department_id" placeholder="입력" name="department_id"  aria-label="Search">
	         	<button type="submit" class="btn btn-primary" 
	         		style="width:200px;">등록</button>
	     	</form>
	 	    </div>
	 	</nav>
	 	<jsp:useBean id="depart" class="z01_vo.Department"/>
	 	<jsp:setProperty property="*" name="depart"/>
	 	<jsp:useBean id="dao" class="a01_dao.A04_PreparedDao"/>
	 	<c:if test="${not empty depart.id}">
	 		${dao.insertDepartments(depart)}
	 	</c:if>
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>department_id</th>
				    <th>department_name</th>
				    <th>manager_id</th>
				    <th>location_id</th>
		      	</tr>
		    </thead>
		    <tbody>
		    	<c:forEach var="m" items="${dao.getDepartment()}">
			   	<tr  class="text-center">
			        <td>${m.department_id }</td>
			        <td>${m.department_name }</td>
			        <td>${m.location_id }</td>
			        <td>${m.location_id }</td>
			   	</tr>
			   	</c:forEach>
		 	</tbody>
		</table>  

</body>
</html>