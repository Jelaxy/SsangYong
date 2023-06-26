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
<script type="text/javascript">
	// z05_json2.jsp 회원정보 json 데이터 선언
	// a05_memberInfo.jsp 회원정보 가져오기 클릭시, 테이블에 선언된 회원정보 가져와서 출력하기
	function callMem(){
 		var xhr = new XMLHttpRequest();
 		xhr.open("get","z05_json2.jsp",false);
 		xhr.send();
 		var memObj = JSON.parse(xhr.responseText)
 		var tds = document.querySelectorAll("tbody td")
 		tds[0].innerText = memObj.name
 		tds[1].innerText = memObj.age
 		tds[2].innerText = memObj.loc
 		tds[3].innerText = memObj.point
 		tds[4].innerText = memObj.grade
	}
</script>
<body>
    <div class="container mt-3">
        <form action="" method="post">
         	<button onclick="callMem()" type="button" class="btn btn-primary">회원 정보 가져오기</button>
		</form>
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>회원명</th>
				    <th>나이</th>
				    <th>주소</th>
				    <th>포인트</th>
				    <th>등급</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td></td>
			        <td></td>
			        <td></td>
			        <td></td>
			        <td></td>
			        <td></td>
			   	</tr>
		 	</tbody>
		</table>      	
    </div>
</body>
</html>