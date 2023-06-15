package javaexp.a09_inherit;

public class A04_Polymorphism {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 다형성(Polymorphism)
		1. 공통 멤버를 가진 상위 클래스를 상속받은 하위 클래스에서 
		   기능적 분리를 하는 메서드를 상위 클래스의 이름(매개변수)과 동일하게 정의하여 다양한 기능을 처리하는 것을 말한다.
		2. 상위 ==> 여러가지 하위 객체를 통해, 다양한 기능을 처리하는 것을 말한다.
		   ex) 컴퓨터 하위에 부품 (Cpu, Ram, Ssd,...)
		   	    class Part{
		   	    	void showInfo()
		   	    }
		   	    class Cpu extends Part{
		   	    	void showInfo(): 메서드 오버라이딩
		   	    		super.showInfo()
		   	    		각 부품별로 추가되는 기능 처리
		   	    }
		   	    class Ram extends Part{}
		   	    class Ssd extends Part{}
		   	    // 계속 추가 부품을 처리 가능
		   	    class Computer{
		   	   	String kind;
		   	   	Cpu c;
		   	   	Ram r;       ==> Part[] (상위 객체)
		   	   	Ssd s;
		   	   	...
		   	   	GrapCar....
		   	   	개별적으로 Computer 클래스에서 부품이 추가될 때 마다 변경하는 것이 아니라
		   	   	공통상위 클래스를 선언하여 해당 부품들이 다형성에 의해서 추가 될 수 있는
		   	   	보다 유연한 구조로 처리가능하게 하는 것이 다형성의 핵심이라고 할 수 있다.
		   	   	
		   	   	void addPart(Part p)
		   	   		plist.add(p)
		   	   	void showPart()
		   	   		for(part p:plist)
		   	   			p.showInf(); //오버라이딩
		   	   }
		   	  com.addPart(new Cpu());
		   	  com.addPart(new Ram());
		   	  com.addPart(new Ssd());
		   	  Part p1 = new Cpu();
		   	  다형성은 상속하는 상위 객체의 메모리에 여러가지 하위 객체들이 할당되어
		   	  기능적으로 다양한 처리를 하는 구조를 말한다.
		   	  Part p2 = new	Ram();
		   	  Part p3 = new Ssd();
		3. 기본 형식
			1) 1단계
			  상속하는 부모 클래스 변수 = new 자식 클래스 생성자();
			   class Animal{}
			   class Cat extends Animal{}
			   class Bird extends Animal{}
			   
			   Animal an01= new Cat();
			   Animal an02= new Bird();
			   an01.sound(); // 다양한 기능적 재정의 메서드 처리
			   an02.sound(); // 다양한 기능적 재정의 메서드 처리
			   
			   이들을 처리하는 포함 관계 클래스에서 1:1처리와 1:다관계 처리를 한다.
			   class Zoo{
			   	private Animal ani
			   	// 동물원에 여러 종류 중 하나의 동물만 할당할 수 있게 처리
			   }
			   class Zoo{
			   	private ArrayList<Animal> animals;
			   	// 동물원에 여러 종류의 다양한 동물들을 할당할 수 있게 처리
			   }
			   
			   }
			   
			2) 2단계
			   상위클래스 : 큰 메모리
			   하위클래스 : 작은 메모리
			   - 큰 메모리 <== 작은 메모리; promote(자동형변환)
			  		상위객체 == 하위 객체;
			   - 작은 메모리 <== (작은 메모리)큰 메모리; casting(강제 형변환)
			   		하위 객체 == (하위 클래스)상위 객체 ***
			   		ps) 상위<generic> ==> 상위<하위객체>
			   		ArrayList<Animal> alist = new ArrayList<Anmal>()
			   		alist.add(new Cat());
			   		alist.add(new Dog());


		*/
		Animal ani01 = new Cat();
		ani01.sound();
		Animal ani02 = new Dog();
		ani02.sound();
	}

}
// 하위 클래스 Dog 재정의 하고 main()에서 위와 같이 다형성 처리(상위=하위)하여 오버라이딩 메서드 호출
class Animal{
	private String kind;

	public Animal(String kind) {
		this.kind = kind;
	}
	public void sound() {
		System.out.println(kind+"가 운다!");
	}
}
class Cat extends Animal{

	public Cat() {
		super("고양이");
	}
	// overriding
	@Override
	public void sound() {
		super.sound();
		System.out.println("야옹! 야옹!");
	}
}
class Dog extends Animal{
	
	public Dog () {
		super("강아지");
	}
	public void sound() {
		super.sound();
		System.out.println("멍! 멍!");
	}
}
/*
# 폴리모피즘이 일어나는 실제 구조
	Part
	  부품명
	  사양
	  Part(부품명, 사양)
	  showInfo() - 부품정보출력
	  			   실제 부품 객체들은 위 내용 + 상세기능 필요(각 부품마다 다름)
	Cpu
	 Cpu(사양)
		 super("CPU")
	 showInfo()
		 super.showInfo()
		 System.out.println("cpu는 컴퓨터의 핵심 중앙처리 부품입니다");
	Ram
	Ssd
	Gra...
	...
추가되어야 하는 상황..
새로운 부품이 추가되더라도 컴퓨터의 기본 코드는 변경되지 않고도 처리할 수 있는 방법?? ==> 다형성 처리
	
	Computer <== 어떤 부품이라도 컴퓨터에 할당 가능
	  name
	  part p;
	  생성자..
	  void addPart(Part p){
	  	this.p = p;
	  	// 부품...
	  }
	  void showInfo(){
		컴퓨터...
		if(p!=null){
			p.showInfo();
		}else{
			System.out.println("부품이 장착되지 않았습니다.");
	}
	
** # 구현 순서
1. 부품 Part
2. 하위 Cpu
3. Computer
  1단계 Part
  2단계 Part[]
  
*/