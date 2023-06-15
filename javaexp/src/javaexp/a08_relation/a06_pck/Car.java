package javaexp.a08_relation.a06_pck;

class Car {
	Bus b1;
	void call() {
	b1 = new Bus();
	b1 = new Bus(7780);
	b1 = new Bus("부산",7780);
	System.out.println(b1.no);
	System.out.println(b1.target);
//	System.out.println(b1.driver);
//	같은 패키지에 있더라도 접근 제어자가 private 이기에 직접적인 접근이 안된다.
	b1 = new Bus("인천",9999,"마길동");
	b1.callInfo();
}
}
