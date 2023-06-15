package javaexp.a07_classObject;

public class A08_MethodRetExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Product11 p01= new Product11();
		// 주의 생성자는 호출마다 다른 heap영역을 만들기 때무에
		// 참조값이 달라져서 하나의 객체에 하나의 생성자만 사용할 수 있지만
		
		// 메서드는 참조명.메서드명(데이터..)로 같은 heap영역 위치에서 동일한 메서드를 2~3번 이상 호출 하더라도
		// 메모리 변경이 없다
		int tot01 = p01.totPay("사과",2000,5);
		System.out.println("총비용:"+tot01);
		System.out.println("총비용2:"+
		p01.totPay("오렌지",2500,3));
		int tot03 = p01.totPay("수박",12000,3);
		System.out.println("총비용3:"+tot03);
		
		ProductExp p02 = new ProductExp();
		System.out.println("#할인율 적용 처리#");
		int totp04=p02.totPri(50000,0.3);
		System.out.println("최종금액:"+totp04);
		int totp05=p02.totPri(120000,0.14);
		System.out.println("최종금액:"+totp05);
		int totp06=p02.totPri(50000,0.08);
		System.out.println("최종금액:"+totp06);
		
		Student01 s01 = new Student01();
		System.out.println("학생성적 평균");
		double aver01 = s01.records("홍길동", 78, 88, 55);
		System.out.println("평균성적:"+aver01);

	}

}
//물건 객체를 생성해서 구매할 물건과 가격, 갯수를 입력받아 총비용을 리턴하는 처리를 해보자
class Product11{
	int totPay(String pname, int price, int cnt) {
		System.out.println("입력한 물건명:"+pname);
		System.out.println("가격:"+price);
		System.out.println("갯수:"+cnt);
		int tot=price*cnt;	
		return tot;
	}
}

//ex) 물건 가격과 할인율을 입력받아서 할인율이 적용된 금액을 casting해서 정수형(int)로 리턴하요 main()에서 호출하세요
//    할인율100% ==> 1.0 50% ==> 0.5
//    3000원 10%  3000*0.1(할인금액) 3000-3000*0.1
//    메서드 출력 내용: 물건가격@@@, 할인율@@
//    메서드 리턴내용 할인율이 적용된 금액
class ProductExp{
	int totPri(int pPrice, double sale) {
		System.out.println("가격"+pPrice);
		int salePer = (int)(pPrice*100);
		System.out.println("할인율"+salePer+"%");
		int totP = pPrice-(int)(pPrice*sale);
		return totP;
	}
}
// ex) Student01 클래스 선언하고 records()메서드에 이름 ,국어, 영어, 수학 입력받고
//     해당 내용을 출력, 평균(double)을 리턴처리하세요
// Student01 st = new Student01();
// System.out.prinln("평균"st.records("홍길동",78,80,60));
// double avg = st.records("김길동",89,89,63));
// sysout("평균:"+avg)
class Student01{
	double records(String name, int korMark, int engMark, int mathMark) {
		System.out.println("이름:"+name);
		System.out.println("국어성적:"+korMark);
		System.out.println("영어성적:"+engMark);
		System.out.println("수학성적"+mathMark);
		int tot = korMark+engMark+mathMark;
		System.out.println("총점:"+tot);
		return tot/3.0;
	}
}