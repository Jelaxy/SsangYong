package frontWeb.VO;

public class Job {
	private String jobID;
	private String jobTitle;
	private int minSal;
	private int maxSal;
	public Job() {
		// TODO Auto-generated constructor stub
	}
	public Job(String jobID, String jobTitle, int minSal, int maxSal) {
		this.jobID = jobID;
		this.jobTitle = jobTitle;
		this.minSal = minSal;
		this.maxSal = maxSal;
	}
	public String getJobID() {
		return jobID;
	}
	public void setJobID(String jobID) {
		this.jobID = jobID;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public int getMinSal() {
		return minSal;
	}
	public void setMinSal(int minSal) {
		this.minSal = minSal;
	}
	public int getMaxSal() {
		return maxSal;
	}
	public void setMaxSal(int maxSal) {
		this.maxSal = maxSal;
	}
	
} 
