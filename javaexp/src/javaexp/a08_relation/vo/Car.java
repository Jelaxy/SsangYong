package javaexp.a08_relation.vo;

public class Car {
		// 자동차종류, 배기량
		// driving() @@@ 자동차가 운행을 합니다
		private String kind;
		private int cc;
		public Car() {
		// TODO Auto-generated constructor stub
		}
		public Car(String kind, int cc) {
			this.kind = kind;
			this.cc = cc;
		}
		public void driving () {
			System.out.println(" # 차량 운행 여부 # ");
			System.out.println(kind+"자동차가 운행을 합니다.");
			}
		public String getKind() {
			return kind;
		}
		public void setKind(String kind) {
			this.kind = kind;
		}
		public int getCc() {
			return cc;
		}
		public void setCc(int cc) {
			this.cc = cc;
		}
	
	}
