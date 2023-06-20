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
    <div class="container mt-3">
       <h2>사원정보 등록</h2>
       <form action="a18_rev.jsp" method="post">
            <div class="mb-3 mt-3">
	            <label for="sname">이름:</label>
	            <input type="text" class="form-control" 
	              id="sname" placeholder="학생이름 입력" name="sname">
            </div>
            <div class="mb-3 mt-3">
	            <label for="kor">국어:</label>
	            <input type="number" class="form-control" 
	              id="kor" placeholder="국어 점수 입력" name="kor">
            </div>
            <div class="mb-3 mt-3">
            <label for="eng">영어:</label>
            <input type="number" class="form-control" 
              id="eng" placeholder="영어 점수 입력" name="eng">
            </div>
            <div class="mb-3 mt-3">
            <label for="math">수학:</label>
            <input type="number" class="form-control" 
              id="math" placeholder="수학 점수 입력" name="math">
            </div>
            <button type="submit" class="btn btn-primary">성적 등록</button>
        </form>

</body>
</html>