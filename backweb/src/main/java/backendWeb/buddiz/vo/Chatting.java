package backendWeb.buddiz.vo;
// backendWeb.buddiz.vo.Chatting
import java.util.Date;

public class Chatting {
	private int chat_id;
	private int iroom_id;
	private int id;
	private String c_text;
	private Date c_time;
	public Chatting() {
		// TODO Auto-generated constructor stub
	}
	public Chatting(int chat_id, int iroom_id, int id, String c_text, Date c_time) {
		this.chat_id = chat_id;
		this.iroom_id = iroom_id;
		this.id = id;
		this.c_text = c_text;
		this.c_time = c_time;
	}
	public int getChat_id() {
		return chat_id;
	}
	public void setChat_id(int chat_id) {
		this.chat_id = chat_id;
	}
	public int getIroom_id() {
		return iroom_id;
	}
	public void setIroom_id(int iroom_id) {
		this.iroom_id = iroom_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getC_text() {
		return c_text;
	}
	public void setC_text(String c_text) {
		this.c_text = c_text;
	}
	public Date getC_time() {
		return c_time;
	}
	public void setC_time(Date c_time) {
		this.c_time = c_time;
	}

}
