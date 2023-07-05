package backendWeb.buddiz.vo;

// backendWeb.buddiz.vo.BUser
public class BUser {
   private String id;
   private String pass;
   private String n_name;
   private String name;
   private String b_day;
   private String mail ;
   private String p_num;
   public BUser() {
      super();
      // TODO Auto-generated constructor stub
   }
public BUser(String id, String pass, String n_name, String name, String b_day, String mail, String p_num) {
	super();
	this.id = id;
	this.pass = pass;
	this.n_name = n_name;
	this.name = name;
	this.b_day = b_day;
	this.mail = mail;
	this.p_num = p_num;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
public String getN_name() {
	return n_name;
}
public void setN_name(String n_name) {
	this.n_name = n_name;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getB_day() {
	return b_day;
}
public void setB_day(String b_day) {
	this.b_day = b_day;
}
public String getMail() {
	return mail;
}
public void setMail(String mail) {
	this.mail = mail;
}
public String getP_num() {
	return p_num;
}
public void setP_num(String p_num) {
	this.p_num = p_num;
}

}
