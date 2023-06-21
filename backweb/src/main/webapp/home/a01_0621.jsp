<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.z01_vo.Member"
    import="backweb.a01_database.A05_MemberDao"%>
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
[1단계:개념] 1. session scope의 4가지 범위를 조원들과 함께 이해가 되었는지 확인하세요,
 1. page
 2. request
 3. session
 4. application
 
[1단계:코드] 2. member테이블을 기준으로 id가 있는지 여부를 확인하는 DB 처리를 해보세요
         회원아이디:[   ][등록여부확인] ==> dao (boolean getMember(String id)) ==> 등록여부에 따라 alert() 출력
        
[1단계:코드] 3. session 범위로 num01을 할당하고, a01_sess.jsp <==> a02_sess.jsp 이동 시마다 증가하게 하세요.
 --%>
<body>
<%--
[1단계:코드] 2. member테이블을 기준으로 id가 있는지 여부를 확인하는 DB 처리를 해보세요
         회원아이디:[   ][등록여부확인] ==> dao (boolean getMember(String id)) ==> 등록여부에 따라 alert() 출력
--%>
<%
String id = request.getParameter("id");
A05_MemberDao dao = new A05_MemberDao();
boolean isExist = dao.getMemberid(id);
String message = isExist ?"이미 있는 아이디입니다.":"사용 가능한 아이디입니다.";
%>

<body>
    <div class="container mt-3">
       <h2>id 중복검사</h2>
       <form method="post">
            <div class="mb-3 mt-3">
            <label for="id">id</label>
            <input type="text" class="form-control" 
              id="id" placeholder="id 입력" name="id">
            </div>
            <button type="submit" class="btn btn-primary">확인</button>
        </form>
          
    </div>
</body>
<script type="text/javascript">
      var message = <%= message%>;
      let btn = document.querySelector("button");
      
      btn.onclick = function() {
		alert(message)
      }
</script>
<%--
[1단계:코드] 3. session 범위로 num01을 할당하고, a01_sess.jsp <==> a02_sess.jsp 이동 시마다 증가하게 하세요.
--%>
       
    </div>
</body>


</html>