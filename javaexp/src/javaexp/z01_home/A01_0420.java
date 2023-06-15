package javaexp.z01_home;

public class A01_0420 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		2023-04-18
//		[1단계:조별] 1. 다형성을 대한 내용에 대하여 정리해보자.
//		      1) 다형성을 위해 오버라이딩을 사용하는 이유를 아는가?
		
//		      2) 다형성을 처리하기 위한 클래스 구조를 이해하고 만들 수 있는가?
				/*
				 1. 상위 클래스
				 	공통 필드		String name(부품명)
				 	오버라이딩 메서드	void showInfo()
				 2. 상속받는 하위 클래스(계속추가)
				 	상위 생성자를 호출하는 생성자	super("Cpu")
				 	오버라이딩메서드	void showInfo()
				 					super showInfo()
				 3. 위 내용을 다형성 처리하는 클래스
				 	class 포함할 클래스{	class Computer
					 	고유필드	String company;
					 	상위클래스 참조명	Part parts
					 	하위 클래스를 추가할 메서드	void addPart(Part part)
					 	void addXXX(상위클래스 참조명){}
					 	void showInfo() 전체 정보를 표현할 메서드
					 							void showAll()
					 							if(part!=null)
					 }
				 */
//		      3) 상위클래스를 다각형으로 하고, 하위 클래스를 삼각형, 사각형, 오각형으로 선언하여, 필드 kind, 기능메서드 drawing()을 처리하여 출력되게 하세요
//		      삼각형 ==> 삼각형 모양으로 (세모난 새집을 그리다.), 사각형 ==> 사각형 모양으로 (네모난 빌딩을 그리다)...
				polygon p1= new triangle();
				p1.drawing();
				polygon p2= new quadrangle();
				p2.drawing();
				polygon p3= new Pentagon();
				p3.drawing();
//		[1단계:개념] 2. 선택자 중에서 계층적 선택자의 종류와 특징을 기본예제와 함께 기술하세요
				/*
	            1. 자식 선택자
	            	1) 부모 자식관계인 두 선택자는 '>'기호로 조합된다
	            	2) 적용은 해당 부모를 가진 자식 요소객체가 적용된다
	            	3) 기본 형식
	            		부모 > 자식{속성:속성값;}
	            		ex) div > strong{color:dodgerblue;}
	            		div의 바로 밑에 strong 태그가 있으면
	            		해당 strong 태그에는 글자색상이 dodgerblue가 적용된다.
	            2. 자손 선택자
	            	1) 계층 레벨이 바로 밑을 포함해서 여러 계층레벨이 있더라도 적용되는 경우를 말한다.
	            	2) 이것을 자손 관계라고 한다.
	            	3) 기본형식
	            		상위 하위 {속성:속성값;}
	            		ex) ul strong{background-color:yellow;}
	            		ul을 상위로 하위레벨에 레벨계층과 상관없이 strong이 있으면 배경색상이 노랑색으로 처리된다.
	<body>
    	<div>
    		<strong>안녕하세요(div>strong)</strong>
    		<ul>
    			<li>html5</li>
    			<li><strong>css</strong></li>
    			<li>javascript</li>
    			<li>jquery</li>
    		</ul>
    		
    	</div>
    	
        <h1>안녕하세요</h1>
        <h2 style="border: 3cm;">반갑습니다</h2>
	</body>
				*/
//		[1단계:개념] 3. 속성 선택자 종류를 기본예제와 함께 기술하세요
        /*
		1) 선택자[속성=속성값] 어떠한 선택자의 속성과 속성값이 일치하면 처리된다.
        input[type=text]{color: red;}
   
        2) [속성=속성값] 선택자 상관없이 속성이 실행된다
        [type=password]{background-color: orange;}
        
        3) [속성] 속성이나 선택자 상관없이 해당 속성이 있으면 속성값이 처리된다.
        [type]{background-color:blue;}
        
        */
		
//		[1단계:확인] 4. 회원등록화면을 table안에 만들고, 전체선택자와 속성선택자의 단계(선택자[속성=속성값],[속성=속성값],[속성])에 따라 css가 다르게 선언된 것을 적용되게 하세요
		/*
		<style type="text/css">
			*{color: aquamarine;}
			input[type=text]{background-color: blueviolet;}
	        [type=password]{background-color: yellow;}
	        [submit]{border: 3px solid red;}
		</style>
		</head>
		<body>
			<h5>속성선택자</h5>
			<table>
				<tr><th>아이디</th>
				<td input type="text" name="id">1</td></tr>
				<tr><th>패스워드</th>
				<td input type="password" name="passwor">2</td></tr>
				<tr><th colspan="2"><input type="submit" value="회원등록"/></th></tr>
			</table>
			<h5>완성입니다</h5>
		</body>
		*/
				
//		[1단계:확인] 5. 가상클래스의 종류를 간단한 예제와 함께 기술하세요.
		/*
		1) 마우스 : 마우스의 움직임에 따라 변경처리
			h1:hover{background-color: yellow;}
		2) 폼하위 요소객체 : 폼 요소에 키보드 혹은 마우스로 클릭했을 때 변경처리
			input:focus{background-color:yellow;}
		3) 링크 : 링크를 클릭하거나 방문했을 때 변경처리
			a:link{background-color:yellow;}
		4) 블럭형 태그
			p:first-letter{background-color: yellow;}
		5) 구조 처리
			:nth-child(even|odd){background-color: yellow;} : 짝수나 홀수에 적용
			:nth-child(1){background-color: yellow;} : 첫번쨰 자식 태그에 적용
			:nth-child(3n+1){background-color: yellow;} :반복되는 3개의 자식 태그에 적용
			*/
//		[1단계:개념] 6. 다형성을 위한 상위 클래스를 멤버(필드,생성자,재정의메서드) 예제와 함께 설명하세요.
		/*
		 class polygon {
			private String kind;
		
			public polygon(String kind) {
				this.kind = kind;  /
			}
			public void drawing() {
				System.out.println(kind+"을 그리려고함");
			}
		}
		*/
		
//		[1단계:개념] 7. 다형성을 위한 하위 클래스의 구성을 예제와 함께 설명하세요.
				/*
	 class quadrangle extends polygon { // 1. 상위 클래스를 상속받아야함
		public quadrangle() {
			super("사각형");		// super를 통해 상위 클래스를 구분	
		}
	
		@Override  // 오버라이딩을 통해 재정의 메서드
		public void drawing() {
			super.drawing();
			System.out.println("각이 네개인 도형 완성");
		}3. 형변환
		
	}
				 */
	}
}
class polygon {
	private String kind;

	public polygon(String kind) {
		this.kind = kind;
	}
	public void drawing() {
		System.out.println(kind+"을 그리려고함");
	}
}
class triangle extends polygon {
	public triangle() {
		super("삼각형");
	}

	@Override
	public void drawing() {
		super.drawing();
		System.out.println("각이 세개인 도형 완성");
	}
}
class quadrangle extends polygon {
	public quadrangle() {
		super("사각형");
	}

	@Override
	public void drawing() {
		super.drawing();
		System.out.println("각이 네개인 도형 완성");
	}
	
}
class Pentagon extends polygon {
	public Pentagon() {
		super("오각형");
	}

	@Override
	public void drawing() {
		super.drawing();
		System.out.println("각이 다섯개인 도형 완성");
	}
	
}