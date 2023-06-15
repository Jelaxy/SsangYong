package project.saramin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class JobPostingDao {
   private Connection con;
   private PreparedStatement pstmt;
   private ResultSet rs;
      
      // 채용 공고 추가
    public int addJobPosting(JobPosting jobPosting) {
       int isAdd = 0;
       String sql = "INSERT INTO JOBPOSTING VALUES(?,?,?,?,?,?,?,?,?,?,?)";
       try {
           con = DB.con();
           con.setAutoCommit(false);
           pstmt = con.prepareStatement(sql);
           
           pstmt.setString(1, jobPosting.getPostId());
           pstmt.setString(2, jobPosting.getComName());
           pstmt.setString(3, jobPosting.getPhoneNum());
           pstmt.setString(4, jobPosting.getPlaceOfWork());
           pstmt.setString(5, jobPosting.getFieldName());
           pstmt.setString(6, jobPosting.getTaskInCharge());
           pstmt.setString(7, jobPosting.getEducation());
           pstmt.setString(8, jobPosting.getGender());
           pstmt.setInt(9, jobPosting.getSalary());
           pstmt.setString(10, jobPosting.getRecruitmentDate());
           pstmt.setString(11, jobPosting.getReceptionMethod());

           isAdd = pstmt.executeUpdate();
           
            if (isAdd == 1) {
                con.commit();
                System.out.println("등록을 완료했습니다!");
            }
        } catch (SQLException e) {
            System.out.println("DB 오류: " + e.getMessage());
            DB.rollback(con);
        } catch (Exception e) {
            System.out.println("일반 오류: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return isAdd;
    }

    // 채용공고 수정
    public int updateJobPosting(JobPosting jobPosting) {
       int isUpdate = 0;
       String sql = "UPDATE JOBPOSTING SET postId=?, comName=?, phoneNum=?, placeOfWork=?, " +
                "fieldName=?, taskInCharge=?, education=?, gender=?, salary=?, recruitmentDate=?, " +
                "receptionMethod=? WHERE id=?";
        try {
            con = DB.con();
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, jobPosting.getPostId());
            pstmt.setString(2, jobPosting.getComName());
            pstmt.setString(3, jobPosting.getPhoneNum());
            pstmt.setString(4, jobPosting.getPlaceOfWork());
            pstmt.setString(5, jobPosting.getFieldName());
            pstmt.setString(6, jobPosting.getTaskInCharge());
            pstmt.setString(7, jobPosting.getEducation());
            pstmt.setString(8, jobPosting.getGender());
            pstmt.setInt(9, jobPosting.getSalary());
            pstmt.setString(10, jobPosting.getRecruitmentDate());
            pstmt.setString(11, jobPosting.getReceptionMethod());
            isUpdate = pstmt.executeUpdate();
            if (isUpdate == 1) {
                con.commit();
                System.out.println("수정을 완료했습니다!");
            }
        } catch (SQLException e) {
            System.out.println("DB 오류: " + e.getMessage());
            DB.rollback(con);
        } catch (Exception e) {
            System.out.println("일반 오류: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return isUpdate;
    }
    // 공고ID를 이용해서 채용공고 삭제
    public int deleteJobPosting(String postId) {
       int isDelete = 0;
       String sql = "DELETE FROM JOBPOSTING WHERE postId=?";

       try {
            con = DB.con();
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, postId);
            isDelete = pstmt.executeUpdate();
            if (isDelete == 1) {
                con.commit();
                System.out.println("삭제를 완료했습니다!");
            }
        } catch (SQLException e) {
            System.out.println("DB 오류: " + e.getMessage());
            DB.rollback(con);
        } catch (Exception e) {
            System.out.println("일반 오류: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return isDelete;
    }
    
//    // 공고ID를 이용해서 개별 공고 조회
//    public JobPosting getJobPostingById(String postId) {
//       String sql = "SELECT * FROM JOBPOSTING WHERE postId = ?";
//       try {
//          con = DB.con();
//          pstmt = con.prepareStatement(sql);
//          pstmt.setString(1, postId);
//          rs = pstmt.executeQuery();
//          try (ResultSet resultSet = pstmt.executeQuery()) {
//             if (resultSet.next()) {
//                return jobPostingRs(resultSet);
//                jobPostings.add(jobPost);
//             }
//          }
//       }catch(SQLException e) {
//          System.out.println("DB 예외: " + e.getMessage());
//       }catch(Exception e) {
//          System.out.println("일반 예외: " + e.getMessage());
//       }finally {
//          DB.close(rs, pstmt, con);
//       }
//       return null;
//    }
    
    // 전체 채용공고 조회
    public List<JobPosting> getAllJobPostings() {
        List<JobPosting> jobPostings = new ArrayList<>();
        String sql = "SELECT * FROM jobPosting";

        try {
            con = DB.con();
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                JobPosting jobPost = jobPostingRs(rs);
                jobPostings.add(jobPost);
            }
        } catch (SQLException e) {
            System.out.println("DB 예외: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("일반 예외: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return jobPostings;
    }
    
//     채용공고 상세 정보
    private JobPosting jobPostingRs(ResultSet resultSet) throws SQLException{
        String postId = resultSet.getString("postId");
        String comName = resultSet.getString("comName");
        String phoneNum = resultSet.getString("phoneNum");
        String placeOfWork = resultSet.getString("placeOfWork");
        String fieldName = resultSet.getString("fieldName");
        String taskInCharge = resultSet.getString("taskInCharge");
        String education = resultSet.getString("education");
        String gender = resultSet.getString("gender");
        int salary = resultSet.getInt("salary");
        String recruitmentDate = resultSet.getString("recruitmentDate");
        String receptionMethod = resultSet.getString("receptionMethod");

        return new JobPosting(postId, comName, phoneNum, placeOfWork, fieldName, taskInCharge,
                education, gender, salary, recruitmentDate, receptionMethod);
    }

public static void main(String[] args) {
   JobPostingDao dao = new JobPostingDao();
   dao.deleteJobPosting("2");
//   dao.addJobPosting(new JobPosting("4","스미후루","010-2453-3342","홍대","개발","식품 개발","대학원 졸업","여자",3600,"2023-06-12","우편"));
//   System.out.println("전체 공고 조회\n");
//   for(JobPosting j: dao.getAllJobPostings()) {
//      System.out.print(
//    	j.toString()+"\n"
//    	+"-----------------"
//      );
//   };
   dao.updateJobPosting("3")
//   dao.getJobPostingById("1");
   
   }
}