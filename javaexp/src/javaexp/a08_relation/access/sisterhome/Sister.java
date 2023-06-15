package javaexp.a08_relation.access.sisterhome;

import javaexp.a08_relation.access.ourhome.MyFather;

public class Sister extends MyFather{
	void callFatherInfo(){
		MyFather f =  new MyFather();
		System.out.println("private"+f.fatherSec);
		System.out.println("default"+f.ourHomeSec);
		// protected 접근제어자 상속해서 처리하는 방식이 아닌 객체 생성 후 처리는 접근되지 않음
		System.out.println("protected"+f.surprise);
		System.out.println("public"+f.tellEvery);
	}
	// 상속 관계
	void callFatherInfo2(){
//		접근제어자가 상속이여도 패키지가 다르면 private, default는 접근되지 않는다.
		System.out.println("private"+fatherSec);
		System.out.println("default"+ourHomeSec);
		System.out.println("protected"+surprise);
		System.out.println("public"+tellEvery);
	}
}
