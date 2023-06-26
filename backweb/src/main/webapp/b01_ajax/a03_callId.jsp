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
	// ex) 	a03_callId.jsp
	//		id:[	] [등록여부확인]
	//		z03_data.jsp
	//		himan,goodMan,higirl
	//		데이터와 동일 여부를 확인해서 없으면 등록가능, 있으면 등록된 아이디 입니다 처리
	document.addEventListener('keydown',
	function(event){
		if(event.keyCode === 13){
			event.preventDefault();
		};
	}, true);
	
	function ckIdKey(){
		if(event.keycode==13){
			ckID()
		}
	}
	 	function ckID(){
	 		var idVal = document.querySelector("#id").value
	 		var xhr = new XMLHttpRequest()
	 		xhr.open("get","z03_data.jsp",false)
	 		xhr.send()
	 		var arry = xhr.responseText.split(",")
	 		var hasId = false;
	 		arry.forEach(function(id){
	 		if(idVal == id){
	 			hasId = true;
	 		}
 		})
	 	if(hasId){
	 		alert("등록된 id 있음")
	 	}else{
	 		alert("등록 가능함") 			
	 	}
 	}
 		
</script>


<body>
    <div class="container mt-3">
    	<h2>사원정보 등록</h2>
    	<form action="" method="post">
    	    
         	<div class="mb-3 mt-3">
            <label for="id">아이디:</label>
            <input type="text" class="form-control" 
      	     id="id" placeholder="아이디 입력" name="id"
      	     onkeyup="ckIdKey()"
      	    >
         	</div>
         	<button type="button" onclick="ckId()" class="btn btn-success">
         		등록여부확인</button>
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