package javaexp.a09_inherit.vo;

public class Son extends Father {
	String workKind="개발자";
	void playBaseBall() {
		System.out.println("야구를 잘한다");
	}
	void callSuper() {
		System.out.println(shape);
//		System.out.println(age); // 접근제어자가 private
		addAge(24); // 접근가능 상위에 age 를 간접적으로 할당처리
		System.out.println("간접적으로 호출"+getAge());
	}
}