package javaexp.a12_collection;

import java.util.ArrayList;
import java.util.List;

public class A01_List {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/*
		# List 컬렉션
		1. 특징
			1) 인덱스로 관리
			2) 중복해서 객체 저장 가능
		2. 구현 실제 클래스
			ArrrayList
			Vector
			LinkedList
		3. 공통메서드
			1) *boolean add(추가할 객체) : 제일 마지막에 추가
			2) void add(int index, 추가객체) : 특정한 위치에 추가
			3) set(int index, 변경할 객체)
			4) boolean contains(요소객체) : 요소객체 있는지 여부
			5) *get(int index) : 특정위치에 있는 요소객체 가져오기
			6) *boolean isEmpty() : 컬렉션이 비어있는지 확인
			7) *int size(): 크기
			8) void clear() : 포함된 모든 객체 삭제
			9) remove(int index) : 해당 위치의 객체 삭제
			10) boolean remove(Object o): 주어진 객체 삭제
		*/
		// 인터페이스 List = ArrayList 처리
		List<String> flist = new ArrayList<String>();
		flist.add("사과");
		flist.add("수박");
		flist.add("참외");
		flist.add(0,"오렌지"); // 특정위치 추가
		flist.set(1, "키위"); // 특정위치 변경
		System.out.println("있는지 여부"+flist.contains("키위"));
		if(!flist.isEmpty()) {
		System.out.println("크기가:"+flist.size());
		}else {
			System.out.println("없음");
		}
		flist.remove(1); // 두번째 내용 삭제
		for(int idx=0; idx<flist.size();idx++) {
			System.out.println(idx+1+flist.get(idx));
		}
		flist.clear();
		System.out.println("비어있는지?"+flist.isEmpty());
		// ex) List<String> 형태로 회원 3명의 아이디를 추가하고
		//	1) 특정 회원을 1번째 위치에 추가
		//	2) 2번째 특정 회원을 변경 처리
		//	3) "himan"이 있는지 확인
		//	4) 마지막 회원을 삭제 처리
		//	5) 전체 회원 리스트 출력
		List<String> mlist = new ArrayList<String>();
		mlist.add("himan");
		mlist.add("hiwoman");
		mlist.add("higirl");
		mlist.add(0,"hello world");
		mlist.set(1,"hello future");
		if(mlist.contains("himan")) {
		System.out.println("himan 있음");
		}else {
			System.out.println("himan 없음");
		}
		mlist.remove(mlist.size()-1); // 마지막 내용 삭제
		for(int idx=0;idx<mlist.size();idx++) {
			System.out.println(idx+1+mlist.get(idx));
		}
		mlist.clear();
		System.out.println("비어있는지?"+mlist.isEmpty());
		
	
		// ctrl+shift+o 
		ArrayList<Person> plist = new ArrayList<Person>();
		plist.add(new Person("홍길동",25,"서울"));
		plist.add(new Person("김길동",27,"부산"));
		plist.add(new Person("신길동",31,"대구"));
		plist.add(new Person("오길동",20,"광주"));
		plist.add(new Person("마길동",35,"제주"));
		Person p01= plist.get(1);
		System.out.println("두번째 객체:"+p01.getName());
		System.out.println("다섯번째 객체:"+plist.get(4).getName());
		// ex) plist forEach,for(int idx) 구문을 처리해보세요
		for(Person p:plist) {
			System.out.println(p.getName()+"\t");
			System.out.println(p.getAge()+"\t");
			System.out.println(p.getLoc()+"\n");
		}
		for(int idx=0;idx<plist.size();idx++) {
			Person p = plist.get(idx);
			p.getName();
		}
			
		// ex) 학생 Student 클래스 선언 학생 반 번호 이름 국어점수 속성 VO ArrayList에 할당
		//		3개 할당 후 마지막 객체의 이름 호출 첫번쪠 객체의 점수 호출
		ArrayList<Student> stlist = new ArrayList<Student>();
		stlist.add(new Student(3,25,"홍길동",95));
		stlist.add(new Student(11,34,"최길동",30));
		stlist.add(new Student(9,14,"고길동",67));
		System.out.println("마지막 학생 이름"+stlist.get(2).getStName());
		System.out.println("첫번째 학생 점수"+stlist.get(0).getKorMark());
		System.out.println("반\t번호\t이름\t점수");
		for(Student st:stlist) {
			System.out.println(st.getClas()+"\t");
			System.out.println(st.getNum()+"\t");
			System.out.println(st.getStName()+"\t");
			System.out.println(st.getKorMark()+"\n");
		}
		
		
	}
}
class Person{
	private String name;
	private int age;
	private String loc;
	public Person() {

	}
	public Person(String name, int age, String loc) {
		this.name = name;
		this.age = age;
		this.loc = loc;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
}
class Student{
	private int clas;
	private int num;
	private String stName;
	private int korMark;
	public Student() {
		}	
	
	public Student(int clas, int num, String stName, int korMark) {
		this.clas = clas;
		this.num = num;
		this.stName = stName;
		this.korMark = korMark;
	}
	public int getClas() {
		return clas;
	}
	public void setClas(int clas) {
		this.clas = clas;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getStName() {
		return stName;
	}
	public void setStName(String stName) {
		this.stName = stName;
	}
	public int getKorMark() {
		return korMark;
	}
	public void setKorMark(int korMark) {
		this.korMark = korMark;
	}

}