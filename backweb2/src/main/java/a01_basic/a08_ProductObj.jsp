<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "backweb.z01_vo.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
ex) 구매물품 상세 정보로 테이블과 form 요소개체를 이용하여,
물건명, 가격, 갯수, 상품정보룰 table안에 표현하되 VO객체를 만들어 value값에 할당하세요
1. 화면구현
2. 화면에 출력될 속성
3. VO 객체를 위한 class 선언
4. import VO 객체
5. VO 객체 생성
6. 화면에 expression으로 출력
 --%>
 <% Product p = new Product("바닐라라떼",3500,1,"예나가 사줌"); %>
 <form>
 <table border width="40%">
 	<tr><th>물건명</th><td><input type="text" value="<%=p.getPname()%>"></input></td></tr>
 	<tr><th>물건명</th><td><input type="text" value="<%=p.getPrice()%>"></input></td></tr>
 	<tr><th>물건명</th><td><input type="text" value="<%=p.getCnt()%>"></input></td></tr>
 	<tr><th>물건명</th><td><input type="text" value="<%=p.getPva()%>"></input></td></tr>

 </table>
</form>
</body>
</html>