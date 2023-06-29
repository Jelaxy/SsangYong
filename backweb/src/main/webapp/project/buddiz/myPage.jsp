<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
  </head>
<body>
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
			<img id="mePhoto" src="./source/흠냐륑.jpg"> 
			<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
				프로필 수정
			</button>
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
					<button type="button" id="modalClsBtn" class="btn-close" data-bs-dismiss="modal"></button>
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
						<label for="PASS"></label> 
						<input type="text"
							class="form-control" id="PASS"
						placeholder="비밀번호 입력" name="PASS">
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
</section>	


  <section class="album py-5 bg-light">
    <div class="container">

      <div class="row">
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22208%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20208%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_18903077f23%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A11pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_18903077f23%22%3E%3Crect%20width%3D%22208%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2266.9453125%22%20y%3D%22117.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true">
            <div class="card-body">
				<h4 class="card-text">
					풋살동아리 첫날
				</h4>
            	<p class="card-text">
					오전 온도가 29도인데 풋살 경기를 하더라...
					우리 동네 힘숨찐들 다 여기 모여있었네;; 쉽지않다..;;
					중간에 물마시는 척 도망가서 냉모밀 먹었다.
					친구따라 강남은 두번은 못 갈 듯
					다음에는 제발 가을에 만나요~!
				</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">더보기</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22208%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20208%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_18903077f25%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A11pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_18903077f25%22%3E%3Crect%20width%3D%22208%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2266.9453125%22%20y%3D%22117.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
            <div class="card-body">
				<h4 class="card-text">
					카페 투어
				</h4>
            	<p class="card-text">
					오늘 서울에 새로 생긴 카페갔다.
					전반적으로 버터색깔에 연한 우드로 포인트를 준 깔끔한 느낌의 매장...
					매장 곳곳에 선인장이 배치되어있어서 귀엽고 
					중앙 테이블 외에 오른쪽에 있는 테이블에는 충전 할 수 있는 콘센트도 있어서 카공족도 가기 좋아보였다.
					다만...놀랍게도 긴 테이블의 끝에는 주차장이라 자동차가 오고가는게 보임....ㅋㅋㅋㅋㅋㅋㅋㅋ
					쌍라이트 킨 차랑 눈마주쳐서 아이돌 뮤비찍는 기분 낼 수 있었다. 
				</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">더보기</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22208%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20208%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_18903077f27%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A11pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_18903077f27%22%3E%3Crect%20width%3D%22208%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2266.9453125%22%20y%3D%22117.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
            <div class="card-body">
				<h4 class="card-text">
					수영 상급반 진급!!!!
				</h4>
            	<p class="card-text">
					드디어 수영 상급반에 올라갔다.
					이제 수영에 입문한지 2년차..
					실력은 안늘어도 수영복이 점점 늘어가는 수린이였던게 어제같은데...헤헤
					저도 이제 IM돌 수 있는 건가요?
					무섭지만 설렌다ㅋㅋㅋㅋㅋ
				</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">더보기</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>

        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22208%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20208%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_18903077f29%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A11pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_18903077f29%22%3E%3Crect%20width%3D%22208%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2266.9453125%22%20y%3D%22117.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
            <div class="card-body">
				<h4 class="card-text">
					공포영화보고 지린 썰 푼다
				</h4>
            	<p class="card-text">
					왜 서울 한복판에 옷가게가 이것밖에 없냐...
					개더워서 그냥 아아 한잔 마시고 간 게 다인데..ㅠㅠㅠㅠ
					감독 이번에 이 악물고 찍었나 하...
					다들 나처럼 되지말고 입장 전에 화장실 한 번 들렸으면
					밧줄사러 가야되서 영화 후기는 못쓰겠다.
				</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">더보기</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22208%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20208%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_18903077f2b%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A11pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_18903077f2b%22%3E%3Crect%20width%3D%22208%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2266.9453125%22%20y%3D%22117.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
            <div class="card-body">
				<h4 class="card-text">
					풋살동아리 첫날
				</h4>
            	<p class="card-text">
					오전 온도가 29도인데 풋살 경기를 하더라...
					우리 동네 힘숨찐들 다 여기 모여있었네;; 쉽지않다..;;
					중간에 물마시는 척 도망가서 냉모밀 먹었다.
					친구따라 강남은 두번은 못 갈 듯
					다음에는 제발 가을에 만나요~!
				</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">더보기</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22208%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20208%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_18903077f2d%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A11pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_18903077f2d%22%3E%3Crect%20width%3D%22208%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2266.9453125%22%20y%3D%22117.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
            <div class="card-body">
				<h4 class="card-text">
					풋살동아리 첫날
				</h4>
            	<p class="card-text">
					오전 온도가 29도인데 풋살 경기를 하더라...
					우리 동네 힘숨찐들 다 여기 모여있었네;; 쉽지않다..;;
					중간에 물마시는 척 도망가서 냉모밀 먹었다.
					친구따라 강남은 두번은 못 갈 듯
					다음에는 제발 가을에 만나요~!
				</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">더보기</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>

        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22208%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20208%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_18903077f2f%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A11pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_18903077f2f%22%3E%3Crect%20width%3D%22208%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2266.9453125%22%20y%3D%22117.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
            <div class="card-body">
				<h4 class="card-text">
					풋살동아리 첫날
				</h4>
            	<p class="card-text">
					오전 온도가 29도인데 풋살 경기를 하더라...
					우리 동네 힘숨찐들 다 여기 모여있었네;; 쉽지않다..;;
					중간에 물마시는 척 도망가서 냉모밀 먹었다.
					친구따라 강남은 두번은 못 갈 듯
					다음에는 제발 가을에 만나요~!
				</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">더보기</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22208%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20208%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_18903077f31%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A11pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_18903077f31%22%3E%3Crect%20width%3D%22208%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2266.9453125%22%20y%3D%22117.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
            <div class="card-body">
				<h4 class="card-text">
					풋살동아리 첫날
				</h4>
            	<p class="card-text">
					오전 온도가 29도인데 풋살 경기를 하더라...
					우리 동네 힘숨찐들 다 여기 모여있었네;; 쉽지않다..;;
					중간에 물마시는 척 도망가서 냉모밀 먹었다.
					친구따라 강남은 두번은 못 갈 듯
					다음에는 제발 가을에 만나요~!
				</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">더보기</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22208%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20208%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_18903077f33%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A11pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_18903077f33%22%3E%3Crect%20width%3D%22208%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2266.9453125%22%20y%3D%22117.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
            <div class="card-body">
				<h4 class="card-text">
					풋살동아리 첫날
				</h4>
            	<p class="card-text">
					오전 온도가 29도인데 풋살 경기를 하더라...
					우리 동네 힘숨찐들 다 여기 모여있었네;; 쉽지않다..;;
					중간에 물마시는 척 도망가서 냉모밀 먹었다.
					친구따라 강남은 두번은 못 갈 듯
					다음에는 제발 가을에 만나요~!
				</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">더보기</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<script type="text/javascript">

//모달 열기 버튼 선택
var openModalButton = document.getElementById("modalClsBtn");

// 모달 창 선택
var modal = document.getElementById("myModal");

// 모달 닫기 버튼 선택
var closeButton = document.getElementsByClassName("close")[0];

//모달 열기 버튼 클릭 시 이벤트 핸들러
modalClsBtn.addEventListener("click", function() {
  // 여기서 DB에서 비밀번호를 가져와서 유효성 검사를 수행합니다.
  var storedPassword = "비밀번호를 가져옵니다."; // 예시로 저장된 비밀번호를 변수에 할당합니다.
  var userInput = prompt("비밀번호를 입력하세요."); // 사용자에게 비밀번호를 입력받습니다.

  if (userInput === storedPassword) {
    modal.style.display = "block"; // 비밀번호가 일치하면 모달 창을 엽니다.
  } else {
    alert("유효하지 않은 비밀번호입니다."); // 비밀번호가 일치하지 않으면 알림을 표시합니다.
  }
});
</script>
</main>
</body>
</html>