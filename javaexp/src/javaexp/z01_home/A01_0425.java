package javaexp.z01_home;

public class A01_0425 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		2023-04-25
//		[1단계:개념] 1. 예외 처리의 기본형식 코드는 수행시키고, 해당 코드가 의미하는 바를 구체적으로 기술하세요.
		  /*
		   try{
		    	예외가 발생가능한 코드
		   }
		   catch(Exception e){
				try블럭에서 던진 예외를 처리하는 블럭이다.
		  		매개변수에 Exception 클래스는 예외처리의 상위 클래스로
		  		여러가지 예외 처리를 위한 정보를 기능메서드를 통해 처리하는 객체이다.
		  	}
		  */
		
//		[1단계:확인] 2. args로 입력 받게 하고, 물건명 가격 갯수를 입력 받게 하고 입력이 없을 시  "물건정보를 입력하세요!" 라고 예외 처리로 처리되게 하세요.
		/*
		System.out.println("물건정보 입력");
		try {
			System.out.println(args[0]);
		}catch(ArrayIndexOutOfBoundsException e){
			System.out.println("물건정보를 입력하세요");
		}
		*/
		
//		[1단계:개념] 3. 실행예외와 컴파일예외의 차이점을 예제로 설명하세요.
	//		실행 예외는 실행 단계에서 에러 내용을 확인 할 수 있지만
	//		컴파일 예외는 입력단계에서 에러를 빨간색으로 확인할 수 있다
		
//		[1단계:개념] 3. 예외처리의 계층 구조에 따른 선언 순서를 기술하세요.
			/*
			try {
				예외가 발생하는 어떤 코드
			}catch(NumberFormatException e) { NullPointerException, NumberFormatException	(1) 제일 먼저 오류 처리								
				최하위 클래스 
			}catch(interruptionException e){ 컴파일 예외, RuntimeException 실행예외				(2) 그 다음 오류 처리	
				차상위 클래스 
			}catch(Exception e){ 기타 예외													(3) 마지막에 오류 처리	
		  		최상위
	  		}finally{
	  			// 예외가 있든 없든 상관없이 처리해야할 코드
	  		}
	  		*/
		
//		[1단계:확인] 4. args[0], String name=null;name.toString(); 해당 내용을 구체적 예외는 처리하고, 그외는 Exception처리하는다중예외를 처리하세요.
			/*
			System.out.println("1단계 확인");
			try {
				String name=null;
				System.out.println(args[0]);
				System.out.println(name.toString());
			}catch(NullPointerException e){
				System.out.println(e.getMessage());
			}catch(ArrayIndexOutOfBoundsException e){
				System.out.println(e.getMessage());
			}catch(Exception e){
				System.out.println(e.getMessage());
			}finally {
				System.out.println("처리해야하는 코드 블럭");
			}
			System.out.println("1단계 확인 완료");
			*/
		
//		[1단계:개념] 5. 동적처리하는 가상클래스의 내용을 예제와 함께 기술하세요.
			/*
			1) :hover
			h1:hover{background-color: red;}
			마우스 커서가 해당 요소 위에 있을 때 배경색상이 빨강
			
			2) :active
			h1:active{background-color: orange;}
			마우스로 클릭하여 누르고 있을 때 배경색상이 주황
			
			3) :focus
			h1:focus{background-color: green;}
			폼 요소에 키보드나 마우스 클릭으로 포커스가 있을때 배경색상이 초록
			*/
			
//		[1단계:개념] 6. 공통 속성값인 색상 선언 규칙 3가지를 기술하세요
			/*
			1) 색이름 표현
			h2{background-color: red;}
			
        	2) 16진수 코드로 표현
        	h2{background-color: #ADFF2F}
        	
            3) 10진수 코드와 rgb()로 표현
			h2{background-color: rgb(204,255,229)}
            */
			
//		[1단계:개념] 6. 공통 속성값인 단위(크기,넓이,폭)을 기본예제와 함께 설명하세요
        	/*
        	- 상대적 크기
        	해당선택자(태그)가 가지고 있는 고유한 크기를 기준으로 몇 배, 몇 %로 지정하여 처리하는 것을 말한다.
	        em : 배수
	        % : 퍼센트
    		- 절대적 크기
	        일반적인 길이 측정단위를 기준으로 설정하는 것이다.
	        1) px : 픽셀수
	        2) cm : 센티미터
	        3) mm : 밀리미터
	        4) in : 인치
	        5) pt : 포인터
	        6) pc : 피카소
	        7) deg : 각도

	        <body>
	        	<h1>상적 크기</h1>
	        	<h2 style="font-size: 1em;">상대적 1em</h2>
    			<h2 style="font-size: 100%;">상대적 100%</h2>
	        	<h1>절대적 크기</h1>
	            <h2 style="font-size:10px;">10px</h2>
    			<h2 style="font-size:20px;">20px</h2>
    			<h2 style="font-size:1cm;">1cm</h2>
    			<h2 style="font-size:5mm;">5mm</h2>
    			<h2 style="font-size:20pt;">20pt</h2>
    			<h2 style="font-size:1pc;">1pc</h2>
	        </body>
        	 */
	}

}
