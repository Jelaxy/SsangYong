package javaexp.z01_home;

public class A01_0426 {
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		2023-04-26
//		[1단계:조원] 1. 예외처리에 대한 이론과 실습(조원들과 아래 내용에 대한 이야기를 수업 내용을 보면서 나누세요)
//		      1) 예외 처리를 왜 하는지 알고 있나요?
				// 프로그래밍의 신뢰성 이슈
		
//		      2) 예외 처리를 하는 기본 단계별 구조를 설명할 수 있고, 코드할 수 있는지?
				// 
		
//		      3) args값이 입력하지 않을 때, 처리되는 메서드를 선언하고, 예외를 위임하세요.
				/*
				static void arr01() throws ArrayIndexOutOfBoundsException{		
					System.out.println(args[0]);
				}
				
				try {
					arr01();
				}catch(ArrayIndexOutOfBoundsException e){
					System.out.println("배열 범위 초과 예외"+e.getMessage());
				}
				*/
		
//		      4) 아이디 입력시 8자미만 이거나 16자이상시 사용자 정의 예외를 발생하게 처리하세요
				
//		[1단계:개념] 2. css 문자열 관련 속성을 예제와 함께 기술하세요
				/*
				1) 문자의 형태(글꼴/모양)
				font-family : 글꼴 관련 속성으로 속성값을 영문에 대한 Arial, Times New Roman, Serif
					한글 굴림체, 궁서체, 고딕체
					ex) <h1 style="font-family:궁서체">궁서체</h1>
				font-style : 글자 모양 관련한 내용으로 기울임이나, 특정한 형태로 처리하는 것을 말한다.
					ex) <h2 style="font-style:italic">기울기</h2>
				2) 문자의 크기 : 절대/상대 속성값으로 크기를 지정
				font-size : 40px,mediun, 1.6em 등 속성값 지정
					ex) <h2 style="font-size:40px">폰트 크기</h2>
				3) 문자의 굵기 : 절대/상대 속성값으로 굵기를 지정
				font-weight :  bold, light
					ex) <h2 style="font-weight:900">폰트 굵기</h2>
				*/
		
//		[1단계:개념] 3. css box 모델의 단계별 속성을 설명하세요
				/*
				1) 내부 컨텐츠 : 이미지나 문자, 혹은 포함되는 요소들
				2) 패딩 : border 사이의 간격
				3) 테두리 : 박스 모델의 외곽선
				4) 여백 : 박스 외부의 빈 영역. 다른 요소들과의 간격을 둠
				*/
			
//		[1단계:개념] 4. css border의 위치관련 속성, 굵기, 종류관련 개별적 속성과 전체 설정 처리를 기술하세요
				/*
				# 굵기 설정
					border-left
					border-right
					border-top
					border-bottom
				# 종류 설정
					border-style:dotted
					border-style:solid
					border-style:double
					border-style:dashed
				<body>
					<div style="border-top:solid 1px tomato; width:50px; height:70px">
						<span style="border:solid 1px blue;">border 속성</span>
					</div>
		        </body>
				*/
		
//		[1단계:확인] 5. css box 모델의 모서리 둥글기 속성을 이용하여, 버튼1, 버튼2를 span으로 만들어 보세요.
				/*
				<style>
				 div{background-color: darkolivegreen;width: 50px; padding: 50px;}
				</style>
				<body>
				<div style="border-radius: 60px;">
					<span>버튼 1</span>
				</div>
				<div style="border-radius: 60px;">
					<span>버튼 2</span>
				</div>
				</body>
				*/
		
//		[1단계:확인] 6. 예외 위임을 코드를 기본 예제와 함께 설명하세요.
			/*
			 # 예외 처리 반복문
			 1. 반복문 안에서 처리
			 for()
			 	try{
			 		if()
			 	}catch(){}
			 	해당 조건이 나왔을 때, 예외 catch 블럭이 수행되고, 다시 다음 반복 step을 수행 처리한다.
			 2. 반복문포함 밖에 처라
			 try{
			 	for()
			 }
			 해당 조건이 나오면 반복문 수행도 중지되고 예외 처리 된다.
			 * */
//		[1단계:확인] 7. 1~10까지 출력할 때, 짝수인 경우에 사용자 정의 예외가 처리되게 하세요.
			int num=0;
			public void even{
				for(int ev=2; ev<=1; cv)
				num+=1;
			}

			System.out.println(num);
			System.out.println(num);
			System.out.println(num);
			System.out.println(num);
			System.out.println(num);
			try{
				if(num<1 || num>10 || num%2==1){
					throw new EvenException();
				}
			}catch(EvenException e){
				System.out.print(e.getMessage());
			}

		}
	}


class EvenException extends Exception{
	EvenException(){
		super("짝수입니다");
	}

	@Override
	public String getMessage() {
		return super.getMessage();
	}
	
}
