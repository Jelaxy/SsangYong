package backendWeb.buddiz.vo;
// backendWeb.buddiz.vo.Friend
public class Friend {
	   private int friend_id;
	   private String id;
	   private String f_id;
	   private int f_ys;
	public int getFriend_id() {
		return friend_id;
	}
	public void setFriend_id(int friend_id) {
		this.friend_id = friend_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getF_id() {
		return f_id;
	}
	public void setF_id(String f_id) {
		this.f_id = f_id;
	}
	public int getF_ys() {
		return f_ys;
	}
	public void setF_ys(int f_ys) {
		this.f_ys = f_ys;
	}
	public Friend() {
		// TODO Auto-generated constructor stub
	}
	public Friend(int friend_id, String id, String f_id, int f_ys) {
		this.friend_id = friend_id;
		this.id = id;
		this.f_id = f_id;
		this.f_ys = f_ys;
	}

}
