package javaexp.a08_relation.access.ourhome;

public class Mine {
	// private로 Mine의 개인 비밀을 할당하고
	// 같은 패키지/ 다른 패키지 접근 여부를 확인하시요
	private String secret="결혼기념일은 다른날이 아닌가?";
	String trvelPlan = "여행계획";
	void myInfo () {
		Mine my = new Mine();
		System.out.println("private 접근:"+my.secret);
		System.out.println("default 접근:"+my.trvelPlan);
	}
	void familyTrip() {
		MyMother mm = new MyMother();
		System.out.println("가족 여행"+mm.havePlan);
	}
	void supriseParty() {
		MyFather pp = new MyFather();
		System.out.println("깜짝 결혼기념일 파티"+pp.surprise);
	}
	void callFatherInfo(){
		MyFather f = new MyFather();
		// 접근제어자가 private임
		System.out.println("private"+f.fatherSec);
		System.out.println("default"+f.ourHomeSec);
		System.out.println("protected"+f.surprise);
		System.out.println("public"+f.tellEvery);
	}
		// 상속 관계가 아님
	void callFatherInfo2(){
		System.out.println("private"+fatherSec);
		System.out.println("default"+ourHomeSec);
		System.out.println("protected"+surprise);
		System.out.println("public"+tellEvery);
	}
}
