package javaexp.z01_home;

import java.util.ArrayList;

public class A01_0424 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		2023-04-19
//		[1단계:개념] 1. 추상클래스와 일반 재정의 클래스의 차이점을 예제를 통해 기술하세요
			/* 
		    추상 클래스는 객체를 생성할 수 없다
			abstract class Fruit{
				private String kind;
				public abstract void eat();
			}
			*/
		/*
		 # 차이점
		 1. 상위 객체생서의 독립성
		 	일반 클래스는 가능하지만, 추상클래스는 불가능하다
		 	ex) 추상클래스 참조 = new 추상클래스(); (x)
		 2. 메서드의 재정의 강제성
		 	일반 클래스의 메서드는 재정의가 선택적이지만
		 	추상 클래스의 추상메서드는 반드시 재정의 하여야한다.
		*/
//		[1단계:개념] 2. Food를 추상클래스로 선언하고, name(음식종류), eat()공통메서드 @@을 먹다, taste()추상메서드로 다양한 맛을 출력
//		      좋아하는음식 3가지를 실제클래스를 선언하여 출력하세요.
		Food f1 = new Kimbob();
		f1.eat("김밥");
		f1.taste();
		Food f2 = new Kimchi();
		f2.eat("김치");
		f2.taste();
		Food f3 = new Coffee();
		f3.eat("커피");
		f3.taste();
//		[1단계:확인] 3. 위 내용을 DailyFoodSchedule로 1:다 관계로 먹는 사람과 일일 식사메뉴 3개를 Food타입 리스트로 처리할 수 있게 기능메서드 선언하여 출력하세요.
		ArrayList<DailyFoodSchedule> myDiets = new ArrayList<DailyFoodSchedule>();
		myDiets.add(new Morning("김밥"));
		myDiets.add(new Lunch("김치볶음밥"));
		myDiets.add(new Dinner("공복"));
		for(DailyFoodSchedule diet:myDiets) {
			diet.eating();
		}
//		[1단계:개념] 4. 인터페이스의 구성요소의 특징을 예제와 함께 선언하세요
		/*
		 interface Animal{
			String NAME="사자"; //  <== public static final 생략됨    1) 상수 필드(안터페이스.필드-독립적 사용)
			void predation(); // <== public abstract 생략됨		   2) 추상 메서드(하위 객체를 통해서만 사용가능)
		}
		3) 디폴트 메서드(하위객체를 통해서만 사용가능)
		4) 정적 메서드(인터페이스.메서드()-독립적사용)
		*/
//		[1단계:확인] 5. FishingWay goFishing() 인터페이스를 선언하여, 상속받은 실제클래스를 2개를 선언하고, 실제클래스 Fisher에 이름과 인터페이스 FishingWay를 선언하고
//		      addFishingSkill() 할당하게 하면  해당 어부가 낙시하는 goFishing()메서드를 호출하여 처리하세요.
		Fisher fi1 = new Fisher();
		fi1.goFishing();
		fi1.addFishingSkill(new Fishing());
	}

}
// [1단계:개념] 2번문제 
abstract class Food{
	private String kind;
	public void eat(String kind) {
		this.kind=kind;
		System.out.println(kind+"을/를 먹다");
	}
	public abstract void taste();
}
class Kimbob extends Food{

	@Override
	public void taste() {
	System.out.println("맛이 고소하다");
	}
}
class Kimchi extends Food{

	@Override
	public void taste() {
		System.out.println("맛이 새콤하다");
	}
}
class Coffee extends Food{

	@Override
	public void taste() {
		System.out.println("맛이 쌉사름하다");
	}
}
//----------------------------------------------------------------
// [1단계:확인] 3번문제 
abstract class DailyFoodSchedule{
	private String Food;
	public DailyFoodSchedule(String Food) {
		this.Food=Food;
	}
	public abstract void eating();
}

class Morning extends DailyFoodSchedule{

	public Morning(String Food) {
		super("아침");
	}

	@Override
	public void eating() {
		
	}
}
class Lunch extends DailyFoodSchedule{

	public Lunch(String Food) {
		super("점심");
	}

	@Override
	public void eating() {
		
	}
}
class Dinner extends DailyFoodSchedule{

	public Dinner(String Food) {
		super("저녁");
	}

	@Override
	public void eating() {
		
	}	
}
//----------------------------------------------------------------
// [1단계:확인] 5번문제
interface FishingWay {
	void goFishing();
}
class Fishing implements FishingWay{

	@Override
	public void goFishing() {
		System.out.println("낚시를 하러 가다");
	}
}
class Fisher implements FishingWay{
	private String way;
	private FishingWay fishingWay;
	
	public void addFishingSkill(FishingWay fishingWay) {
		this.fishingWay=fishingWay;
		System.out.println("낚시방법을 배웠다");
	}
	
	@Override
	public void goFishing() {
		System.out.println("낚시를 시작하다");
		if(fishingWay==null) {
			System.out.println("낚시방법을 모릅니다");
		}else {
			fishingWay.goFishing();
		}
	}
}
