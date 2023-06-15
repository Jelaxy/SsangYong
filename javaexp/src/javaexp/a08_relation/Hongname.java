package javaexp.a08_relation;

public class Hongname {
	private int no;
	private String wname;
	private int kor;
	private int eng;
	private int math;
	public Hongname() {
		// TODO Auto-generated constructor stub
	}
	public Hongname(int no, String wname, int kor, int eng, int math) {
		this.no = no;
		this.wname = wname;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getWname() {
		return wname;
	}
	public void setWname(String wname) {
		this.wname = wname;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
}
