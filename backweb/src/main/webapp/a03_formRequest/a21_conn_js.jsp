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
<%--
# front단과 backend단 연결처리
1. 프로그램이 처리되는 흐름
	1) 요청(요청값) url로 프론트 ==> 서브단에 특정 자원(jsp) 요청값 받아서 ==> java+hrml 코드 처리해서 html만들어서 ==> 클라이언트에 html(html+css+js)를 전달 ==>
		html을 받아서 브라우저에서 프로그램이 랜더링(해석) 출력
	2) 위 흐름을 감안하여 jsp를 구현한다.
	# form화면의 경우
	1. 초기페이지 호출(html/jsp)
		url로 서버에서 전달
	2. 초기페이지에서 입력을 하고 , 다시 서버호출
		요청값_ jsp를 허출
	3. 서버에서는 해당 jsp페이지에서 요청값을 받아서 처리
	4. html로 클라이언트에 전달
	5. js가 있으면 이벤트에서 만들어진 데이터를 처리
	3) 특히 화면에 dOM객체를 호출하여 이벤트 핸들러 처리하거나, 호출할 때는 반드시 window.onload=function(){}안에 처리하거나 가장 안에 
2. 단계별 처리
	1) backend에서 넘겨준 변수,, js에서 처리
	2) 요청값을 넘겨서 js 코드를 만든 후, 처리
	3) 기타 DB 연동처리를 js 코드 처리(DAO처리 후 진행)
 --%>
<%
	String name="홍길동";
	int age = 25;
	boolean isAdult = age>=18;
%>
<script type="text/javascript">
	var name = "<%=name%>"
	var age = <%=age%>
	var isAdult = <%=isAdult%>
	alert("이름은 "+name)
	alert("나이는 "+age)
	if(isAdult){
		alert('성년')
	}else{
		alert('미성년')
	}
	// 다시 서버에 넘기는 방법??
	// form 객체아니면 query string 전달
	// 다시 서버에서 받아야 함
	// ex) a22_con_js.jsp
	// js에 해당 내용 할당 후
	// 총계와 함께 50000이상 고가 그 외 저가로 출력
</script>

<body>
    <div class="container mt-3">
    	<h2 onclick="call()">사원정보 등록</h2>
    	
    	<script type="text/javascript">
	    	function call(){
	    		alert("서번단에서 온 이름"+name)
	    	}
    	</script>
    	
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
         	<button type="submit" class="btn btn-primary">등록</button>
     	</form>
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>Firstname</th>
				    <th>Lastname</th>
				    <th>Email</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td>John</td>
			        <td>Doe</td>
			        <td>john@example.com</td>
			   	</tr>
		 	</tbody>
		</table>      	
    </div>
</body>
</html>