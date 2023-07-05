package backendWeb.buddiz.vo;
// backendWeb.buddiz.vo.Like
import java.util.Date;

public class Like {
   private int like_id;
   private int post_id;
   private String id;
   private Date l_time;
public Like() {
	// TODO Auto-generated constructor stub
}
public Like(int like_id, int post_id, String id, Date l_time) {
	this.like_id = like_id;
	this.post_id = post_id;
	this.id = id;
	this.l_time = l_time;
}
public int getLike_id() {
	return like_id;
}
public void setLike_id(int like_id) {
	this.like_id = like_id;
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
public Date getL_time() {
	return l_time;
}
public void setL_time(Date l_time) {
	this.l_time = l_time;
}
   

}
