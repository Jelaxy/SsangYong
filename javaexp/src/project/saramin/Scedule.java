package project.saramin;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

class Schedule {
   // 필드
    private String startDate;   // 공고 시작일
    private String endDate;      // 공고 종료일
    private String scheduleName;   // 공고명
    private String scheduleID;   // 공고 ID

    // 생성자, get/set 메서드
    public Schedule(String startDate, String endDate, String scheduleName, String scheduleID) {
        this.startDate = startDate;
        this.endDate = endDate;
        this.scheduleName = scheduleName;
        this.scheduleID = scheduleID;
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

class ScheduleManager {
    private List<Schedule> schedules;

    public ScheduleManager() {
        schedules = new ArrayList<>();
    }
    
    // 일정 등록 메서드
    public void registerSchedule(String startDate, String endDate, String scheduleName, String scheduleID) {
        Schedule schedule = new Schedule(startDate, endDate, scheduleName, scheduleID);
        schedules.add(schedule);
        System.out.println("공고가 등록되었습니다!\n");
    }

    // 일정 삭제 메서드
    public void deleteSchedule(String scheduleID) {
        boolean scheduleFound = false;
        for (Schedule schedule : schedules) {
            if (schedule.getScheduleID().equals(scheduleID)) {
                schedules.remove(schedule);
                scheduleFound = true;
                System.out.println("공고 ID '" + scheduleID + "'가 삭제되었습니다!\n");
                break;
            }
        }
    }
    
    // 개별 일정 조회
    public void showScheduleByID(String scheduleID) {
       // 공고 ID로 개별 일정 조회
       System.out.println("# 개별 공고 조회 #");
        for (Schedule schedule : schedules) {
            if (schedule.getScheduleID().equals(scheduleID)) {
                System.out.println("조회된 공고:");
                System.out.println(schedule);
                return;
            }
        }
        System.out.println("공고 ID '" + scheduleID + "'를 찾을 수 없습니다.\n");
    }

    // 전체 일정 조회 메서드
    public void showAllSchedules() {
        if (schedules.isEmpty()) {
            System.out.println("현재 등록된 공고가 없습니다.");
        } else {
            System.out.println("# 전체 공고 조회 #");
            for (Schedule schedule : schedules) {
                System.out.println(schedule);
            }
        }
    }

    public static void main(String[] args) {
        ScheduleManager scheduleManager = new ScheduleManager();

        // 일정 등록
        scheduleManager.registerSchedule("2023-06-12", "2023-06-15", "인사", "1");
        scheduleManager.registerSchedule("2023-06-18", "2023-06-20", "총무", "2");
        scheduleManager.registerSchedule("2023-06-22", "2023-06-25", "법무", "3");
        
        // 일정 삭제
//        scheduleManager.deleteSchedule("1");
        scheduleManager.deleteSchedule("2");
        scheduleManager.deleteSchedule("3");
        
        // 개별 일정 조회
        Scanner scanner = new Scanner(System.in);
        System.out.println("조회할 공고 ID를 입력하세요: ");
        String scheduleID = scanner.nextLine();
        scheduleManager.showScheduleByID(scheduleID);
    
        // 전체 일정 조회
        scheduleManager.showAllSchedules();
        
    }
}
