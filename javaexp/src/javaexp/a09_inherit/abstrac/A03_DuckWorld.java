package javaexp.a09_inherit.abstrac;

public class A03_DuckWorld {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Duck du = new NomalDuck();
		du.swimming();
		du.fly();
		Duck du2 = new Mallard();
		du2.swimming();
		du2.fly();
		Duck du3 = new RubberDuck();
		du3.swimming(); du3.fly();
//		du3.usingForKids(); 추가된 다형성에서 처리되지 않는다.(다형성의 한계)
		RubberDuck du4 =(RubberDuck)du3; // 타입캐스팅
		du4.usingForKids();
		RubberDuck du5 = new RubberDuck(); // 초기에 생성할 때, 해당 객체로 
		du5.usingForKids();
	}

}
/*
ex) 아래와 같이 추상 클래스 Duck를 선언하여 main에서 호출하세요
Duck(추상)
	kind 종류(필드)
	매개변수 1개 생성자
	swimming() 수영울하다(공통)
	getKind() 공통
	fly() 추상 메서드
NomalDuck(실제클래스) 일반오리 fly() 날지 못한다
Mallard(실제클래스) 청둥오리 fly() 훨훨 난다
 

 */
abstract class Duck{
	/*
	 # 상속을 하면
	 1. 상위 생성자를 호출해야한다
	 	super(매개변수): 상위 클래스에서 선언된 생성자 호출
	 2. 추상 클래스일 때는 추상메서드를 반드시 재정의 하여야 한다.
	 	
	 */
	/*
	 하위에 RubberDuck
	 추상 클래스 상속받아서 처리하되
	 swimming을 재정의해서 목욕탕에서 놀다
	 추가메서드 usingForkids()아이들을 위해 만들어졌다.
	  
	 */
	private String kind;
	public Duck(String kind) {
		this.kind = kind;
	}
	// 하위 클래스에서 추가된 내용
	public void usingForKids() {
		System.out.println(getKind()+"는 아이들을 위해서 만들어졌다");
	}
	public void swimming(){
		System.out.println(kind+"가 수영을 하다");
	}
	
	public String getKind() {
		return kind;
	}
	// 추상 메서드
	public abstract void fly();
}

class RubberDuck extends Duck{

	public RubberDuck() {
		super("고무오리");
	}

	@Override
	public void fly() {
		System.out.println(getKind()+"는 날지 못한다");
	}

	@Override
	public void swimming() {
		super.swimming();
		System.out.println(getKind()+"가 목욕탕에서 놀다");
	}
	
}

class NomalDuck extends Duck{

	public NomalDuck() {
		super("집오리");
	}

	@Override
	public void fly() {
		System.out.println(getKind()+"는 날지 못한다");
	}
}

class Mallard extends Duck{

	public Mallard() {
		super("청둥오리");
	}

	@Override
	public void fly() {
		System.out.println(getKind()+"가 훨훨 날아간다");
	}
}