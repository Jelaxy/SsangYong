package javaexp.a08_relation.access.story2.sonhome;

import javaexp.a08_relation.access.story2.woodhome.WoodCutter;

public class Son1 extends WoodCutter{
	public void callWoodInfo(){
		WoodCutter wc = new WoodCutter();
//		System.out.println("private:"+wc.privSec); 
//		System.out.println("default(x):"+wc.outHomeSec);
		
//		** 주의!!
//		상속은 해당객체를 내가 가지고 있는 것 같이 사용할 때를 말한다.
//		아래의 호출은 외부에 있는 생성된 객체의 특정 속성을 호출할 때 사용하는 형식이므로 에러 발생
//		System.out.println("protected:"+wc.inheritSec); 
		
		System.out.println("public:"+wc.announce); 
	}
	
	// 상속 클래스
	public void callWoodInfo2(){
		// private 개인
//		System.out.println("private:"+privSec); 
		// X default 같은 패키지
//		System.out.println("default(x):"+outHomeSec);
		// protected는 상속의 범위 안에서 외부 패키지라도 접근 가능
		System.out.println("protected:"+inheritSec); 
		System.out.println("public:"+announce); 
	}
}