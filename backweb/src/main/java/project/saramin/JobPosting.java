package project.saramin;

public class JobPosting {
    private String postId;
    private String comName;
    private String phoneNum;
    private String placeOfWork;
    private String fieldName;
    private String taskInCharge;
    private String education;
    private String gender;
    private int salary;
    private String recruitmentDate;
    private String receptionMethod;
    

   public JobPosting() {
		// TODO Auto-generated constructor stub
	}


public JobPosting(String postId, String comName, String phoneNum, String placeOfWork, String fieldName,
		String taskInCharge, String education, String gender, int salary, String recruitmentDate,
		String receptionMethod) {
	this.postId = postId;
	this.comName = comName;
	this.phoneNum = phoneNum;
	this.placeOfWork = placeOfWork;
	this.fieldName = fieldName;
	this.taskInCharge = taskInCharge;
	this.education = education;
	this.gender = gender;
	this.salary = salary;
	this.recruitmentDate = recruitmentDate;
	this.receptionMethod = receptionMethod;
}


public String getPostId() {
	return postId;
}


public void setPostId(String postId) {
	this.postId = postId;
}


public String getComName() {
	return comName;
}


public void setComName(String comName) {
	this.comName = comName;
}


public String getPhoneNum() {
	return phoneNum;
}


public void setPhoneNum(String phoneNum) {
	this.phoneNum = phoneNum;
}


public String getPlaceOfWork() {
	return placeOfWork;
}


public void setPlaceOfWork(String placeOfWork) {
	this.placeOfWork = placeOfWork;
}


public String getFieldName() {
	return fieldName;
}


public void setFieldName(String fieldName) {
	this.fieldName = fieldName;
}


public String getTaskInCharge() {
	return taskInCharge;
}


public void setTaskInCharge(String taskInCharge) {
	this.taskInCharge = taskInCharge;
}


public String getEducation() {
	return education;
}


public void setEducation(String education) {
	this.education = education;
}


public String getGender() {
	return gender;
}


public void setGender(String gender) {
	this.gender = gender;
}


public int getSalary() {
	return salary;
}


public void setSalary(int salary) {
	this.salary = salary;
}


public String getRecruitmentDate() {
	return recruitmentDate;
}


public void setRecruitmentDate(String recruitmentDate) {
	this.recruitmentDate = recruitmentDate;
}


public String getReceptionMethod() {
	return receptionMethod;
}


public void setReceptionMethod(String receptionMethod) {
	this.receptionMethod = receptionMethod;
}


@Override
    public String toString() {
        return  "\n채용공고 ID : " + postId + '\n' + '\n'+
                "# 기업 정보 #\n" +
                "기업명: " + comName + '\n' +
                "연락처: " + phoneNum + '\n' +
                "근무지역: " + placeOfWork + '\n' +
                "\n# 모집분야 #\n" +
                "모집분야명: " + fieldName + '\n' +
                "담당업무: " + taskInCharge + '\n' +
                "\n# 자격조건 #\n" +
                "학력: " + education + '\n' +
                "성별: " + gender + '\n' +
                "연봉/급여: " + salary + '\n' +
                "\n# 채용절차 #\n" +
                "채용일자: " + recruitmentDate + '\n' +
                "접수방법: " + receptionMethod;
    }
}