package javaexp.a08_relation.access.story1.friendship;

import javaexp.a08_relation.access.story1.WoodCutter;

public class Deer {
	void callWoodCutterInfo() {
		WoodCutter wc= new WoodCutter();
//		System.out.println("private 접근 제어"+wc.hiddenCloth);
//		private 접근제어자는 같은 패키지라도 접근이 안된다.
		System.out.println("defualt 접근 제어"+wc.hiddenDeer);
	}
	
} 
