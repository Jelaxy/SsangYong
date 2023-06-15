package javaexp.a08_relation.vo;

public class Woman {
	private String wname;
	private String useApp;

	public Woman() {
		// TODO Auto-generated constructor stub
	}
	public void coupleMatch() {
		System.out.println("#여자 정보#");
		System.out.println("이름"+wname);
		System.out.println("어플 사용 여부:"+useApp);
	}

	public Woman(String wname, String useApp) {
		this.wname = wname;
		this.useApp = useApp;
	}

	public String getWname() {
		return wname;
	}

	public void setWname(String wname) {
		this.wname = wname;
	}

	public String getUseApp() {
		return useApp;
	}

	public void setUseApp(String useApp) {
		this.useApp = useApp;
	}
	
}
