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

		<script>
			function ckVal(){
				return true;
			}
		</script>
    <div class="container mt-3">
    	<h2>권한에 따른 로그인</h2>
    	<form action="" onSubmit="return ckVal()" method="post">
    	    <div class="mb-3 mt-3">
            <label for="id">아이디:</label>
            <input type="text" class="form-control" 
      	     id="id" placeholder="아이디 입력" name="id" required>
         	</div>
         	<div class="mb-3 mt-3">
            <label for="auth">권한:</label>
            <select class="form-control" 
            onchange="document.querySelector('form').submit();"
      	     id="auth" name="auth" required>
      	     <option value="">=권한선택=</option>
			 <option>관리자</option>
			 <option>방문객</option>
			 <option>시용자1</option>
			 <option>사용자2</option>
			 <option>슈퍼사용자</option>
      	     </select>
         	</div>
     	</form>
		<%
		String auth = request.getParameter("auth");
		if(auth!=null){ //초기페이지와 구분하기 위해서 있음
			if(auth.equals("관리자")){
		%>
				<jsp:forward page="a10_admin.jsp"/> <%-- 관리자사이트 --%>
		<%	}else{%>   	
				<jsp:forward page="a11_user.jsp"/> <%-- 사용자사이트 --%>
		<%	}	
		}%>
    </div>
</body>
</html>