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
    <h2>������� ���</h2>
    <form action="/">
         <div class="mb-3 mt-3">
            <label for="empno">�����ȣ:</label>
            <input type="number" class="form-control" 
              id="empno" placeholder="����� �Է�" name="empno">
         </div>
         <button type="submit" class="btn btn-primary">���</button>
     </form>
  </div>
<%--
�ǽ�����
[1�ܰ�:����] 1. ��û���� ���ߵ����� ó��, form ���� ó��, form�� �������� ���Ŀ� ���� ó���� ������� �Բ� ���� ������ �Ʒ� ������ Ǯ�� ������.
	
[1�ܰ�:�ڵ�] 2. form�������� ���� ó���ϴ� ������ �Ʒ� 3���� �������� �����ϰ� ���� �������� ����ϼ���
   1) ������ ���Ǹ� �Է�(type=text)
   2) ������ ������ ����(type=checkbox) : ���õ� �͸�
   3) select�� ������ ������ ���� : ctrl�� ���õ� �͸�
[1�ܰ�:�ڵ�] 3. bootstrap�������� ȸ����� ȭ�� form �����, ��Ͻ�, ��û�� �޾� VO��ü�� ���� �� ����� ������ ó���ϼ���.
 --%>
   1) ������ ���Ǹ� �Է�(type=text)
      <%  String pname = request.getParameter("pname");
		    if(pname==null) pname="";
		   Product p = new Product(pname);
	  %>
	   <div class="input-group mb-3">
        <span class="input-group-text">��ǰ��</span>
        <input type="text" class="form-control" value="<%=p.getPname()%>">
      </div>
   2) ������ ������ ����(type=checkbox) : ���õ� �͸�
   <%
    String[] prices = {"3000","4900","1600","5000"};
    %>
    <div>
      <label for="price">����</label>
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
   3) select�� ������ ������ ���� : ctrl�� ���õ� �͸�
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
[1�ܰ�:�ڵ�] 3. bootstrap�������� ȸ����� ȭ�� form �����, ��Ͻ�, ��û�� �޾� VO��ü�� ���� �� ����� ������ ó���ϼ���.
	<body>
	<div class="container mt-3">
 <form action="a13_insertEmp.jsp">
 	<h2>������� ��� form</h2>
    <div class="mb-3 mt-3">
      <label for="id">�����ȣ</label>
      <input type="text" class="form-control" id="id" placeholder="�����ȣ �Է�" name="id">
    </div>
    <div class="mb-3 mt-3">
      <label for="pass">��й�ȣ</label>
      <input type="text" class="form-control" id="pass" placeholder="��й�ȣ �Է�" name="pass">
    </div>
    <div class="mb-3">
      <label for="name">ȸ����</label>
      <input type="text" class="form-control" id="name" placeholde="ȸ���� �Է�" name="name">
    </div>
 </form>
</body>

<body>
    <div class="container mt-3">
    	<h2>��� ����</h2>
		  <table class="table">
		    <thead class="table-success">
		      <tr>
		        <th>�����ȣ</th>
		        <th>��й�ȣ</th>
		        <th>ȸ����</th>

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