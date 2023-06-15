package javaexp.a09_inherit.vo;

public class Daugther extends Mother{
	String cooking="요리를 잘한다";
	void bACheif() {
		System.out.println("#딸의 재능#");
		System.out.println("#상위로 받은 특징#");
		System.out.println(charac);//상속이기에 바로 사용가눙
		readBook();//상속받은 메서드라 바로 호출 가능
		System.out.println("#현객체의 추가 필드#");
		System.out.println(cooking);
	}
	void callSuper1() {
		System.out.println("엄마 키와 비교");
		bornHei(-5);
		System.out.println(growHei());
	}
}
