package javaexp.a09_inherit.abstrac;

import java.util.ArrayList;


public class A02_CompanyAbstract {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		ex) 상위 추상 class Company 회사명, working() 공통 메서드, abstract earnMoney 돈을 버는 방법
			하위 실제 클래스 Hyundai, Samsung
		*/
		ArrayList<Company> comlist = new ArrayList<Company>();
		comlist.add(new Hyundai("400"));
		comlist.add(new Samsung("500"));
		System.out.println("내가 다니는 회사");
		for(Company com:comlist) {
			com.working();
			com.earnMoney();
		}
	}

}

abstract class Company{
	private String name;
	private String money;
	public Company(String name, String money) {
		this.name = name;
		this.money = money;
	}
	public void working() {
		System.out.println(name+"에서 일을 합니다");
	}
	public abstract void earnMoney();
	
	public String getMoney() {
		return money;
	}
}
class Hyundai extends Company{

	public Hyundai(String money) {
		super("현대", money);
	}
	@Override
	public void earnMoney() {
		System.out.println("한달에"+getMoney()+"를 법니다");	
	}
}
class Samsung extends Company{

	public Samsung(String money) {
		super("삼성", money);
	}
	@Override
	public void earnMoney() {
		System.out.println(getMoney()+"를 법니다");
		
	}
}
