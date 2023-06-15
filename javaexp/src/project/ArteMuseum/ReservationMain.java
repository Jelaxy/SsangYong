package project.ArteMuseum;

public class ReservationMain {

	public static void main(String[] args) {
		Reservation rv = new Reservation();
		Member mem = new Member("sh1n", "짱구", "01012341234", "xx@xx.com");		
					// 로그인 했다는 가정 하에 로그인된 사용자(Member) 객체 생성
		Museum ms = new Museum("제주", "5/14");			
					// 지점(Museum) 객체
		rv.setMember(mem);
		rv.setMuseum(ms);
		rv.reservate();
	}

}
