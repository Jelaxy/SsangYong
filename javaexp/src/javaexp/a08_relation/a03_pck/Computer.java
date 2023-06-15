package javaexp.a08_relation.a03_pck;

import javaexp.a08_relation.a04_pck.Mouse;

public class Computer {

	Mouse m01; // import 단축키 ctrl+shift+o
//	Keyboard k01; 외부 패키지라 접근 불가능
	void call() {
		m01 = new Mouse();
		System.out.println(Mouse.);
	}
	
}
// ex) Mouse 생성자를 2개 (생성자 오버로딩규칙) public/x
//선언하고 call()에서 객체 생성여부 확인