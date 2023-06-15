package javaexp.z01_home;

import javaexp.y01_review.fruit.pack1.KorMelon;

public class A01_0419 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		2023-04-18
//		[1단계:조별] 1. 접근제어자에 이해와 구현
//		      1) 접근제어자의 4가지 이해하고 설명할 수 있는가?
//		   public : 어느 객체가 접근이 가능하게 선언
//	       protected : 상속한 객체만 외부 패키지에 있더라도 접근이 가능
//	       제어자가 붙지 않는 경우 : 같은 패키지 안에 있는 때만 접근 가능
//	       private : 다른 객체는 접근이 불가능하게 선언
//	       
//		      2) 접근제어자에 맞게 구현할 수 있는가?
//	       public String name;
//		   protected String name;
//		   String name;
//		   private String name;
		   
//		      3) default와 protected의 상속관계 객체내에서 호출시 어떤 문제가 있고, 원인은 무엇인가?
//	       default는 같은 클래스만 호출 가능하고
//	       protected는 같은 클래스이고, 상속받으면 호출이 가능하다.\
		
//			# 상위 관계 외부 패키지에서 클래스에서
//				protected 접근제어자가 설정된 필드에 대하여
//				객체 생성형식으로 호출하면 접근을 할 수 없고
//				반드시 상속관계에서 호출하는 형식으로 처리하여야 접근 가능
//				class Son01 extends WoodCutter{
//					void callWoodCutter() {
//						WoodCutter w = new WoodCutter();
//						System.out.println(w.inheritmoney);
//						// protected지만 객체생성 참조.변수 필드이기에 접근 불가
//						System.out.println(inheritmoney);
//						// 상속관계 바로 필드호출가능	
//					}
//				}
//
//		      4) 아래 구조에 의해 접근제어자에 따른 호출 내용을 처리해 보자.
//		         패키지1 : 참외, 사과, 멜론(참외상속), 바나나, 딸기
//		         패키지2 : 당근, 양파
//		         패키지3 : 수박(참외상속)
//		         패키지1의 참외에 접근제어자 4가지와 호출하는 메서드를 정의하고 각 클래스에서 호출해보세요.
	   /*
	    참외 클래스에 접근제어자 선언
	     class public class KorMelon {
	  	 public String name ="참외";
	  	 protected String kind="과일";
	  	 String color="노란색";
	  	 private String taste="달다";
	  	 }
	  	 
	      1. class(사과, 바나나, 딸기)는 private 빼고는 다 호출할 수 있고,
	  	 public void korMelonInfo1() {
	  		 KorMelon km = new KorMelon();
	  		 System.out.println("public"+km.name); 접근제어자가 public이라 접근 가능
	  		 System.out.println("protected"+km.kind); 같은 패키지 안에 있어서 접근 가능
	  		 System.out.println("default(x)"+km.color); 같은 패키지 안에 있어서 접근 가능
	  		 System.out.println("private"+km.taste); (x)
	  	 }
	  	 
	  	 public void korMelonInfo2() { <== 상속받지 않아서 메서드 전부 호출 안됨
	  		 System.out.println("public"+name); 
	  		 System.out.println("protected"+kind); 
	  		 System.out.println("default(x)"+color); 
	  		 System.out.println("private"+taste); 
	  	 } // 
	  	 
	      2. class(당근, 양파)는 public만 호출할 수 있음
	    public void korMelonInfo1() {
	  		 KorMelon km = new KorMelon();
	  		 System.out.println("public"+km.name); 접근제어자가 public이라 접근 가능
	  		 System.out.println("protected"+km.kind); (x) : 다른 패키지이고 상속받지 않아서 불가능 
	  		 System.out.println("default(x)"+km.color); (x) : 다른 패키지라 불가능
	  		 System.out.println("private"+km.taste); (x) : 접근제어자가 private라 접근 불가능
	  	 }
	  	 
	  	 public void korMelonInfo2() { <== 상속받지 않아서 메서드 전부 호출 안됨;
	  		 System.out.println("public"+name); 
	  		 System.out.println("protected"+kind); 
	  		 System.out.println("default(x)"+color); 
	  		 System.out.println("private"+taste); 
	  		 // 
	  		  
	      3. class(수박)은 public이랑 protected만 호출할 수 있음
	    public void korMelonInfo1() {
	  		 KorMelon km = new KorMelon();
	  		 System.out.println("public"+km.name); 접근제어자가 public이라 접근 가능
	  		 System.out.println("protected"+km.kind); (x) : 상속 받았지만 객체 생성 후 호출 방식이라 불가능
	  		 System.out.println("default(x)"+km.color); (x) : 같은 패키지라 접근 가능
	  		 System.out.println("private"+km.taste); (x) : 접근제어자가 private라 접근 불가능
	  	 }
	  	 
	  	 public void korMelonInfo2() { // <== 상속 받아기 때문에 호출 가능
	  		 System.out.println("public"+name); 
	  		 System.out.println("protected"+kind); 
	  		 System.out.println("default(x)"+color); 
	  		 System.out.println("private"+taste); (x) : private 접근 불가능
	  
	       */
//		[1단계:개념] 2. this.필드, this()의 사용에 있어서 차이점을 예제로 기술하세요.
//	       this.필드는 지역변수와 전역변수를 구분하여 현재 변수를 할당하거나 사용할 때 활용되지만,
//		   this()는 생성자가 여러개 선언되어 있거나, 같은 클래스의 다른 생성자를 호출해서 데이터를 할당할 때 사용된다.
//			
//		class Product{
//			String pmane;
//			int price;
//		public Product() {
//			System.out.println(this);
//		}
//		public Product(String pmane, int price) {
//			this(pmane);
//			this.price = price;  
//			}
//		}
//		[1단계:확인] 3. Team(팀명,승,무,패,승률)을 생성자의 매개변수(0~5)로 오버 로딩 선언하여 this()로 호출 처리하게 하세요
		class Team
//		[1단계:개념] 4. this, super의 차이를 상속관계에서 필드, 생성자, 메서드의 관점에서 예제를 통해 기술하세요.
//		  	this 현재 클래스가 가지고 있는 멤버를 지칭
//		  	즉 클래스에서 선언된 멤버와 현재 클래스에 동일한 이름의 멤버가 있을 경우
//		  	사용한다.
//		  	super 상위 클래스가 가지고 있는 멤버를 지칭
//		  	부모 클래스 안에 같은 이름의 메소드나 변수가 있어도 자식 클래스에서 사용하기 위해 사용한다.
//		  	
//		  	class Papa {
//		  		String name="아버지";
//		  		String char="엄격함";
//		  		Papa(String name){
//		  			System.out.println("아버지클래스 생성자");
//		  		}
//		  		void callPapa() {
//		  			System.out.println(char);
//		  		}
//		  	}
//		  	class Son extends Papa {
//		  		String name="아들";
//		  		Son() {
//		  			super("상위 클래스"); 
//		  			System.out.println("아들 클래스 생성자");
//		  		}
//		  		Son(String name){
//		  			this();
//		  		}
//		  		void callPapa(){
//		  			super.callPapa();
//		  			System.out.println(this.name);
//		  			System.out.println(super.name);
//		  		}
//		  	}
//		[1단계:개념] 5. 메서드 오버라이딩(overriding)을 메서드 오버로딩(overloading)과의 차이점을 기술해보세요.
//			오버로딩(Overloading)은 메서드명은 같지만 타입이나 변수가 다른 새로운 메서드를 생성하는 것이고,
//			오버라이딩(Overriding)은 부모 클래스에서 상속 받은 메서드의 내용을 재생성하는 것이다.
//			접근 제어자는 하위에서는 동일하거나 더 넓은 접근제어자를 사용하여야 한다
//			private < default < protected < public
//		[1단계:개념] 6. 선택자중 태그, 아이디, 클래스, 중첩적용의 예를 만들고 설명하세요.
//		<style type="text/css">
//		태그 처리
//		h1{color:blue;} 
//		아이디 선택자로 처리하는 방식
//		#id01{color:babypink;} 페이지에서 하나만 적용할 때 활용한다.
//		클래스 선택자로 처리
//		.cls01{color:sagegreen;} 선언된 여러 클래스를 적용할 수 있다.
//		여러 선택자를 중첩적용
//		h1{color:violet;}
//		cls01{color:sagegreen;}
//		#id01{color:babypink;}
//		</style>
	}

}
