<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Insert title here</title>
</head>
<body>

    <div class="container mt-3">
    <h2>사원정보 등록</h2>
    <form action="/">
         <div class="mb-3 mt-3">
            <label for="empno">사원번호:</label>
            <input type="number" class="form-control" 
              id="empno" placeholder="사원명 입력" name="empno">
         </div>
         <button type="submit" class="btn btn-primary">등록</button>
     </form>
  </div>
<%--
실습과제
[1단계:개념] 1. 요청값과 다중데이터 처리, form 형식 처리, form의 여러가지 형식에 따른 처리를 조원들과 함께 먼저 정리후 아래 문제를 풀어 보세요.
	
[1단계:코드] 2. form형식으로 다중 처리하는 예제를 아래 3가지 형식으로 선언하고 다음 페이지에 출력하세요
   1) 구매할 물건명 입력(type=text)
   2) 결재할 물건의 가격(type=checkbox) : 선택된 것만
   3) select로 구매할 물건의 가격 : ctrl로 선택된 것만
[1단계:코드] 3. bootstrap형식으로 회원등록 화면 form 만들고, 등록시, 요청값 받아 VO객체로 생성 및 출력한 내용을 처리하세요.
 --%>
   1) 구매할 물건명 입력(type=text)
      <%  String pname = request.getParameter("pname");
		    if(pname==null) pname="";
		   Product p = new Product(pname);
	  %>
	   <div class="input-group mb-3">
        <span class="input-group-text">상품명</span>
        <input type="text" class="form-control" value="<%=p.getPname()%>">
      </div>
   2) 결재할 물건의 가격(type=checkbox) : 선택된 것만
   <%
    String[] prices = {"3000","4900","1600","5000"};
    %>
    <div>
      <label for="price">가격</label>
      <label>
      <%for(String[] price:prices){ %>
      <input type="radio"
          	value="<%=price[0]%>" name="deptno"> <%=price[1] %>
      <%} %>
      </label>
    </div>
    <%
    String priceS = request.getParameter("price");
	int price = 0;
	if(priceS!=null) price = Integer.parseInt(priceS);
	%>
   3) select로 구매할 물건의 가격 : ctrl로 선택된 것만
   	<select name="price" multiple>
	   		<%for(String price:prices){ %>
	   		<option><%=price+"[selected]"%></option>
	   		<%}%>    			
   	</select>  	
	<%
	String prices[] =  request.getParameterValues("price");
	for(int idx=0;idx<prices.length;idx++){
		if(prices[idx]!=null && !prices[idx].equals(""))
			out.print("<h3>"+(idx+1)+") "+prices[idx]+"</h3>");
	}
	%>
[1단계:코드] 3. bootstrap형식으로 회원등록 화면 form 만들고, 등록시, 요청값 받아 VO객체로 생성 및 출력한 내용을 처리하세요.
	<body>
	<div class="container mt-3">
 <form action="a13_insertEmp.jsp">
 	<h2>사원정보 등록 form</h2>
    <div class="mb-3 mt-3">
      <label for="id">멤버번호</label>
      <input type="text" class="form-control" id="id" placeholder="멤버번호 입력" name="id">
    </div>
    <div class="mb-3 mt-3">
      <label for="pass">비밀번호</label>
      <input type="text" class="form-control" id="pass" placeholder="비밀번호 입력" name="pass">
    </div>
    <div class="mb-3">
      <label for="name">회원명</label>
      <input type="text" class="form-control" id="name" placeholde="회원명 입력" name="name">
    </div>
 </form>
</body>

<body>
    <div class="container mt-3">
    	<h2>등록 내역</h2>
		  <table class="table">
		    <thead class="table-success">
		      <tr>
		        <th>멤버번호</th>
		        <th>비밀번호</th>
		        <th>회원명</th>

		      </tr>
		    </thead>
		    <%  
		    String id = request.getParameter("id");
		    if(id==null) id="";
  		    String pass = request.getParameter("pass");
  		    if(pass==null) pass="";
  		    String name = request.getParameter("name");
  		    if(name==null) name="";
  		    
		 	Member m = new Member();
		    %>

		    <tbody>
		      <tr>
		        <td><%=m.getId() %></td>
		        <td><%=m.getPass() %></td>
		        <td><%=m.getJob() %></td>
		        <td><%=m.getName() %></td>
		      </tr>
		    </tbody>
		  </table>


     </div>
</body>

</body>
</html>