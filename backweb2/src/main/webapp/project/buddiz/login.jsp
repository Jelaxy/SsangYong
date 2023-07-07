<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta property="og:title" content="project4 Buddiz">
    <meta property="og:url" content="https://mrrobotcorp.github.io/project3_opgg/">
    <meta property="og:image" content="https://mrrobotcorp.github.io/project3_opgg//source/thumbnail.png">
    <meta property="og:description" content="4조 프로젝트 사이트 - Buddiz">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="project4 Buddiz">
    <meta name="twitter:image" content="https://mrrobotcorp.github.io/project3_opgg//source/thumbnail.png">
    <meta name="twitter:description" content="4조 프로젝트 사이트 - Buddiz">
    <meta name="description" content="4조 프로젝트 사이트 - Buddiz">
    <meta name='keywords' content='project, Buddiz, toy project, community, practice'>

    <link rel="icon" href="./source/favicon-32x32.png" sizes="32x32">
    <link rel="apple-touch-icon" href="./source/apple-icon-180x180.png" sizes="180x180">

    <title>Buddiz | 버디즈</title>
    <link rel="stylesheet" href="./css/home.css">
</head>

<body>

    <main>
        <div class="logoBox">
            <img src="./source/logo_o-bg.png" class="mainLogo">
            <span>Build Buddy Bonds!</span>
        </div>

        <div class="loginBox">
            <h2>Login</h2>
            <form  action="home3.jsp" method="post">
                <div class="user-box">
                    <input type="text" name="id" required="">
                    <label>ID</label>
                </div>
                <div class="user-box">
                    <input type="password" name="pass" required="">
                    <label>Password</label>
                </div>                
                <a href="IDsch.jsp" >아이디찾기</a>  <a href="PASSsch.jsp" >비밀번호찾기</a><br>
                <br>
                <button class="lgBtn" type="submit">
                    <span>로그인</span>
                </button>
                <br>
                <br>
                <button class="lgBtn" type="submit"  onclick="location.href='SignUp.jsp'">
                    <span>회원가입</span>
                </button>
            </form>
        </div>
    </main>

    <footer>
        <img src="./source/logo_w.png" class="footLogo">
        <p class="crTxt">© Buddiz, Team 4. 2023. Build Buddy Bonds!</p>
    </footer>

</body>

</html>