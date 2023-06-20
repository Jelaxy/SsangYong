package backweb.z01_vo;
// backweb.z01_vo.Product
public class Product {
	private String pname;
	private int price;
	private int cnt;
	private String pva;
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getPva() {
		return pva;
	}
	public void setPva(String pva) {
		this.pva = pva;
	}
	public Product(String pname, int price, int cnt, String pva) {
		this.pname = pname;
		this.price = price;
		this.cnt = cnt;
		this.pva = pva;
	}
	public Product() {
		// TODO Auto-generated constructor stub
	}
}
