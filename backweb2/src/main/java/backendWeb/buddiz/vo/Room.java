package backendWeb.buddiz.vo;
// backendWeb.buddiz.vo.Room
import java.util.Date;

/*
세팅 더 해야함
*/
public class Room {
	private int room_id;
	private String id;
	private String room_name;
	private Date p_time;
	private String p_timeS;
	private int r_yn;
	public Room() {
		// TODO Auto-generated constructor stub
	}
	public int getRoom_id() {
		return room_id;
	}
	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public Date getP_time() {
		return p_time;
	}
	public void setP_time(Date p_time) {
		this.p_time = p_time;
	}
	public String getP_timeS() {
		return p_timeS;
	}
	public void setP_timeS(String p_timeS) {
		this.p_timeS = p_timeS;
	}
	public int getR_yn() {
		return r_yn;
	}
	public void setR_yn(int r_yn) {
		this.r_yn = r_yn;
	}
	public Room(int room_id, String id, String room_name, String p_timeS, int r_yn) {
		this.room_id = room_id;
		this.id = id;
		this.room_name = room_name;
		this.p_timeS = p_timeS;
		this.r_yn = r_yn;
	}
	
	
	
	
}
