package javaexp.a08_relation.vo;

public class Computer {
	private String kind;
	private Cpu cpu;
	public Computer() {
		// TODO Auto-generated constructor stub
	}

	public Computer(String kind) {
		this.kind = kind;
	}
	public void addCpu(Cpu cpu) {
		this.cpu = cpu;
		System.out.println(cpu.getSpec()+" 사양의 cpu 장착");
	}
	public void showCom() {
		System.out.println(kind+"컴퓨터 부품");
	if(cpu==null) {
		System.out.println("컴퓨터에 cpu가 없습니다");
	}else {
		cpu.showInf();
		}
	}
	
	
	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public Cpu getCpu() {
		return cpu;
	}

	public void setCpu(Cpu cpu) {
		this.cpu = cpu;
	}
		
}
