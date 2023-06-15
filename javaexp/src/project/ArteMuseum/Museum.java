package project.ArteMuseum;

public class Museum {
	// 필드: 지점명, 날짜
	
	private String loc;
	private String date;
	
	public Museum() {}
	
	public Museum(String loc, String date) {
		this.loc = loc;
		this.date = date;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		String museumInfo = 
				"예약된 지점명: " + loc +
				"\n예약된 날짜: " + date;
		return museumInfo;
	}
}
