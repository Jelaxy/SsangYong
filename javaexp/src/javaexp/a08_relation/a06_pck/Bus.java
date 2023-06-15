package javaexp.a08_relation.a06_pck;

public class Bus {
	// 접근제어자 private 외부에서 * "직접적인" * 접근이 안된다.
	private String driver;
	// 같은 패키지에 있기에 호출 가능
	Car c1;
	public int no;
	String target;
	
	public Bus() {}
	public Bus (String driver, int no, String target){
		this.driver=driver;
		this.no=no;
		this.target=target;
	} // 접근이 되는 생성자를 통해서 데이터 할당
	
	public void callInfo(){
		System.out.println("버스번호"+no);
		System.out.println("목적지"+target);
		System.out.println("버기사"+driver);
	} // 접근이 되는 기능 메서드를 통해서 driver 내용 호출
	
	Bus (int no){
		this.no=no;
		this.target=target;
	}
    public Bus(String target, int no) {
    	this.target=target;
    	this.no=no;
	}
	
	}

