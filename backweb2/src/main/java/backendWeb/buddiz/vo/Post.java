package backendWeb.buddiz.vo;
// backendWeb.buddiz.vo.Post
import java.util.Date;

public class Post {
    
 private int post_id;
 private String id;
 private String p_text;
 private Date p_time;
 private String n_name;
 private int tag_id;
 
public Post() {
 // TODO Auto-generated constructor stub
}



public Post(int post_id, String p_text, int tag_id) {
	super();
	this.post_id = post_id;
	this.p_text = p_text;
	this.tag_id = tag_id;
}



public Post(int post_id, String id, String p_text, Date p_time, String n_name, int tag_id) {
	super();
	this.post_id = post_id;
	this.id = id;
	this.p_text = p_text;
	this.p_time = p_time;
	this.n_name = n_name;
	this.tag_id = tag_id;
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

public Date getP_time() {
	return p_time;
}

public void setP_time(Date p_time) {
	this.p_time = p_time;
}

public String getN_name() {
	return n_name;
}

public void setN_name(String n_name) {
	this.n_name = n_name;
}

public int getTag_id() {
	return tag_id;
}

public void setTag_id(int tag_id) {
	this.tag_id = tag_id;
}




}