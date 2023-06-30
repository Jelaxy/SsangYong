package backendWeb.buddiz.vo;
// backendWeb.buddiz.vo.Post
import java.util.Date;

public class Post {
    
 private int post_id;
 private String id;
 private String p_text;
 private String p_img;
 private Date p_time;
 private String n_name;
public Post() {
 // TODO Auto-generated constructor stub
}
public Post(int post_id, String id, String p_text, String p_img, Date p_time, String n_name) {
   this.post_id = post_id;
   this.id = id;
   this.p_text = p_text;
   this.p_img = p_img;
   this.p_time = p_time;
   this.n_name = n_name;
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
public String getN_name() {
   return n_name;
}
public void setN_name(String n_name) {
   this.n_name = n_name;
}



}