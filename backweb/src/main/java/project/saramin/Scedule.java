package project.saramin;

class Schedule {
   // 필드
	private String scheduleID;   // 공고 ID
    private String startDate;   // 공고 시작일
    private String endDate;      // 공고 종료일
    private String scheduleName;   // 공고명

    // 생성자, get/set 메서드
    public Schedule(String scheduleID, String scheduleName, String startDate, String endDate) {
    	this.scheduleID = scheduleID;
    	this.scheduleName = scheduleName;
        this.startDate = startDate;
        this.endDate = endDate;
    }
    public String getStartDate() {
        return startDate;
    }
    public String getEndDate() {
        return endDate;
    }
    public String getScheduleName() {
        return scheduleName;
    }
    public String getScheduleID() {
        return scheduleID;
    }

    @Override
    public String toString() {
        return "공고 ID: " + scheduleID + "\n"
                + "공고명: " + scheduleName + "\n"
                + "공고 시작일: " + startDate + "\n"
                + "공고 종료일: " + endDate + "\n";
    
    }
}