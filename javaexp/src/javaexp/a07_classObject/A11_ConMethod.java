package javaexp.a07_classObject;

public class A11_ConMethod {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 생성자와 메서드를 활용한 객체 구현
		1. 생성자는 주로 객체를 생성할 때, 초기 데이터를 설정할 때 사용
		2. 메서드는 계속 기능적인 처리를 하여, 외부에 변경되는 데이터를 입력받거나 해당 데이터를 로직에 의해
		   리턴할 때, 주로 활용된다
		 */
		Car c1 =new Car("그랜저");
		c1.driving();
		c1.addFuel(20);
		System.out.println("현재속도"+c1.stepPedal()+"km/h");
		System.out.println("현재속도"+c1.stepPedal()+"km/h");
		System.out.println("현재속도"+c1.stepPedal()+"km/h");
		c1.driving();
		c1.driving();
		c1.driving();
		
		Calculator02 cal1 = new Calculator02(25,5);
		int rs = 0;
		rs = cal1.plus();
		System.out.println("결과:"+rs);
		rs = cal1.minus();
		System.out.println("결과:"+rs);
		rs = cal1.multi();
		System.out.println("결과:"+rs);
		rs = cal1.divide();
		System.out.println("결과:"+rs);
	}

}
// ex) Calculator02 생성자를 통해서 변수 2개를 받아서 기능 메서드 plus(), minus(), multi(), divide()
//     출력 @@ + @@ = @@
//     리턴값을 연산결과를 리턴하게 하세요

class Calculator02{
	// 필드
	// 생성자(두개 데이터)
	// 메서드1()
	// 메서드2()
	// 메서드3()
	// 메서드4()
	int num01;
	int num02;
	public Calculator02(int num01, int num02) {
		this.num01 = num01;
		this.num02 = num02;
	}
	public Calculator02() {
		// TODO Auto-generated constructor stub
	}
	int plus() {
		System.out.println(num01+"+"+num01);
		return num01+num02;
	}
//	int plus() {
//		int tot = num01=num02;
//		System.out.println(num01+"+"+num01);
//		return tot;
//	} // 지역변수로 리턴하는 법
	int minus() {
		System.out.println(num01+"-"+num02);
		return num01-num02;
	}
	int multi() {
		System.out.println(num01+"x"+num02);
		return num01*num02;
	}
	int divide() {
		// 나눗셈의 경우 0으로 나누면 예외가 나오기 때문에
		// 3항 연산자로 처리
		System.out.println(num01+"÷"+num02);
		int sum = num02==0?0:num01/num02;
		return num01/num02;
	}
}

class Car{
	int speed;
	int fuel;
	String kind;
	public Car() {
		// TODO Auto-generated constructor stub
	}
	public Car(String kind) {
		this.kind = kind;
	}
	void addFuel(int cc) {
		//기름을 주입한다.
		fuel+=cc;
		System.out.println("기름을 주입한다"+cc);
	}
	int getFuel() {
		// 현재 기름량 확인
		return fuel;
	}
	int stepPedal() {
		System.out.println("엑셀을 밟다!");
		speed+=10;
		return speed; 
	}
	void driving() {
		
		if(fuel>0 && speed>0) {
			System.out.println(kind+"자동차가 운행을 한다.");
			fuel-=10;
			System.out.println("운행하여 휘발유를 10감소해서 지금:"
								+fuel+"cc남았습니다");
		}else {
			if(fuel<=0) {
				System.out.println("휘발유가 없습니다.");
			}
			if (speed<=0) {
				System.out.println("엑셀을 통해 속도를 올려야합니다.");
			}
		}
	}
}