package backendWeb.buddiz.vo;
// backendWeb.buddiz.vo.Tag
public class Tag {
	private int tag_id;
	private String id;
	private String t_text;
	public Tag() {
		// TODO Auto-generated constructor stub
	}
	public Tag(int tag_id, String id, String t_text) {
		this.tag_id = tag_id;
		this.id = id;
		this.t_text = t_text;
	}
	public int getTag_id() {
		return tag_id;
	}
	public void setTag_id(int tag_id) {
		this.tag_id = tag_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getT_text() {
		return t_text;
	}
	public void setT_text(String t_text) {
		this.t_text = t_text;
	}
	
}
