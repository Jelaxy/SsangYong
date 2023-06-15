package javaexp.y01_review;

import java.util.ArrayList;

public class A04_ArrayList {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Student> slist= new ArrayList<Student>();
		slist.add(new Student(
				"20060201","홍길동",80,1,19,90,80));
		slist.add(new Student(
				"20060203","김길동",90,2,18,70,90));
		slist.add(new Student(
				"20060204","신길동",100,1,19,90,90));
		// 하난의 객체 가져오기
		Student stu = slist.get(0);
		System.out.println("이름"+stu.getName());
		System.out.println("총점"+stu.totPoint());
		System.out.println("등급"+stu.getStuGrade());
		for(Student st:slist) {
			System.out.println(st.getName()+"\t");
			System.out.println(st.totPoint());
			System.out.println(st.getStuGrade()+"\t");
		}
	}

}
/*
# ArrayList
1. 개념 : 데이터를 나열해서 처리하는 것은 배열이라는 개념부터 시작된다.
	객체형으로 배열의 한계인 동적을 추가/삭제/변경을 지원하는 것으로
	선형 구조로 하나씩 추가할 수 있는 구조를 말한다.
	class로 선언되어 객체가 만들어질때, 객체를 generic 형식으로 사용하면 ㅂ다 효과적으로 객체형 list 데이터를 처리할 수 있다.
2. 기본 사용
	1) 생성 :
		ArrayList<타입> 참조변수 = new ArrayList<타입>();
		ex) ArrayList<Student> stList = new ArrayList<Student>();
		ex) ArrayList<Member> mList = new ArrayList<Member>();
		ex) ArrayList<Product> pList = new ArrayList<Product>();
		
	2) 메서드 : 
		stList.add(추가할 객체);
		stList.get(index번호);
		stList.size(); //크기
		stList.add(new Student("홍길동",70,80,90));
		Student st = new stList.get(0)
	
3. 처리 순서(객체형 ArrayList)
	1) 보통 2차원의 데이터(EXCEL데이터)를 한개 row를 기준으로 데이터 유형과 크기에 맞게 하나의 VO객체를 생성
	2) class XXX{}로 선언되면, 생성자와 get/set 타입으로 선언과 생성
	3) 위 내용을 행단위 데이터를 객체 generic 타입으로 선언과 생성
		ArrayList<XXX> slist = new ArrayList<XXX>();
	4) 그 외 ArrayList 메서드를 이용하여 추가, 가져오기, for문처리등을 한다
		slist.add(new @@@());
		@@@@ s = slist.get(idx);
		slist.size() 크기 가져오기
4. 응용 예제
	1) 학생 점수 리스트
	2) 회원 정보 리스트
	3) 물건 정보 리스트
	
 */

class Student{
	private String stNO; // 고정된 고유번호는 문자로 할 때도 있다.
	private String name;
	private int homePt;
	private int absPt;
	private int attPt;
	private int midTst;
	private int lstTst;
	public Student(String stNO, String name, int homePt, int absPt, int attPt, int midTst, int lstTst) {
		this.stNO = stNO;
		this.name = name;
		this.homePt = homePt;
		this.absPt = absPt;
		this.attPt = attPt;
		this.midTst = midTst;
		this.lstTst = lstTst;
	}
	// 합계 처리 메서드
	public int totPoint() {
		// 출결 점수 20%반영, 과제점수 10%반영, 시험점수 70%반영
		int attAll = (int)(attPt/(double)(absPt+attPt)*20); // 20점 
		int homePt = (int)(this.homePt*0.1);
		int tstAll = (int)((midTst+lstTst)/2*0.7); // 70점
		return attAll+tstAll+homePt;
	}
	public String getStuGrade() {
		String grade = "";
		if(totPoint()>=90) {
			grade = "A";	
		}else if(totPoint()>=80){
			grade = "B";
		}else if(totPoint()>=70){
			grade = "C";
		}else if(totPoint()>=60){
			grade = "D";
		}else{
			grade = "F";
		}
		return grade;
	}
	public String getStNO() {
		return stNO;
	}
	public void setStNO(String stNO) {
		this.stNO = stNO;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getHomePt() {
		return homePt;
	}
	public void setHomePt(int homePt) {
		this.homePt = homePt;
	}
	public int getAbsPt() {
		return absPt;
	}
	public void setAbsPt(int absPt) {
		this.absPt = absPt;
	}
	public int getAttPt() {
		return attPt;
	}
	public void setAttPt(int attPt) {
		this.attPt = attPt;
	}
	public int getMidTst() {
		return midTst;
	}
	public void setMidTst(int midTst) {
		this.midTst = midTst;
	}
	public int getLstTst() {
		return lstTst;
	}
	public void setLstTst(int lstTst) {
		this.lstTst = lstTst;
	}
	
}