<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%--
사원정보 등록 form을 만들고
문자열,
숫자,
날짜형태로 요청값을 a13_insertEmp.jsp에
VO에 입력되어 vodml getXXX로 출력되게 하세요]
ex)
직책명 ==>select
부서명 ==> radio
급여 ==> number
입사일 ==>date
 --%>
	<div class="container mt-3">
 <form action="a13_insertEmp.jsp">
 	<h2>사원정보 등록 form</h2>
    <div class="mb-3 mt-3">
      <label for="empno">사원번호</label>
      <input type="number" class="form-control" id="email" placeholder="사원번호 입력" name="email">
    </div>
    <div class="mb-3">
      <label for="ename">사원명</label>
      <input type="text" class="form-control" id="ename" placeholder="사원명 입력" name="ename">
    </div>
    <div class="mb-3 mt-3">
      <label for="job">직책명</label>
        <select class="form-control" id="job" name="job">
        <option value="">=직책명 선택=</option>
        <option>ANALYST</option>
        <option>CELEK</option>
        <option>SALESMAN</option>
        <option>MANAGER</option>
        <option>PRESIDENT</option>
        </select>
    </div>
    <div class="mb-3 mt-3">
      <label for="mgr">관리자</label>
        <select class="form-control" id="mgr" name="mgr">
        <option value="0000">=관리자 선택=</option>
        <option value="7698">BLAKE</option>
        <option value="1182">CLERK</option>
        <option value="7902">FORD</option>
        <option value="7566">JONES</option>
        <option value="7839">KING</option>
        </select>
    </div>
    <div class="mb-3">
      <label for="hiredateS">입사일:</label>
      <input type="date" class="form-control" id="hiredateS" placeholder="입사일 선택" name="hiredateS">
    </div>
    <div class="mb-3 mt-3">
      <label for="comm">보너스</label>
      <input type="number" class="form-control" id="comm" placeholder="보너스 입력" name="comm">
    </div>
    <div class="mb-3 mt-3">
      <label for="sal">보너스</label>
      <input type="number" class="form-control" id="sal" placeholder="급여 입력" name="sal">
    </div>
    <%
    String[][] depts={{"10","ACCOUNTIONG"},{"20","RESERCH"},{"30","SALES"},{"40","OPERATIONS"}};
    %>
    <div class="mb-3 mt-3">
      <label for="deptno">부서</label>
      <label class="form-check-label">
      <%for(String[] dept:depts){ %>
      <input type="radio" class="form-radio-input" 
          	value="<%=dept[0]%>" name="deptno"> <%=dept[1] %>
      <%} %>
      </label>
    </div>
    <button type="submit" class="btn btn-primary">제출</button>
  </form>
</div>

 </form>
</body>
</html>