package javaexp.a08_relation.a01_pck;

//import javaexp.a08_relation.a02_pck.Man;
import javaexp.a08_relation.a02_pck.Product;

public class Person {
	// 외부 패키지에 있는 public class인 경우 호출
	Product p01;
	//외부 패키지에 public이 아닌 클래스 호출을 할 수 없다.
//	Man m01;
	void call() {
		// static이고 public이라서 객체 생성없이 바로 사용
		System.out.println(Product.pCode);
//		System.out.println(Product.no);
		//Product 클래스에서 넘어옴
		//no는 static이지만 no가 public이 아니기 때문에 접근 불가
		p01 = new Product();
		// Product 클래스에서 넘어옴
		// default 생성자가 public이기 때문에 생성이 가능하다.
//		p01 = new Product("사과"); // <== public이 아니라 default로 접근이 불가
		p01 = new Product(2500); // <== int 값은 public이라 접근이 가능
		p01 = new Product("사과",3000);
		System.out.println(p01.name); // name은 접근가능하지만(public)
//		System.out.println(p01.age); // age(x) 접근불가
	}
}
// ex) a08_relation 패키지 하위에
// 	   a03_pck, a04_pck
//	Computer public인 Mouse와 public이 아닌 Keyboard 생성
//	Computer에서 필드로 해당 객체를 선언