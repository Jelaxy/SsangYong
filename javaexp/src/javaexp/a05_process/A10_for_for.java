package javaexp.a05_process;

public class A10_for_for {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# for문안에 for문 활용하기
		1. 반복문의 각 단위별로 반복문을 수행함으로 여러가지
			복잡한 알고리즘을 만들어 갈 수 있다.
		2. 기본형식
			for(int cnt=1;cnt<=10;cnt++){
				for(int cnt2=1;cnt2<=10;cnt2++){
				}
			}
			상위 for문인 cnt변수가 1에서 10까지 반복을
			하는데, 각 단위별로 다시 1~10까지 반복처리하는
			것을 말한다.
			
		 * */
		for(int grade=2;grade<=9;grade++) {
			System.out.println(grade+"단!!");
			for(int cnt=1;cnt<=9;cnt++) {
				System.out.print(grade);
				System.out.print("x");
				System.out.print(cnt);
				System.out.println("="+grade*cnt);
			}
		}
		// ex) 2중 for문으로 행열 표현 테이블을 아래와 같이 나타내세요
		/*  (1행1열)	(1행2열) (1행3열)
		 *  (2행1열)	(2행2열) (2행3열)
		 *  (3행1열)	(3행2열) (3행3열)
		 * */
		for(int row=1;row<=3;row++) {
			for(int col=1;col<=3;col++) {
				System.out.print("("+row+"행"+col+"열) ");
			}
			System.out.println();
		}
		
		
	}

}
