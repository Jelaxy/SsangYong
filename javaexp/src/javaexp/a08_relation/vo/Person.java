package javaexp.a08_relation.vo;
//javaexp.a08_relation.vo.Person;
public class Person {
	// 일반적으로 필드는 직접 호출이 불가능하게 private로 설정
	// 한번에 읽기 쓰기를 못하게 처리
	private String name;
	private int age;
	private String loc;
	public Person() {
		// TODO Auto-generated constructor stub
	}
	// new Person("안녕");
	// new Person("홍길동");
	// new Person("서울");
	public Person(String name) {
		this.name = name;
	}
	public Person(int age) {
		this.age = age;
	}
//	public Person(String loc) {
//		this.loc = loc;
//	}
	public Person(String loc, int age) {
		this.loc = loc;
		this.age = age;
	}
	
// 오버로딩 규칙에 의해서 식별을 못하기 때문에 선언을 할 수 없다.
// String 뒤에 뭐가 오는지 모름
// 12~14열
// 매개변수가 다르다고 해도 구분을 못함
	
	public int getAge() {
		return age;
	}
	public String getName() {
		return name;
	}
	public void setAge(int age) {
		this.age = age;
	}
	// p01.setAge(25); 필드에 있는 값을 간접적으로 할당
	// p01.getAge(); 필드에 있는 값을 간접적으로 호출
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Person(String name, int age, String loc) {
		this.name = name;
		this.age = age;
		this.loc = loc;
	}
	
}
