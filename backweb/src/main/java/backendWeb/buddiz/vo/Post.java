package backendWeb.buddiz.vo;
// backendWeb.buddiz.vo.Post
import java.util.Date;

public class Post {
	   
   private int post_id;
   private String id;
   private String p_text;
   private String p_img;
   private Date p_time;
public Post() {
	// TODO Auto-generated constructor stub
}
public int getPost_id() {
	return post_id;
}
public void setPost_id(int post_id) {
	this.post_id = post_id;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getP_text() {
	return p_text;
}
public void setP_text(String p_text) {
	this.p_text = p_text;
}
public String getP_img() {
	return p_img;
}
public void setP_img(String p_img) {
	this.p_img = p_img;
}
public Date getP_time() {
	return p_time;
}
public void setP_time(Date p_time) {
	this.p_time = p_time;
}

}
