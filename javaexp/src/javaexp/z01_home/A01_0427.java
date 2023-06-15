package javaexp.z01_home;

public class A01_0427 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		2023-04-27
//		[1단계:개념] 1. 배경이미지관련 속성을 예제와 함께 기술하세요.
			/*
			1) background-position:
			ex) background-position: top center;
			==> 배경 이미지의 위치를 지정
				top, bottom, left, right, center
			2) background-repeat:
			ex) background-repeat: repeat;
			==> 배경 이미지의 반복을 지정 
				no-repeat, repeat, repeat-x(행반복), repeat-y(열반복)
			*/
			
//		[1단계:개념] 2. display의 속성 3개 특징을 예제와 함께 기술하세요
			/*
			1) block
			ex) <span style="display: block; width:100px; height:50px;">집에 간당</span>
			매번 새로운 라인에서 시작하며, 블럭 박스 내부에만 배치된다.
			또, width, height, padding, border, margin 등 크기나 굵기, 간격 조절이 가능하다
			
			2) inline
			ex) <h1 style="display: inline;">어떤 예제</h1>
			매번 새로운 라인에서 시작하며, 모든 박스 내에 배치가 된다.
			block과 달리 옆에 다른 요소를 배치할 수 있다.
			또, margin-top, margon-bottom 조절이 안된다.
			
			3) inline-block
			ex)<h1 style="display:inline-block;width:100px;height:50px;">그런 예제</h1>
			inline 속성
			새라인에서 시작하지 못하고, 라인 안에 배치된다.
			모든 박스 내에 배치 가능하다.
			옆에 다른 요소를 배치할 수 있다.
		    block 속성
			width와 height, padding, border, margin를 조절 가능하다.
			이 두 속성을 혼합해서 쓸 수 있다.
			*/
					
//		[1단계:확인] 4. css 글자 그림자 처리 옵션을 지정하여, 화면에 이름, 나이, 사는 곳을 출력하세요.
			/*
			<style type="text/css">
			div.seagreen{text-shadow: 3px 3px 2px seagreen;}
			</style>
			<body>
			<div class="red">서유림</div>
			<div class="blue">26살</div>
			<div class="blue">시흥시</div>
			</body>
			*/
		
//		[1단계:개념] 5. position 옵션을 예제를 통해 기술하세요.
			/*
			현재 위치를 기준으로 하는 상대적 배치
			ex) <div style="position:relative;">오늘은</div>
			절대적 위치 배치
			ex) <div style="position:absolute;">목요일</div>
			고정된 위치 배치
			ex) <div style="position:fixed;">입니다</div>
			*/
		
//		[1단계:개념] 6. Object의 메서드의 기능을 기술하세요.
			
//		[2단계:확인] 7. 물건명, 가격, 갯수를 필드로 하는 Product클래스를 생성하고 사용하되, 재정의하여 객체 생성 후, 참조 변수를 호출했을 때, 물건명/가격/갯수/총계를 출력할려면 처리해야 할 내용은?
		class Product {
			String pName;
			int price;
			int cnt;
			public Product(String pName, int price, int cnt) {
				this.pName = pName;
				this.price = price;
				this.cnt = cnt;
			}
			public int prodTot() {
				System.out.println(pName+"\t");
				System.out.println(price+"\t");
				System.out.println(cnt+"\t");
				int tot = price*cnt;
				System.out.println(tot+"\n");
				return tot;
			}
		}
//		[1단계:개념] 8. String의 비교연산자의 비교와 equals()처리 형식의 차이점에 대하여 기술하세요
			/*
			문자열을 비교할 때,
			==를 통한 비교는 stack영역의 데이터 주소값을 비교하고,
			자바 내부적으로 new String()처리가 이루어져서 == 비교연산자로 비교하기 어렵지만
			equals()는 데이터값 자체를 비교 처리한다.
			*/
		
//		[1단계:개념] 9. String 생성자의 주요 매개변수를 통한 처리 내용을 기술하세요
//		  	new String();
//		  	new String(byte[])
//		  	new String(char[])
//		  	new String("문자열")
			
//		[1단계:확인] 10. 임시비밀번호를 알파벳 대소문자 숫자를 조합해서 10자를 만드는 프로그램을 만드세요
			char[] arr = new char[10];
			for(int idx=0;idx<arr.length;idx++) {
				int ranNum = (int)(Math.random()*62+48);
				if(ranNum>90)
				ranNum+=6;
				arr[idx] = (char)ranNum;
			}
			String str = new String(arr);
			System.out.println("임시비밀번호:"+str);
			
//		[2단계:확인] 11. charAt()를 활용하여, 우리나라에서 가장 많은 성 1~10, 가장 많이 사용하는 이름 중간자, 가장 많이 사용하는 마지막자를 조합하여 임의의 이름 3개를 출력하세요
			// first.charAt(0~9)
			// first.charAt(랜덤범위로 0~9): 특정문자 하나가 나온다
			String lastName = "김이박최정강조윤장임";
			String middleName = "영";
			String firstName="숙";
			System.out.println(lastName.charAt(2)+middleName+firstName);
			System.out.println(lastName.charAt(8)+middleName+firstName);
			System.out.println(lastName.charAt(7)+middleName+firstName);
	}

}
