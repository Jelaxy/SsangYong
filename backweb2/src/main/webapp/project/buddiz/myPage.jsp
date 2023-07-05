<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.List" 
    import="backendWeb.buddiz.vo.Post"
    import="backendWeb.buddiz.dao.MyPostList"
    import="backendWeb.buddiz.dao.BuddyPost"
    import="java.util.Date"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./css/mypage.css" rel="stylesheet">
	<link href="./css/header.css" rel="stylesheet">
	<link href="./js/myPge.js" rel="stylesheet">
  </head>
<body>
<%	
// 로그인한 유저의 로그인 정보
    String id = null;
    if (session.getAttribute("id") != null){
    	id = (String)session.getAttribute("id");
    }

%>
	<header>
        <a href="./index.html">
            <img class="headLogo" src="./source/logo_o-bg.png">
        </a>
        <nav>
            <a href="./index.html" class="navHome">
                <img src="./source/homeIco.png">
                <span>Home</span>
            </a>
            <ul class="gnb">
                <li>
                    <a href="#">
                        <img src="./source/recent.png">
                        <span>최근 게시물</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./source/categoryIco.png">
                        <span>카테고리</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./source/mypageIco.png">
                        <span>마이페이지</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./source/settingsIco.png">
                        <span>설정</span>
                    </a>
                </li>
            </ul>
        </nav>
        <div class="writeBtn">
            <a href="#">
                <img src="./source/writeIco.png">
                <span>글 작성</span>
            </a>
        </div>
    </header>
<main role="main">
	<!--======================================================-->
	
	
	
<section class="jumbotron text-center">
	<div class="container">
		<div class="col-md-12">
		<% %>
			<img id="mePhoto" src="./source/흠냐륑.jpg"> 
					<button type="button" onclick="checkPassword()"
					id="openModalButton" class="btn btn-primary"
					data-bs-toggle="modal"
					data-bs-target="#myModal">프로필 수정</button>
			<h3 class="lead text-muted">
				율림
			</h3>
			<p>
				낮에는 코드짜고 밤에는 니트짜는 사람
			</p>
		  </div>
		  
	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<h4 class="modal-title">프로필 수정</h4>

				</div>
				<form id="regFrm">
				<div class="modal-body">
					<div class="mb-3 mt-3">
						<label for="N_NAME"></label> 
						<input type="text"
							class="form-control" id="N_NAME"
						placeholder="닉네임 입력" name="N_NAME">
					</div>
					<div class="mb-3 mt-3">
						<label for="Name"></label> 
						<input type="text"
							class="form-control" id="Name"
						placeholder="이름 입력" name="Name">
					</div>
					<div class="mb-3 mt-3">
						<label for="B_DAY"></label> 
						<input type="text"
							class="form-control" id="B_DAY"
						placeholder="생년월일 입력" name="B_DAY">
					</div>
					<div class="mb-3 mt-3">
						<label for="MAIL"></label> 
						<input type="text"
							class="form-control" id="MAIL"
						placeholder="이메일 입력" name="MAIL">
					</div>
					<div class="mb-3 mt-3">
						<label for="P_NUM"></label> 
						<input type="text"
							class="form-control" id="P_NUM"
						placeholder="연락처 입력" name="P_NUM">
					</div>
				</div>
				</form>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary"
						onclick="update()">수정</button>
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	</div>
<section>
  <%
  BuddyPost dao = new BuddyPost();
  int postCnt = dao.getPostCount();
  %>
  <div class="container" style="float:left">
    <div>
      <h3>게시물</h3>
      <h3><%=postCnt %></h3>
    </div>
  </div>

  <% int freCnt = dao.getFriendCount(); %>
  <div class="container" style="float:right;">
    <div>
      <h3>친구수</h3>
      <h3><%=freCnt %></h3>
    </div>
  </div>
</section>
	
	
</section>	
  <section class="album py-5 bg-light">
    <div class="container">

      <div class="row">
  <%
  MyPostList dao2 = new MyPostList();
  List<Post> posts = dao2.getMyPosts(id);
  
  for (Post post : posts) {  // 게시물 리스트 반복문으로 출력
      int post_id = post.getPost_id();
      String p_text = post.getP_text();
      Date p_time = post.getP_time();
  %>
      <div class="col-md-4">
    <div class="card mb-4 shadow-sm">
      <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22208%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20208%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_18903077f23%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A11pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_18903077f23%22%3E%3Crect%20width%3D%22208%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2266.9453125%22%20y%3D%22117.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true">
      <div class="card-body">
        <p class="card-text"><%= post.getP_text() %></p>
        <div class="d-flex justify-content-between align-items-center">
          <div class="btn-group">
            <button type="button" class="btn btn-sm btn-outline-secondary">수정<%=dao2.updateMyPost(post) %></button>
            <button type="button" class="btn btn-sm btn-outline-secondary">삭제<%=dao2.deleteMyPost(post_id) %></button>
          </div>
          <small class="text-muted"><%= post.getP_time() %></small>
        </div>
      </div>
    </div>
</div>
  <% } %>

      </div>
    </div>
  </section>

</main>
</body>
</html>