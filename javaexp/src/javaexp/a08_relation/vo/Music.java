package javaexp.a08_relation.vo;

public class Music {
	// 필드는 접근제어자를 private 선언(직접 접근이 안되고 간접 접근 처리)
	private String song;
	private String singer;
	private int release;
	// 생성자나 메서드의 접근제어자는 public
	public Music() {
		// TODO Auto-generated constructor stub
	}
	public Music(String song, String singer, int release) {
		this.song = song;
		this.singer = singer;
		this.release = release;
	}
	public String getSong() {
		return song;
	}
	public void setSong(String song) {
		this.song = song;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public int getRelease() {
		return release;
	}
	public void setRelease(int release) {
		this.release = release;
	}
	
}
