package backendWeb.buddiz.vo;
// backendWeb.buddiz.vo.Com_ment
import java.util.Date;

public class Com_ment {
   private int comment_id;
   private String id;
   private int post_id;
   private String c_text;
   private Date c_time;
public Com_ment() {
	// TODO Auto-generated constructor stub
}
public Com_ment(int comment_id, String id, int post_id, String c_text, Date c_time) {
	this.comment_id = comment_id;
	this.id = id;
	this.post_id = post_id;
	this.c_text = c_text;
	this.c_time = c_time;
}
public int getComment_id() {
	return comment_id;
}
public void setComment_id(int comment_id) {
	this.comment_id = comment_id;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public int getPost_id() {
	return post_id;
}
public void setPost_id(int post_id) {
	this.post_id = post_id;
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
