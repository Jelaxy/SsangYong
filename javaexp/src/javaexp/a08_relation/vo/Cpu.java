package javaexp.a08_relation.vo;

public class Cpu {
		private String maker;
		private String spec;
		public Cpu() {
			// TODO Auto-generated constructor stub
		}
		public Cpu(String maker, String spec) {
			this.maker = maker;
			this.spec = spec;
		}
		public void showInf() {
			System.out.println("#제조사 사양#");
			System.out.println(maker+"의 사양");
			System.out.println("spec:"+spec);
		}
		public String getMaker() {
			return maker;
		}
		public void setMaker(String maker) {
			this.maker = maker;
		}
		public String getSpec() {
			return spec;
		}
		public void setSpec(String spec) {
			this.spec = spec;
		}

}
