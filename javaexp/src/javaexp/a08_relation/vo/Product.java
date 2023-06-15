package javaexp.a08_relation.vo;

public class Product {
	private String name;
	private int price;
	private int cnt;
	public Product() {
		// TODO Auto-generated constructor stub
	}
	// 출력과 함께 단위계 처리
	public int totBuyInfo() {
		System.out.println(name+"\t");
		System.out.println(price+"\t");
		System.out.println(cnt+"\t");
		int tot = price*cnt;
		System.out.println(tot+"\n");
		return tot;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public Product(String name, int price, int cnt) {
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}
}
