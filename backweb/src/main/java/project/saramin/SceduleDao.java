package project.saramin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SceduleDao {
   private Connection con;
   private PreparedStatement pstmt;
   private ResultSet rs;
   	
   	   // 일정 추가
       public int addSchedule(Schedule schedule) {
    	   int isAdd = 0;
           String sql = "INSERT INTO SCEDULE (scheduleID, scheduleName, startDate, endDate) " +
                   "VALUES (?, ?, ?, ?)";

           try {
              con = DB.con();
              con.setAutoCommit(false);
              pstmt = con.prepareStatement(sql);
              pstmt.setString(1, schedule.getScheduleID());
              pstmt.setString(2, schedule.getScheduleName());
        	  pstmt.setString(3, schedule.getStartDate());
              pstmt.setString(4, schedule.getEndDate());
              isAdd = pstmt.executeUpdate();
              if (isAdd == 1) {
                  con.commit();
                  System.out.println("일정을 등록했습니다!");
              }
	   		} catch (SQLException e) {
				System.out.println("DB:"+e.getMessage());
				DB.rollback(con);
			}catch(Exception e) {
				System.out.println("기타:"+e.getMessage());
			}finally {
				DB.close(rs, pstmt, con);
			}
           		return isAdd;
		}
       
       // 일정 삭제
       public int deleteSchedule(String scheduleID) {
    	   int isDelete = 0;
           String sql = "DELETE FROM SCEDULE WHERE scheduleID=?";

           try {
        	   con = DB.con();
        	   con.setAutoCommit(false);
        	   pstmt = con.prepareStatement(sql);
        	   pstmt.setString(1, scheduleID);
               isDelete = pstmt.executeUpdate();
               if (isDelete == 1) {
                   con.commit();
                   System.out.println("삭제를 완료했습니다!");
               }
	   		} catch (SQLException e) {
				System.out.println("DB 오류:"+e.getMessage());
				DB.rollback(con);
			}catch(Exception e) {
				System.out.println("기타 오류:"+e.getMessage());
			}finally {
				DB.close(rs, pstmt, con);
			}
           	return isDelete;
       }
       
//       // 일정ID를 이용해서 개별 공고 조회
//       public Schedule getScheduleByID(String scheduleID) {
//           String sql = "SELECT * FROM SCEDULE WHERE scheduleID=?";
//
//           try {
//               con = DB.con();
//               pstmt = con.prepareStatement(sql);
//               pstmt.setString(1, scheduleID);
//               try (ResultSet resultSet = pstmt.executeQuery()) {
//                   if (resultSet.next()) {
//                       return scheduleFromRs(resultSet);
//                       schedules.add(schedule);
//                   }
//               }
//           } catch (SQLException e) {
//               System.out.println("DB 오류: " + e.getMessage());
//               DB.rollback(con);
//           } catch (Exception e) {
//               System.out.println("일반 오류: " + e.getMessage());
//           } finally {
//               DB.close(rs, pstmt, con);
//           }
//           return null;
//       }
       
       // 전체 일정 조회
       public List<Schedule> getAllSchedules() {
           List<Schedule> schedules = new ArrayList<>();
           String sql = "SELECT * FROM SCEDULE";

           try {
               con = DB.con();
               pstmt = con.prepareStatement(sql);
               rs = pstmt.executeQuery();
               while (rs.next()) {
                   Schedule schedule = scheduleFromRs(rs);
                   schedules.add(schedule);
               }
           } catch (SQLException e) {
               System.out.println("DB 예외: " + e.getMessage());
           } catch (Exception e) {
               System.out.println("일반 예외: " + e.getMessage());
           } finally {
               DB.close(rs, pstmt, con);
           }
           return schedules;
       }

       private Schedule scheduleFromRs(ResultSet rs) throws SQLException {
    	   String scheduleID = rs.getString("scheduleID");
    	   String scheduleName = rs.getString("scheduleName");
           String startDate = rs.getString("startDate");
           String endDate = rs.getString("endDate");

           return new Schedule(scheduleID, scheduleName, startDate, endDate);
       }


	public static void main(String[] args) {
	   // TODO Auto-generated method stub
		SceduleDao dao = new SceduleDao();
		dao.deleteSchedule("3");
//		for(Schedule s: dao.getAllSchedules()) {
//	    System.out.print(
//	    		"\n전체 공고 조회\n"
//	    		+s.toString()+"\n"
//	    		+"-----------------\n"
//	     );
//	   };
//		dao.getScheduleByID("2");
		dao.addSchedule(new Schedule("5","현대 경력직","2021-05-16","2021-06-20"));
	   }
	}