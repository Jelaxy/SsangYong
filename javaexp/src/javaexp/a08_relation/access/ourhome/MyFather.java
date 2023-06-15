package javaexp.a08_relation.access.ourhome;

public class MyFather {
	private String fatherSec = "비상금으로 게임기 구매";
	String ourHomeSec = "현관 비밀번호 바꿈";
	protected String surprise= "여행 목적이 서프라이즈 결혼기념일 파티";
	public String tellEvery = "아들의 대학 합격 축하 여행";
	
	void myInfo () {
		Mine my = new Mine();
//		System.out.println("private 접근:"+my.secret);
		System.out.println("default 접근:"+my.trvelPlan);
	}
	void callFatherInfo(){
		MyFather f = new MyFather();
		System.out.println("private"+f.fatherSec);
		System.out.println("default"+f.ourHomeSec);
		System.out.println("protected"+f.surprise);
		System.out.println("public"+f.tellEvery);
	}
	// 상속 관계
	void callFatherInfo2(){
		System.out.println("private"+fatherSec);
		System.out.println("default"+ourHomeSec);
		System.out.println("protected"+surprise);
		System.out.println("public"+tellEvery);
	}
}
