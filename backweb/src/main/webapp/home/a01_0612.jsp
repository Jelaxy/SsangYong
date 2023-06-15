<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
실습예제1) jsp 스크립트릿에서 조건문을 활용하여 테이블로 홀/짝을 만들어서 정답을 클릭했을 때, 임의의 정답/오답으로 처리되게 하세요
 		1) 화면구성
 		2) 구슬게임 로직으로 컴퓨터의 결과 처리
 			1~6개 임의의 구슬 쥐기
 			if문과 %연산자에 의해 홀/짝 결과 처리
 		3) 화면에 js에 위 내용에 따를 결과 alert으로 처리
 			홀짝 이벤트로 맞을 때, 구슬 갯수와 정답 출력
 			함수를 정의(구스르이 갯수, 홀짝 정보, 정답여부 전달)
 			이벤트 호출
 --%>

     <script type="text/javascript">
     	function call(cnt,rst,isCor){
     		if(isCor){
     			alert(rst+" 맞추었습니다! 구슬의 갯수:"+cnt);
     		}else{
     			alert(rst+" 졌습니다! 구슬의 갯수:"+cnt);
     		}
     	}
     </script>
 	<table border width="50%">
     <tr><th>숫자</th><th>홀/짝</th></tr>
     <%
     int rNum = (int)(Math.random()*6+1);
     String correct= rNum%2==0?"짝":"홀";
     %>
	<%--
	# js와 jsp의 연동 처리시 주의 사항
	1. 숫자형/boolean 데이터 : ''없이 그대로 할당
		ex) 변수 = <%=%>
	2. 문자열 데이터는 : 반드시 '',""에 할당해서 입력
		ex) 변수 = '<%=자바변수%>'
	--%>
     <tr><th onclick="call(<%=rNum %>,'홀','<%=correct%>'=='홀')">홀</th></tr>
     <tr><th onclick="call(<%=rNum %>,'짝','<%=correct%>'=='짝')">짝</th></tr>

	</table>
<%--
실습예제2) jsp 스크립트릿에서 조건문/반복문을 활용하여 4행 4열을 만들어 3/6/9게임의 내용을 1~16까지 내용으로 표시하세요
 --%>
 <%
 // out.print("태그") : 화면에 출력하는 jsp out 객체의 print메섣
 for(int i=1; i<=16; i++){
	 if(i%4==1) out.print("<tr>");
	 out.print("<td>");
	 // 1, 2, 짝...10, 11, 12, 짝
	 out.print(i%10!=0 && i%10%3==0?"짝":i);
	 out.print("</td>");
	 if(i%4==0) out.print("</tr>");
 }
 %>

<%--
실습예제3) 도서 대출 정보를 VO로 만들어 화면에 표시할 때, 테이블로 화면에 출력하세요.
 --%>
 <%
 BookVO book = new BookVO(1000,"jsp 중급","홍길동")%>
 <tr>
 <td><%=book. %></td>
 </tr>
</body>
<script>

</script>
</html>