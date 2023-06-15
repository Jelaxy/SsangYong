package javaexp.a08_relation.access.ourhome;

public class Brother extends MyFather{
	void familyTrip() {
		MyMother mm = new MyMother();
		System.out.println("가족 여행:"+mm.havePlan);
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
