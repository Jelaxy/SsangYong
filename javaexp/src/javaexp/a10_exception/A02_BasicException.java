package javaexp.a10_exception;

public class A02_BasicException {

	public static void main(String[] args) {
		
//		String name2=null;
//		name2.codePointBefore(); // heap메모리에 객체가 없을 때 나오는 NullPointerException
//		// 해당 프로세스 즉시 중단
		
		// TODO Auto-generated method stub
		System.out.println("라인1");
		try {
			System.out.println("#try 블럭#");
			System.out.println("라인2");
			System.out.println("라인3");
			for(int cnt=1; cnt<=100; cnt++) {
				System.out.print(cnt+",");
				if(cnt==50) { // 조건 50일 때 바로 예외 던짐
				System.out.println();
				System.out.println(1/0);
				}
			}
			System.out.println("라인4");
		}catch(Exception e){
			System.out.println("#예외처리#");
			System.out.println("라인5");
			System.out.println("라인6");
			System.out.println(e.getMessage());
			System.out.println("라인7");
			System.out.println("라인8");
		}
		System.out.println("#수행 완료 후#");
		System.out.println("라인9");

	}

}
