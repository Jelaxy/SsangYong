package javaexp.a10_exception;

public class A01_Basic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 1. 예외처리 기본 1단계 처리
		System.out.println("라인1");
		System.out.println("라인2");
		try { // 예외 처리 블럭으로 만약 처리하지 않으면 에러가 남과 동시에 해당라인에서 진행이 중단
			  // 하지만 try{}catch문으로 인해 계속 수행할 수 있음
			System.out.println("# 코드블럭 #");
			System.out.println("라인3");
			System.out.println("라인4");
			
			System.out.println(args[0]); // 예외 던짐
			// throw new Exception() 내부적으로 예외 객체를 던진다
				// 예외를 던지면 이후 내용이 수행되지 않음
			System.out.println("라인5");
			System.out.println("라인6");
		}catch(Exception e) { // 예외가 있을 때만 수행됨 // 상속관계 최상위이기에 모든 예외를 받을 수 있다.
				//예외가 발생했을 때 처리코드
			// e.XXX 여러 기능메서드를 통해 예외에 대한 상세 내용을 처리한다
			
			// ex) 1단계 A02_BasicException.java를 만들고
			//	try{}catch블럭을 만들고 각 라인별로 표시하고
			//	특정 라인에 sysout(1/0); 코드를 넣어 에러발생하게 하고
			//	추리 내용을 수행하게 하세요
			// 2단계 try{}안에 1~100 for문 처리하여 조건으로 50일 때 1/0코드가 수행되게 처리해보세요
			System.out.println("# 예외 처리 블럭 #");
			System.out.println(e.getMessage());
			System.out.println("라인7");
			System.out.println("라인8");
		}
		System.out.println("# 예외 처리 후 블럭 #");
		System.out.println("라인9");

	}

}
