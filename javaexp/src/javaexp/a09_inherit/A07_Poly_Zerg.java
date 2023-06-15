package javaexp.a09_inherit;

public class A07_Poly_Zerg {

	public static void main(String[] args) {
		/*
		StarCraft
		외계종족
			인간(Terra)
			프로토스(Protoss)
			저그(Zerg) - 파충류(변태과정을 거쳐서 성충)하고비슷
				Larba(애벌레)
				
			Dron Zergling Hydralisk.....
			
			이 다형성을 처리해주는 포함하는 클래스 정의
			class ZergUser{
				String tcolor;
				Larba larba;
				ZergUser(tcolor){
					this.tcolor=tcolor+"저그사용자";
				}
				void makeUnit(Larba larba) {
					this.larba = larba;
					System.out.println(larba.getUnit()+"유닛을 생성하다!");
				}
				void attack(){
					System.out.println(larba+"공격합니다");
					if(larba==null){
						System.out.println("아직 유닛이 만들어지지 않았습니다");
					}else{
						// 다형성에 의해서 할당된 객체의 재정의한 메서드로 처리가 된다.
						larbr.attack();
					}
				}
		 */
		
		// 라바가 첫번째 유닛인 드론으로 변형된다.
		Larba l1 = new Dron();
		l1.attack(); // 재정의한 내용이 다양하게 처리(다형성)
		Larba l2 = new Zergling();
		l2.attack();
		// ex) Hydralisk 히드라 attack 공격력 15, 원거리 공격합니다
		Larba l3 = new Hydralisk();
		l3.attack();

	}

}

class Larba {
	private String unit;
	public Larba(String unit) {
		this.unit = unit;
	}
	public void attack() {
		System.out.println(unit+"이/가 공격을 시도");
	}
	public String getUnit() {
		return unit;
	}
	
}
class Dron extends Larba {
	public Dron() {
		super("드론");
	}

	@Override
	public void attack() {
		super.attack();
		System.out.println("공격력 5이고 자원 채집만 합니다.");
	}
	
}
class Zergling extends Larba {
	public Zergling() {
		super("저글링");
	}

	@Override
	public void attack() {
		super.attack();
		System.out.println("근거리 공격, 공격력 5이고 빠르게 이동한다.");
	}
	
}
class Hydralisk extends Larba {

	public Hydralisk() {
		super("히드라");

	}

	@Override
	public void attack() {
		super.attack();
		System.out.println("공격력 10, 징그럽게 생겼다");
	}
	
	
}