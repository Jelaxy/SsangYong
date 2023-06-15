package javaexp.z01_home;

public class A01_0413 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		      2023-04-13
//		      [1단계:개념] 1. 링크시 상대위치 지정과 절대위치 지정 차이점을 기술하고, 
//		         상대위치는 현재 폴드를 기준으로 상위 페이지인가 하위 페이지인가 등 상대적인 계층관계가 있지만,
//		         절대위치는 변하지 않는다.
//		      [1단계:개념] 2. 링크시 현재 파일을 기준으로 상위폴드와 하위폴드 이동 처리를 예제를 통해서 설명하세요.
//		         현재 위치 :webapp/a03_link/a04_frame02.html
		      
//		         <h2>link 상위 경로 이동</h2>
//		         <a href="../show2.html">상위경로로 이동합니다</a>
//		         상위경로는 ../의 형식으로 위치를 지정한다
//		      
//		         h2>link 하위 경로 이동</h2>
//		         <a href="./a03_sub/a07_03_subject.html">하위경로로 이동합니다</a>
//		         하위 경로는 ./의 형식으로 위치를 지정한다.
//		         여기서 주의할 점은 '/하위경로'로 시작하면 ip port의 바로 다음에 오기 때문에 에러가 발생한다.
		      
//		      [1단계:개념] 3. iframe의 속성을 예제를 통해서 설명하세요.
//		         iframe은 페이지 속성값을 src로 설정할 수 있다.
//		         ex) <iframe src="a07_03_subject.html" width="500" height="500">
//		         또, srcdoc로 프레임안에 바로 태그를 사용해 내용을 출력하는 방법도 있다.
//		         ex) <iframe srcdoc="<html><body><h3>iframe 속성 srcdoc</h3></body></html>"
//		         마지막으로 name을 사용해 프레임을 이름을 설정해 href 속성의 target으로 호출시킬 수 있다.
//		         ex) <a href="a07_03_subject.html" target="mainFrame"></a>
		      
//		      [1단계:확인] 4. 좋아하는 맛집 홈페이지를 맛집의 종류에 따라 링크되게 처리해보세요.
//		      <body>
//		         <h2>좋아하는 맛집</h2>
//		            <a href="a01_gamja.html" target="mainFrame">장수감자탕</a>
//		            <a href="a01_mara.html" target="mainFrame">궁마라탕</a>
//		            <a href="a01_ttoek.html" target="mainFrame">옥순이네 국물 떡볶이</a>
//		            <a href="a01_cafe.html" target="mainFrame">청화공간</a>
//		         <iframe name="mainFrame" width ="60%" height="500pt"
//		         srcdoc="<html><body><h1>맛집 홈페이지입니다</h1></body></html>"
//		         ></iframe>
//		      </body>
		   
//		      [1단계:개념] 5. target 속성값의 종류를 기술하세요.
		  /*  < a href="페이지” target="속성값"></a>의 형식으로 사용한다.
		      종류
		    _top : 가장 상위계층 페이지
		    _parent : 현재 위치한 프레임의 상대적으로 상위 계층 프레임
		    _self : 현재 윈도우안에서 다른 프레임으로 이동 
		    _blank : 새 윈도우 페이지를 생성해 이동
		*/

//		      [1단계:개념] 6. input select textarea의 차이점을 기술하세요.
		      
//		      [1단계:확인] 7. 기본 input 객체를 활용하여 아래와 같이 출력(form과 name 속성포함)하세요.
//		                         사람등록
//		            이름   [   ]
//		            나이   [   ]
//		            사는곳   [   ]
//		                [등록]
//		      <body>
//		      <form>
//		         <h2>사람등록</h2>
//		          이름  <input type="text" name="people"/><br>
//		          나이  <input type="text" name="age"/><br>
//		           사는곳  <input type="text" name="area"/><br>
//		          <input type="button" value="등록"/>
//		      </form>
//		      </body>
		      // people=홍길동&age=35&area=서울
		
//		      [1단계:확인] 8. type으로 check와 radio의 차이점을 예제를 기술하세요
//		         check은 다수의 항목을 선택가능하지만
//		         radio는 단 하나만 선택이 가능하다.
		      
//		      <body>
//		      <h2>집에 가고 싶은 시간대</h2>
//		         <input type="checkbox" name="hope" value="1시"/>1시
//		          <input type="checkbox" name="hope" value="2시"/>2시
//		         <input type="checkbox" name="hope" value="3시"/>3시
//		         <input type="checkbox" name="hope" value="4시"/>4시
		      
//		      <h2>진짜 집에 갈 수 있는 시간은?</h2>
//		         <input type="radio" name="real" value="6시"/>6시
//		         <input type="radio" name="real" value="7시"/>7시
//		         <input type="radio" name="real" value="8시"/>8시
//		      </body>
		      
//		      [1단계:확인] 9. 출근시간대(6:00,7:00,8:00,9:00와 퇴근시간대(17:00,18:00,19:00,20:00)를 단일 선택할 수 있게 처리하세요
//		      <body>
//		      <h2>출근시간대</h2>
//		         <input type="radio" name="gowork" value="6시"/>6시
//		         <input type="radio" name="gowork" value="7시"/>7시
//		         <input type="radio" name="gowork" value="8시"/>8시
//		         <input type="radio" name="gowork" value="9시"/>9시
//		      <h2>퇴근시간대</h2>
//		         <input type="radio" name="gohome" value="17시"/>17시
//		         <input type="radio" name="gohome" value="18시"/>18시
//		         <input type="radio" name="gohome" value="19시"/>19시
//		         <input type="radio" name="gohome" value="20시"/>20시
//		       </body>
		      
//		      [1단계:개념] 10. form하위에 form요소객체가 서버에 데이터를 전송하는 규칙을 기술하세요
//		        1. 반드시 <form></form> 태그 안에 요소가 들어가 있어야 한다.
//		        2. name 태그로 key값을 부여해야 한다.
		      
//		      [1단계:개념] 11. select form태그에서 option에서 value의 설정이유에 대하여 기술하세요.
//		      option에 value가 설정되어 있으면 항목별로 value값이 넘어가지만
//		      value속성이 없으면 그 값이 option 내에서 자동으로 설정이 되어 전송된다.
		      
//		      [1단계:확인] 12. 주로 사용하는 지역과 우편번호를 검색해서 select로 지역을 선택했을 때, 서버에 우편번호가 전송되게 처리하세요.
//		      <body>
//		      <h2>select</h2>
//		         <form>
//		          지역선택:
//		          <selcet name="area">
//		             <optin value="06236">GS25 역삼역점</option>
//		            <optin value="06235">세븐일레븐 역삼은탑점</option>
//		            <optin value="06235">CU 역삼유토빌점</option>
//		            <optin value="7004">오길동</option>
//		           </selcet>
//		          <br>
//		          <input type="submit" value="전송“>
//		         </form>
//		      </body>
		   

		
	}

}
