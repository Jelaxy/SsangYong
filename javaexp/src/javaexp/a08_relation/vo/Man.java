package javaexp.a08_relation.vo;

public class Man {
	private String mUse;
	private Woman woman;
	
	public Man() {
		// TODO Auto-generated constructor stub
	}
	public void couple(Woman woman) {
		this.woman=woman;
		System.out.println(woman.getUseApp()+"사용합니다");
	}
	
	public void meetsGirl() {
		System.out.println("어플에 접속합니다.");
	if(woman==null) {
		System.out.println("상대방이 어플을 사용하지 않아 매칭이 어렵습니다.");
	}else {
		woman.coupleMatch();
		System.out.println("커플성사!!");
		System.out.println("어디사세요?");
		}
	}
	
	public String getMname() {
		return mUse;
	}

	public void setMname(String mUse) {
		this.mUse =mUse;
	}

	public Woman getWoman() {
		return woman;
	}

	public void setWoman(Woman woman) {
		this.woman = woman;
	}

	public Man(String mUse, Woman woman) {
		this.mUse = mUse;
		this.woman = woman;
	}
}

	