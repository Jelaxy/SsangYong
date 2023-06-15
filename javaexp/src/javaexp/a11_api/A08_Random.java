package javaexp.a11_api;

import java.util.Random;

public class A08_Random {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 임의의 수를 보다 효과적으로 처리하는 Random api 객체
		1. boolean, int, long, float, double 등의
			데이터를 메서드를 이용해서 임의로 처리할 수 있다.
		2. 난수를 만드는 알고리즘에 사용되는 종자값(seed)설정 가능하여 처리된다.
			종자값이 설정되면 처음에 나온 임의 수는 계속 보존된다.
		*/
		Random r1 = new Random(); //<== import 해야함
		System.out.println(r1.nextBoolean());
		System.out.println(r1.nextDouble());
		System.out.println(r1.nextInt()); // 실수 범위
		// r1.nextInt(경우의수)+시작수
		System.out.println(r1.nextInt(5)+1);
		System.out.println("주사위:"+(r1.nextInt(6)+1));
		System.out.println("0~100:"+r1.nextInt(101));
		
		// ex) 위 Random 객체의 기능함수(메서드)를 이용해서
		// 1. 임의로 합격/불합격을 출력하게 하고
		Random r2 = new Random();
		boolean isPass = r2.nextBoolean();
		System.out.println("합격여부");
		if(isPass) {
			System.out.println("합격");
		}else {
			System.out.println("불합격");
		}
		// 2. 주사위 2개의 합산값을 출력
		int di1 = (r2.nextInt(6)+1);
		int di2 = (r2.nextInt(6)+1);
		System.out.println("첫번째:"+di1+"\t두번째:"+di2);
		System.out.println("총합:"+(di1+di2));
		// 3. 학생의 점수를 국어/영어/수학 임의로 처리하여 평균 출력
		int kor = r2.nextInt(101);
		int eng = r2.nextInt(101);
		int math = r2.nextInt(101);
		int avg = (kor+eng+math)/3;
		System.out.println("국어:"+kor);
		System.out.println("영어:"+eng);
		System.out.println("수학:"+math);
		System.out.println("평군:"+avg);
	}

}
