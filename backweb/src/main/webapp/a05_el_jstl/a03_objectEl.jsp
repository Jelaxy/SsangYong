<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.z01_vo.Member"
    import="backweb.z01_vo.Person"
    import="backweb.z01_vo.Job_History"
 %>
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
	session.setAttribute("mem", new Member("himan","7777","홍길동","관리자",3000));
	session.setAttribute("p01", new Person("홍길동",25,"서울"));
	session.setAttribute("jobH", new Job_History(2304,"2022-10-23","2023-11-23","30",20));
%>
    <div class="container mt-3">
    	<h2>el 활용</h2>
    	<h4>이름:${p01.name}</h4>
    	<%-- p01.name에서 name은 속성이 아니다. vo 객체 안에 필드 name이 아니라 getName
    		 p01.getXXX를 가져오는 것임 --%>
    	<h4>나이:${p01.age}</h4>   	
    	<h4>주소:${p01.loc}</h4>  
    	<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>아이디</th>
				    <th>패스워드</th>
				    <th>이름</th>
				    <th>권한</th>
				    <th>포인트</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td>${mem.id}</td>
			        <td>${mem.pass}</td>
			        <td>${mem.name}</td>
			        <td>${mem.auth}</td>
			        <td>${mem.point}</td>
			   	</tr>
		 	</tbody>
		</table>  	
    	<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>사원id</th>
				    <th>시작일</th>
				    <th>종료일</th>
				    <th>직책id</th>
				    <th>부서id</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td>${jobH.employeeId}</td>
			        <td>${jobH.startDate}</td>
			        <td>${jobH.endDate}</td>
			        <td>${jobH.jobId}</td>
			        <td>${jobH.departmentId}</td>
			   	</tr>
		 	</tbody>
		</table>  
    </div>
</body>
</html>