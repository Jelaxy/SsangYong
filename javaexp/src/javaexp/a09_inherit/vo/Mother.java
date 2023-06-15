package javaexp.a09_inherit.vo;

public class Mother {
	String charac="현명하다";
	private int height=160;//접근제어자 private 직접 외부에서 접근할 수 없음
	
	void readBook() {
		System.out.println("책을 많이 읽는다");
	}
	void bornHei(int height) {
		this.height+=height;
		System.out.println("키가 "+(height>0?"더크다":"같거나 작다"));
	}
	int growHei() {
		return height;
	}
}
