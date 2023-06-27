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
<%--
# 실습과제
[1단계:개념] 1. ajax처리 순서를 기술하세요(h01_show.jsp vs z11_data.jsp 두 페이지간 기준)
1. z11_data.jsp에 dao와 DB import
2. h01_show.jsp tr/td로 위 z11을 받을 html과 js 코드 작성하고 클라이언트 단으로 전송

[1단계:코드] 2. ajax로 [화면호출]로 서버에 있는 <h3>반가워요</h3> 처리

[1단계:코드] 3. ajax로 물건명[  ]가격[   ][전송 및 화면호출]로 서버에 있는 <h3>@@는 @@@원입니다.</h3> 
[1단계:코드] 4. ajax로 [데이터화면호출]로 서버에 table형식의 화면 호출(DAO - public List<Manager> getManager())
[1단계:코드] 5. ajax로 id[  ]pass[  ] [로그인]  table형식으로 회원이 없던지 table로 출력
 --%>
 <%--[1단계:코드] 2. ajax로 [화면호출]로 서버에 있는 <h3>반가워요</h3> 처리 --%>
     <script>
		function getSyn(page){
			var xhr = new XMLHttpRequest();
			xhr.open("get",page,false);
			xhr.send()
			return xhr.responseText;
		} 
    	function callAjax(){
    		var show = document.querySelector("#button")
    		show.innerHTML = getSyn("z01_0627_1.jsp");
    	}
    </script>
    <div class="container mt-3">
        <form action="" method="post">
         	<button onclick="callAjax()" type="button" class="btn btn-primary">ajax호출</button>
     	</form>
<%-- [1단계:코드] 3. ajax로 물건명[  ]가격[   ][전송 및 화면호출]로 서버에 있는 <h3>@@는 @@@원입니다.</h3> --%>
	<script type="text/javascript">
		function ajaxCall(){
			var pname = document.querySelector("#pname").value
			var price = document.querySelector("#price").value
			var page = "z01_0626_2.jsp?pname="+pname
					+"&price="+price
			var tbody= document.querySelector("tbody");
			tbody.innerHTML = htmlCode;
		}
	</script>
    	<h2>물건정보 출력</h2>
    	<form action="" method="post">
         	<div class="mb-3 mt-3">
            <label for="pname">물건명:</label>
            <input type="number" class="form-control" 
      	     id="pname" placeholder="물건명 입력" name="pname">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="price">가격:</label>
            <input type="number" class="form-control" 
      	     id="price" placeholder="가격 입력" name="price">
         	</div>
         	<button onclick="ajaxCall()" type="button" class="btn btn-primary">전송 및 화면호출</button>
     	</form>
		    <tbody>
		 	</tbody>
<%-- 1단계:코드] 5. ajax로 id[  ]pass[  ] [로그인]  table형식으로 회원이 없던지 table로 출력 --%>
    <script type="text/javascript">
		function idCheck(){
			var pname = document.querySelector("#pname").value
			var price = document.querySelector("#price").value
			var page = "z01_0626_2.jsp?pname="+pname
					+"&price="+price
			var tbody= document.querySelector("tbody");
			tbody.innerHTML = htmlCode;
		}
	</script>
    	<form action="" method="post">
         	<div class="mb-3 mt-3">
            <label for="id">아이디:</label>
            <input type="number" class="form-control" 
      	     id="id" placeholder="아이디 입력" name="id">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="pass">패스워드:</label>
            <input type="number" class="form-control" 
      	     id="pass" placeholder="패스워드 입력" name="pass">
         	</div>
         	<button onclick="idCheck()" type="button" class="btn btn-primary">전송 및 화면호출</button>
     	</form>
    </div>
</body>
</html>