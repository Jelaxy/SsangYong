package javaexp.y01_review.fruit.pack1;

import javaexp.a08_relation.access.story2.woodhome.WoodCutter;

public class KorMelon {
	 public String name ="참외";
	 protected String kind="과일";
	 String color="노란색";
	 private String taste="달다";
	 
	 public void korMelonInfo1() {
		 KorMelon km = new KorMelon();
		 System.out.println("public"+km.name); 
		 System.out.println("protected"+km.kind); 
		 System.out.println("default(x)"+km.color); 
		 System.out.println("private"+km.taste); 
	 }
	 public void korMelonInfo2() { //<== 상속 호출 메서드
		 KorMelon km = new KorMelon();
		 System.out.println("public"+name); 
		 System.out.println("protected"+kind); 
		 System.out.println("default(x)"+color); 
		 System.out.println("private"+taste); 
	 }
}
