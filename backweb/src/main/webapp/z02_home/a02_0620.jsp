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
실습과제
[1단계:개념] 1. java와 js의 연동 처리할 때, 흐름 순서에 따른 코드 처리 순서를 기본예제와 함께 설명하세요
--%>

<%--
[1단계:코드] 2. java로 임의의 구구단을 만들어 html의 form에 출력하고, [ @@] x [@@   ]  정답입력[  ][정답확인]
              정답입력이 맞을시, 정답 그렇지 않을시 오답이 처리되게 하세요. java+js 연동
 --%>
<body>
	<%
	String gradeS = request.getParameter("grade");
	int grade = 0;
	if(gradeS!=null) grade = Integer.parseInt(gradeS);
			
	String cntS = request.getParameter("cnt");
	int cnt = 0;
	if(cntS!=null) cnt = Integer.parseInt(cntS);
	
	String totS = request.getParameter("tot");
	int tot= grade*cnt;
	if(gradeS!=null) grade = Integer.parseInt(gradeS);
	%>
	<script type="text/javascript">
	function gugu(){
		var grade = <%=grade%>
		var cnt = <%=cnt%>
		String isItRight = "";
	 	if(totS.equals(tot)){
	 		isItRight = "Y";
	 	}else{
	 		isItRight = "N";
	 	}
	}
	</script>
    <div class="container mt-3">
    	<h2>구구단 정답 확인</h2>
    	<form method="post">

         	<div class="mb-3 mt-3">
            <label for="grade">단수:</label>
            <input type="number" class="form-control" 
      	     id="grade" placeholder="단 입력" name="grade">
         	</div>

         	<div class="mb-3 mt-3">
            <label for="cnt">번호:</label>
            <input type="text" class="form-control" 
      	     id="cnt" placeholder="번호 입력" name="cnt">
         	</div>

         	<button type="submit" class="btn btn-primary">계산</button>
     	</form>
		<script type="text/javascript">
	 		var isReg = "<%=isItRight%>";
	 		if(isReg=='Y'){
	 			alert("정답입니다")
	 		}
	 		if(isReg=='N'){
	 			alert("오답입니다")
	 		}		
	
				document.querySelector("form").submit();
			} 
		</script>
		<%--
		# front back 연결 ㅋ도ㅡ
		1. jsp로 html이 만들어진 결과로
		2. 화면단에서 처리된다는 내용 기억
		
		
		 --%>
<%--
[1단계:코드] 3. salgrade 테이블을 확인하여, 해당 항목에 맞는 속성으로 form 화면을 구성하고, 입력 후, 확인시, 요청값 처리후,
      Salgrade 객체에 등록이 되어 출력되게 처리하세요.

 --%>			
			<%
			String gradeS2 = request.getParameter("grade2");
			int grade2 = 0;
			if(gradeS2!=null) grade2 = Integer.parseInt(gradeS2);
					
			String losalS = request.getParameter("losal");
			int losal = 0;
			if(losalS!=null) losal = Integer.parseInt(losalS);
			
			String hisalS = request.getParameter("hisalS");
			int hisal= grade*cnt;
			if(hisalS!=null) hisal = Integer.parseInt(hisalS);
			
			Salgrade s = new Salgrade(grade, losal, hisal);
			%>
		 	<h2>회원 등록</h2>
    	<form onsubmit="return checkValid()" method="post">
         	<div class="mb-3 mt-3">
            <label for="grade2">등급:</label>
            <input type="number" class="form-control" 
      	     id="grade2" placeholder="등급 입력" name="grade2">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="losal">최저급여:</label>
            <input type="number" class="form-control" 
      	     id="losal" placeholder="최저급여 입력" name="losal">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="hisal">최고급여:</label>
            <input type="number" class="form-control" 
      	     id="hisal" placeholder="최고급여 입력" name="hisal">
         	</div>
       	         	         	
         	<button type="submit" class="btn btn-primary">등록</button>
     	</form>
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>등급</th>
				    <th>최저</th>
				    <th>최고</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td><%=s.getGrade2()%></td>
			        <td><%=s.getLosal() %></td>
			        <td><%=s.getHisal() %></td>
			   	</tr>
		 	</tbody>
		</table> 	
    </div>
</body>
</html>