package javaexp.z01_home;

public class A01_0427class {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
class Product {
	String pName;
	int price;
	int cnt;
	public Product(String pName, int price, int cnt) {
		this.pName = pName;
		this.price = price;
		this.cnt = cnt;
	}
	public int prodTot() {
		System.out.println(pName+"\t");
		System.out.println(price+"\t");
		System.out.println(cnt+"\t");
		int tot = price*cnt;
		System.out.println(tot+"\n");
		return tot;
	}
}
class Market extends Product{

	String cart;
	padding,
	
	
}