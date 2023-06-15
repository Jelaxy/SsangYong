package javaexp.a08_relation.access.story1.friendship;

import javaexp.a08_relation.access.ourhome.MyFather;

public class Hunter {
	void callWoodCutterInfo() {
		// public class {WoodCutter
		// ==> WoodCutter wc 가능
		// default 생성자 : public WoodCutter(){}
		//==> new WoodCutter(); 가능
//		WoodCutter wc = null;
//		wc= new WoodCutter();
//		System.out.println("private 접근 제어"+wc.hiddenCloth);
		
		// 패키지가 다르므로 default 접근제어자의 구성요소는
		// 접근이 불가능하다(에러발생)
//		System.out.println("defualt 접근 제어"+wc.hiddenDeer);
	}
}	

/*
ex) javaexp.a08_relation.access에
ourhome 패키지 생성
	Father Mother Brother 클래스 생성
	Mine
		X 우리가족 여행계획 : 변수로 설정 할당
unclehome 패키지 생성
	Unkle 클래스 생성
	Mine 클래스에 대해 우리가족 여행계획 호출 처리 메서드가 가능한 범위 확인
 */