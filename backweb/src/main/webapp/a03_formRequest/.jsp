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
 <form action="a13_insertEmp.jsp">
 	<h2>사원정보 등록 form</h2>
    <div class="mb-3 mt-3">
      <label for="empno">사원번호</label>
      <input type="number" class="form-control" id="email" placeholder="사원번호 입력" name="email">
    </div>
        <button type="submit" class="btn btn-primary">제출</button>
  </form>
</div>
</body>
</html>