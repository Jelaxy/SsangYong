package javaexp.a09_inherit;

public class A08_PolyEXp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
	ex) A08_PolyEXp
	Duck 상위
		종류 할당
		flying() 재정의
	NomalDuck
		집오리
		flying() 날지 못한다.
	Mallard
		청둥오리 
		flying() 날아다닌다.
	상/하위 구조로 상속하고 다형성을 처리하여 메서드로 호출
	
*/
		Duck d1 = new NomalDuck();
		d1.flying();
		Duck d2 = new Mallard();
		d2.flying();
		
	}

}

class Duck {
	private String kind;

	public Duck(String kind) {
		this.kind = kind;
	}
	public void flying() {
		System.out.println(kind+"가 늦은밤 잠에서 깨어 날개를 흔들었죠");
	}
	
}
class NomalDuck extends Duck {
	
	public NomalDuck() {
		super("집오리");
	}

	@Override
	public void flying() {
		// TODO Auto-generated method stub
		super.flying();
		System.out.println("오리는 날수없다. 엄마에게 혼났죠");
	}

}
class Mallard extends Duck {

	public Mallard() {
		super("청둥오리");
	}

	@Override
	public void flying() {
		// TODO Auto-generated method stub
		super.flying();
		System.out.println("날아올라 저 하늘 멋진 달이 될래요");
	}

}