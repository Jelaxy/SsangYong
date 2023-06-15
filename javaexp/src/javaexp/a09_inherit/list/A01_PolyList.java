package javaexp.a09_inherit.list;

import java.util.ArrayList;

public class A01_PolyList {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 다형성 구조의 ArrayList 할당 처리
		1. 1:다관계 구조의 다형성을 ArrayList로 상위로 하여,
		2. 여러가지 추가되는 다형성 객체들을 할당하고,
		3. 재정의된 메서드를 호출하여 처리하는 형식을 말한다.
		4. 기본 형식
		  1) 상위 클래스 선언
		  2) 추가하는 하위 클래스 선언
		  3) 호출하는 곳에서
		   ArrayList<상위클래스> plist = new ArrayList<상위클래스>();
		   plist.add(new 하위클래스());
		   plist.add(new 하위클래스());
		  4) 반복문을 통해 재정의된 메서드로 각각의 기능을 처리하는 내용을 확인할 수 있다.
		  	for(하위클래스 : plist){
		  		하위객체의 재정의 메서드 호출
		  	}
		 */
		ArrayList<Duck> dlist = new ArrayList<Duck>();
		dlist.add(new NomnalDuck());
		dlist.add(new RubberDuck());
		dlist.add(new Mellard());
		for(Duck d:dlist) {
			d.swimming();
		}
		// ex) Part 클래스 하위 Cpu, Ram Ssd 만들고
		//		위 ArrayList<Part>에 담아서 재정의 된 메서드로 호출
		ArrayList<Part> plist = new ArrayList<Part>();
		plist.add(new Cpu("i7 3.4GHZ"));
		plist.add(new Ram("8G"));
		plist.add(new Ram("16G"));
		plist.add(new Ssd("256G"));
		plist.add(new Ssd("512G"));
		for(Part p:plist) {
			p.showInfo();
		}
		
	}

}
class Part{
	private String kind;
	private String spec;

	public String getKind() {
		return kind;
	}

	public Part(String kind, String spec) {
		this.kind = kind;
		this.spec = spec;
	}

	public void showInfo() {
		System.out.println("#부품정보#");
		System.out.println("#부품명:"+kind);
		System.out.println("#사양:"+spec);
	}
}
class Cpu extends Part{
	public Cpu(String spec) {
		super("CPU", spec);
	}
	@Override
	public void showInfo() {
		super.showInfo();
		// 추가되는 기능을 처리하여 각 부품별로 동일한 메서드지만 다양한 기능적 처리를 할 수 있게 하였다.
		System.out.println("CPU는 컴퓨터의 핵심 부품으로 중앙처리를 한다");
	}
}
class Ram extends Part{
	public Ram(String spec) {
		super("Ram메모리", spec);
	}
	@Override
	public void showInfo() {
		super.showInfo();
		System.out.println("Ram 메모리는 컴퓨터의 휘발성 임시 메모리를 처리한다");
	}
}
class Ssd extends Part{
	public Ssd(String spec) {
		super("Ssd", spec);
	}
	@Override
	public void showInfo() {
		super.showInfo();
		System.out.println("보조 기억 장치");
	}
}

class Duck{
	private String kind;

	public Duck(String kind) {
		this.kind = kind;
	}
	public void swimming() {
		System.out.println(kind+"가 수영을 한다");
	}
}
class NomnalDuck extends Duck{
	public NomnalDuck() {
		super("집오리");
	}
	@Override
	public void swimming() {
		super.swimming();
		System.out.println("집 앞 호수에서 즐겁게 수영을 한다.");
	}
}
class RubberDuck extends Duck{
	public RubberDuck() {
		super("고무오리");
	}
	@Override
	public void swimming() {
		super.swimming();
		System.out.println("욕조에서 아이들과 함께 수영을 한다.");
	}
}
class Mellard extends Duck{
	public Mellard() {
		super("청둥오리");
	}
	@Override
	public void swimming() {
		super.swimming();
		System.out.println("강가에서 무리들과 즐겁게 수영을 한다");
	}
}
