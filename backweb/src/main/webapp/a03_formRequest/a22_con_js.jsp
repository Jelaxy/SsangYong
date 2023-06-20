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
<%
String pname = request.getParameter("pname");
if(pname==null) pname="";

String priceS = request.getParameter("price");
int price = 0;
if(priceS!=null) price = Integer.parseInt(priceS);

String cntS = request.getParameter("cnt");
int cnt = 0;
if(cntS!=null) cnt = Integer.parseInt(cntS);

int tot = price*cnt;
%>

<script type="text/javascript">
	var name = "<%=pname%>"
	var price = <%=price%>
	var cnt = <%=cnt%>
	
</script>
    <div class="container mt-3">
    	<h2 onclick="call01()">물건정보 등록</h2>
    	<script type="text/javascript">
	    	function call01(){
	    		alert("서번단에서 온 이름"+name)
	    	}
    	</script>
    	<form>
         	<div class="mb-3 mt-3">
            <label for="pname">물건명:</label>
            <input type="text" class="form-control" 
      	     id="pname" placeholder="물건명 입력" name="pname">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="price">가격:</label>
            <input type="number" class="form-control" 
      	     id="price" placeholde="가격 입력" name="price">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="cnt">갯수:</label>
            <input type="number" class="form-control" 
      	     id="cnt" placeholder="갯수 입력" name="cnt">
         	</div>
        <button type="submit" class="btn btn-primary">결제</button>
     	</form>
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>물건명</th>
				    <th>가격</th>
				    <th>갯수</th>
				    <th>총액</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td><%=pname %></td>
			        <td><%=price %></td>
			        <td><%=cnt %></td>
			        <td><%=tot %></td>
			   	</tr>
		 	</tbody>
		</table>      	
    </div>
</body>
</html>