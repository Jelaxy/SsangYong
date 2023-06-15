package javaexp.a08_relation.access.unclehome;

import javaexp.a08_relation.access.ourhome.MyFather;
import javaexp.a08_relation.access.ourhome.MyMother;

public class Uncle {
	void familyTrip() {
		MyMother mm = new MyMother();
//		System.out.println("가족 여행:"+mm.havePlan); <== 외부 패키지 접근 불가능
	}
	void callFatherInfo(){
		MyFather f = new MyFather();
		// 접근제어자가 private임
		System.out.println("private"+f.fatherSec);
		// 같은 패키지가 아님
		System.out.println("default"+f.ourHomeSec);
		// 같은 패키지도 아니고 상속이 아님
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
