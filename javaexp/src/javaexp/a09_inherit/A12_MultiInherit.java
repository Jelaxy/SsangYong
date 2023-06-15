package javaexp.a09_inherit;

public class A12_MultiInherit {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 인터페이스의 다중 상속 기원
		1. 상위로 여러개의 인터페이스를 상속받아서
		2. 하위 실제 클래스는 선언할 수 있다.
		3. 기본 형식
			interface 인터페이스1
				추상메서드1
			interface 인터페이스1
				추상메서드2
			인터페이스만 여러개를 상속 받아 사용할 수 있다
			class 다중상속한 실제객체 implements 인터페이스1, 인터페이스2{
				추상메서드1 재정의
				추상메서드2 재정의
			ex) Wing인터페이스 Swimming인터페이스
				class MultiSkilRobot implements Wing, Swimming{
				
			}
		 */
		MultiSkil01 ms01 = new MultiSkil01();
		ms01.allSkil();
		MultiSkil02 ms02 = new MultiSkil02();
		ms02.allSkil();
		// ex) StudyWay study(), PlayerWay play()
		//	   인터페이스를 선언하고
		//	   두 개를 implements한 실제 객체 Students01, Students02
		//	   위 인터페이스를 재정의한 내용을 출력하는 메서드를 호출
		Students01 st01 = new Students01();
		st01.doingAll();
		Students02 st02 = new Students02();
		st02.doingAll();
	}

}
interface StudyWay{
	void study();
}
interface PlayerWay{
	void play();
}
class Students01 implements StudyWay, PlayerWay{
	@Override
	public void play() {
		System.out.println("야구를 하다");	
	}

	@Override
	public void study() {
		System.out.println("프론트엔드를 공부하다");
	}
	public void doingAll() {
		play(); study();
	}
}
class Students02 implements StudyWay, PlayerWay{
	@Override
	public void play() {
		System.out.println("피아노를 치다");	
	}

	@Override
	public void study() {
		System.out.println("백엔드를 공부하다");
	}
	public void doingAll() {
		play(); study();
	}
}




class MultiSkil01 implements Wing, SwimmingWay{

	@Override
	public void Swimming() {
		System.out.println("호수가를 수영하다");
	}
	@Override
	public void fly() {
		System.out.println("우리동네를 나르다");
	}
	public void allSkil() {
		fly(); Swimming();
	}
}
class MultiSkil02 implements Wing, SwimmingWay{

	@Override
	public void Swimming() {
		System.out.println("바다를 수영하다");
	}
	@Override
	public void fly() {
		System.out.println("우리 나라 전국을 날다");
	}
	public void allSkil() {
		fly(); Swimming();
	}
}