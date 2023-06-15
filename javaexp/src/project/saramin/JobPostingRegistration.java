package project.saramin;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class JobPostingRegistration {

	public static void main(String[] args) {
        List<JobPosting> jobPostings = new ArrayList<>();
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("# 채용공고 #");
            System.out.println("1. 채용공고 추가");
            System.out.println("2. 전체 채용공고 조회");
            System.out.println("3. 중지");
            System.out.print("번호를 입력하세요: ");
            int choice = scanner.nextInt();
            scanner.nextLine();
            switch (choice) {
                case 1:
                    JobPosting jobPosting = createJobPosting(scanner);
                    jobPostings.add(jobPosting);
                    System.out.println("\n공고가 등록되었습니다!\n");
                    break;
                case 2:
                    System.out.println("\n# 전체 공고 #:");
                    if (jobPostings.isEmpty()) {
                        System.out.println("현재 공고를 찾을 수 없습니다.");
                    } else {
                        for (JobPosting posting : jobPostings) {
                            System.out.println(posting);
                            System.out.println("--------------------");
                        }
                    }
                    System.out.println();
                    break;
                case 3:
                    System.out.println("중지...");
                    System.exit(0);
                default:
                    System.out.println("잘못 입력하셨습니다. 다시 입력해주세요.\n");
            }
        }
	}
        public static JobPosting createJobPosting(Scanner scanner) {
            // 담당자 정보
            System.out.println("# 채용 담당자 정보를 입력하세요 #");
            System.out.print("성함: ");
            String personName = scanner.nextLine();
            System.out.print("연락처: ");
            String phoneNum = scanner.nextLine();


            // 모집분야
            System.out.println("\n# 모집 분야를 입력하세요 #");
            System.out.print("모집분야명: ");
            String fieldName = scanner.nextLine();
            System.out.print("담당업무: ");
            String taskInCharge = scanner.nextLine();



            // 자격조건
            System.out.println("\n# 자격조건을 입력하세요 #");
            System.out.print("학력: ");
            String education = scanner.nextLine();
            System.out.print("성별: ");
            String gender = scanner.nextLine();
            System.out.print("연봉/급여: ");
            double salary = scanner.nextDouble();
            scanner.nextLine();


            // 채용절차
            System.out.println("\n# 채용절차를 입력하세요 #");
            System.out.print("채용일자: ");
            String recruitmentDate = scanner.nextLine();
            System.out.print("접수 방법: ");
            String receptionMethod = scanner.nextLine();
            return new JobPosting(personName, phoneNum, fieldName, taskInCharge,
            		 education, gender, salary, recruitmentDate, receptionMethod);
      }   
}
class JobPosting{
    private String personName;
    private String phoneNum;
    private String fieldName;
    private String taskInCharge;
    private String education;
    private String gender;
    private double salary;
    private String recruitmentDate;
    private String receptionMethod;

    public JobPosting(String personName, String phoneNum,
    				  String fieldName, String taskInCharge,
    				  String education, String gender, double salary,
    				  String recruitmentDate, String receptionMethod) {
        this.personName = personName;
        this.phoneNum = phoneNum;
        this.fieldName = fieldName;
        this.taskInCharge = taskInCharge;
        this.education = education;
        this.gender = gender;
        this.salary = salary;
        this.recruitmentDate = recruitmentDate;
        this.receptionMethod = receptionMethod;
    }

    @Override
    public String toString() {
        return "# 담당자 정보 #\n" +
                "담당자 성함: " + personName + '\n' +
                "연락처: " + phoneNum + '\n' +
                "\n# 모집분야 #\n" +
                "모집분야명: " + fieldName + '\n' +
                "담당업무: " + taskInCharge + '\n' +
                "\n# 자격조건 #\n" +
                "학력: " + education + '\n' +
                "성별: " + gender + '\n' +
                "연봉/급여: " + salary + '\n' +
                "\n# 채용절차 #\n" +
                "채용일자: " + recruitmentDate + '\n' +
                "접수 방법: " + receptionMethod;
    }
}