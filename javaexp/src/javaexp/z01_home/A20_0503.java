package javaexp.z01_home;

import java.lang.reflect.Member;
import java.util.HashMap;
import java.util.Map;

public class A20_0503 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
2023-05-03
[1단계:개념] 1. set객체의 특징을 예제를 통하여 기술하세요
[1단계:확인] 2. 사과, 바나나, 딸기, 오렌지, 수박을 랜덤으로 10회 Set 주머니에 넣었을 때, 들어간 과일의 종류를 출력하세요.
[1단계:개념] 3. map객체의 특징을 기본 예제를 통하여 설명하세요
	1. 회원 정보 설정(아이디 제외)
	2. class 정의(회원정보 설정) Member
	3. Map<String, Member>
	4. 회원 등록
	  mem.put("himan", new Member("홍길동","관리자","7777"));
	  mem.put("higirl", new Member("홍길동","관리자","7777"));
	5. 회원정보수정 : 마지막에 추가된 위에 선언된 key값
	  mem.put("himan", new Member("김길동","관리자","9999"));
[1단계:확인] 4. map으로 회원의 정보를 저장할려고 한다. 저장하고 저장된 정보를 호출할 때, 동일한 id로 회원 정보를
      입력하고 변경되는 회원 정보를 처리해보세요.
[1단계:개념] 5. 입력처리하는 기본 객체와 출력 처리하는 기본 객체를 기본예제를 통해 설명하세요.
[1단계:확인] 6. c:\a01_javaexp\z01_fileExp\ 하위에 a1~a9폴드가 생성되고, 각 폴드에 show01.txt~show09.txt 파일을 생성해보세요.
[1단계:확인] 7. c:\a01_javaexp\z01_fileExp\a1\show01.txt에 입력받은 물건명/가격/갯수 정보를 저장하세요.
*/
		
		
	Map<String,Member> mems = new HashMap<String,Member>();
	// 등록
	mems.put("himan", new Member("홍길동",25,"관리자",100));
	mems.put("himan", new Member("홍리나",27,"관리자",100));
	// 수정
	mems.put("himan", new Member("홍길동",25,"관리자",300));
	// 삭제
	mems.remove("higorl");
	for(String id:mems.keySet()) {
		Member m = mems.get(id);
		System.out.println(id+"\t");
		System.out.println(m.getName()+"\t");
		System.out.println(m.getAuth()+"\t");
	}
	
	}

}
