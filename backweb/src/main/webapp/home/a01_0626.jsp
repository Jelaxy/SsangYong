<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.z01_vo.Person"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Insert title here</title>
</head>
<%--
# 조별 토론 및 실습과제
[1단계:개념확인] 1. 조별로 el 태를 활용한 session scope범위와 실제 코드에 대하여 알고 있는지 확인
            ajax를 처리하기 위해 필요한 기본 형식과 기본 데이터와 json데이터 가져오는 처리형식을 아는지 확인
            
    setAttribute("변수명",value)
    가져오는 방식은 ${변수명}
    
[1단계:코드] 2. el 태그를 이용하여 4가지 session scope의 범위를 기본 변수로 설정하여 호출해보자.
<%
	pageContext.setAttribute("pname1","짱구 액자");
	request.setAttribute("pname2","짱구 액자");
	session.setAttribute("pname3","짱구 액자");
	application.setAttribute("pname4","짱구 액자");
%>
	<h3>page:${pname1}</h3>
	<h3>request:${pname2}</h3>
	<h3>session:${pname3}</h3>
	<h3>application:${pname4}</h3>
	
[1단계:코드] 3. el을 이용하여 클래스 Person을 객체로 session scope로 설정하고 호출해 보자.
	1) import
	2)
	<%
	session.setAttibute("변수명", new 객체());
	ex) session.setAttribute("p01", new Person("서유림",26,"시흥"));
	%>
    <h4>이름:${p01.age}</h4>   	
    <h4>나이:${p01.age}</h4>   	
    <h4>주소:${p01.loc}</h4> 
[1단계:코드] 4. el을 이용하여 form으로 물품명과 가격과 갯수을 입력해서 해당 내용을 출력처리하자.
	    	<h2>물품정보</h2>
    	<form action="" method="post">
         	<div class="mb-3 mt-3">
            <label for="pname">물품명:</label>
            <input type="text" class="form-control" 
      	     id="pname" placeholder="물품명 입력" name="pname">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="price">가격:</label>
            <input type="number" class="form-control" 
      	     id="price" placeholder="가격 입력" name="price">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="cnt">갯수:</label>
            <input type="number" class="form-control" 
      	     id="cnt" placeholder="갯수 입력" name="cnt">
         	</div>
         	<button type="submit" class="btn btn-primary">등록</button>
     	</form>
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>물품명</th>
				    <th>가격</th>
				    <th>갯수</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td>${param.pname}</td>
			        <td>${param.price}</td>
			        <td>${param.cnt}</td>
			   	</tr>
		 	</tbody>
		</table>  
[1단계:코드] 5. ajax처리 순서를 기술하고, 서버에 선언된 데이터(하나데이터,배열데이터, json 데이터)를 동기적으로 가져오는 처리를 하여 화면에 할당하세요.
	1) XMLHttpRequest
	2) 옵션 설정 메서드
	3) 전송처리 메서드
	4) 서버에서 해당 자원을 전송해주는 데이터를 받는 속성
	5) 비동기식일 때, 처리하는 이벤트 및 이벤트 핸들러 함수
 --%>
<body>
<script type="text/javascript">
	function aData(){
		var xhr = new XMLHttpRequest()
		xhr.open("get","a01_0626_1.jsp",false) 
		xhr.send()
	 	document.querySelector("#a").innerText=xhr.responseText
	}
	function arryData(){
 		var xhr = new XMLHttpRequest()
 		xhr.open("get","a01_0626_2.jsp",false)
 		xhr.send()
	 	document.querySelector("#array").innerText=xhr.responseText
	}
	function jsonData(){
 		var xhr = new XMLHttpRequest();
 		xhr.open("get","z05_json2.jsp",false);
 		xhr.send();
 		var data = xhr.responseText;
 		var meObj = JSON.parse(data)
 		var tds = document.querySelectorAll("#json").innerText=xhr.responseText
 		tds[0].innerText = meObj.name
 		tds[1].innerText = meObj.age
 		tds[2].innerText = meObj.loc
	}
	
</script>
<div class="container mt-3">
	<h3 onclick="aData()">단일데이터 확인</h3>
	<h5 id="a"></h5>
	
	<h3 onclick="arryData()">복수데이터 확인</h3>
	<h5 id="array"></h5>
	
	<h3 onclick="jsonData()">json 확인</h3>
	<h5 id="json"></h5>
	
	
</div >
<%
	// session.setAttibute("변수명", new 객체());
	session.setAttribute("p01", new Person("서유림",26,"시흥"));
%>
    <h4>이름:${p01.age}</h4>   	
    <h4>나이:${p01.age}</h4>   	
    <h4>주소:${p01.loc}</h4>  
    
<%
	pageContext.setAttribute("pname1","짱구 액자");
	request.setAttribute("pname2","짱구 액자");
	session.setAttribute("pname3","짱구 액자");
	application.setAttribute("pname4","짱구 액자");
%>
	<h3>page:${pname1}</h3>
	<h3>request:${pname2}</h3>
	<h3>session:${pname3}</h3>
	<h3>application:${pname4}</h3>
	
    <div class="container mt-3">
    	<h2>물품정보</h2>
    	<form action="" method="post">
         	<div class="mb-3 mt-3">
            <label for="pname">물품명:</label>
            <input type="text" class="form-control" 
      	     id="pname" placeholder="물품명 입력" name="pname">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="price">가격:</label>
            <input type="number" class="form-control" 
      	     id="price" placeholder="가격 입력" name="price">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="cnt">갯수:</label>
            <input type="number" class="form-control" 
      	     id="cnt" placeholder="갯수 입력" name="cnt">
         	</div>
         	<button type="submit" class="btn btn-primary">등록</button>
     	</form>
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>물품명</th>
				    <th>가격</th>
				    <th>갯수</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td>${param.pname}</td>
			        <td>${param.price}</td>
			        <td>${param.cnt}</td>
			   	</tr>
		 	</tbody>
		</table>      	
    </div>
</body>
</html>