package javaexp.z01_home;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

public class A01_0502 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		2023-05-02
//		[1단계:확인] 1. 사용자 정의 예외 4지 선다 문제를 틀리면 사용자 예외 객체 생성, 맞으면 정답으로 처리.
		System.out.println("#문제를 맞춰보세요#");

		Scanner sc = new Scanner(System.in);

		try {
			System.out.println("다음 중 가장 건강한 사람은?");
			System.out.println("정답을 입력하세요");
			String [] quiz = new String[4];
			quiz[0] = "홍길동";
			quiz[1] = "김길동";
			quiz[2] = "신길동";
			quiz[3] = "고길동";
			String co = sc.nextLine();
			if(co==quiz[2]) {
				throw new QuizNumOne("정답입니다");
			}
		}catch(QuizNumOne e){
			System.out.println(e.getMessage());
		}
	

		
//		[1단계:개념] 2. Math.random()과 Random 클래스의 차이점을 기능 메서드 위주로 기술하세요.
//			Random은 객체를 생성한다
		 
//		[1단계:확인] 3. Random를 활용하여 10번 홀짝 게임 결과를 출력하세요.
//		System.out.println("#홀짝게임#");
//		for(int cnt=1; cnt<=10; cnt++) {
//			Random r1 = new Random();
//			System.out.println(r1);
//			if(cnt%2==1) { 
//				System.out.println("홀");
//			}else {
//				System.out.println("짝");
//			}
//		}
//		[1단계:확인] 4. Random를 활용하여 컴퓨터와 가위/바위/보 게임 3회를 실시하여 @승 @무 @패 출력하세요.
		int rock = (int)(Math.random()*3);
		System.out.println("#가위바위보 게임#:"+rock);
		System.out.print("컴퓨터의 가위바위보:");
		if(rock == 0) {
			System.out.println("가위!!");
		}else if(rock == 1) {
			System.out.println("바위!!");
		}else {
			System.out.println("보!!");
		}
	
//		[1단계:개념] 5. 컬렉션 상위 3개 인터페이스의 특징을 기술하세요.
//			1) List : 순서를 유지하고 저장
//		 		 중복저장가능
//			2) Set : 순서를 유지하지 않고 저장
//				 중복 저장 불가능
//			3) Map : 키와 값의 쌍으로 저장
//		 		 키는 중복저장 안됨
		
//		[단계별:확인] 
//		1단계 1~10까지 숫자 카드를 만들어 List<String>에 담아서, 임의의 숫자를 1개를 출력하세요
		List<String> trump = new ArrayList<String>();
		trump.add("1");
		trump.add("2");
		trump.add("3");
		trump.add("4");
		trump.add("5");
		trump.add("6");
		trump.add("7");
		trump.add("8");
		trump.add("9");
		trump.add("10");
		Random r2 = new Random();
		System.out.println(r2.nextInt(trump.size()+1));	
//		2단계 A~10,J,Q,K번호 문자로 만들어 List<String>를 임의의 카드를 7장을 출력하세요
		trump.add("J");
		trump.add("Q");
		trump.add("K");
		System.out.println(r2.nextInt(trump.size()+7));	
//		3단계 카드클래스(두가지 속성 - 모양♣,♥,♠,◆,번호 A~10,J,Q,K)를 선언하고, 52개의 카드를 만들어(for문 활용) List에 담아서 출력하세요
//		4단계 카드클래스(모양,번호)를 선언하고, 52개의 카드를 만들어(for문 활용) List에 담아서, 임의의 카드를 7장을 출력하세요 4명의 참가자에게 돌리세요
			
		
	}

}
class QuizNumOne extends Exception{

	public QuizNumOne(String message) {
		super(message);
	}

	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return "정답이 아닙니다."+super.getMessage();
	}
	
}
