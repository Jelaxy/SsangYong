package backweb.a01_database;

//backweb.a01_database.A04_PreparedDao
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import backweb.z01_vo.Department;
import backweb.z01_vo.Emp;
import backweb.z01_vo.Employee;
import backweb.z01_vo.Job;
import backweb.z01_vo.JobHistory;
import backweb.z01_vo.Location;
import backweb.z01_vo.Manager;
import project.saramin.DB;

public class A04_PreparedDao {
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;
    public Employee getEmpList(String id){
        Employee emp = null;
        String sql = "SELECT * FROM Employees WHERE id = ?";
        try {
           con = DB.con();
           // 초기에 sql을 넘기면서 pstmt 객체 생성
           pstmt = con.prepareStatement(sql);
           // pstmt.set데이터유형(순서-1부터, 입력할 데이터)
           pstmt.setString(1, id);
           rs = pstmt.executeQuery();
           while(rs.next()) {
              emp = new Employee(
                    rs.getInt("employee_id"),
                    rs.getString("first_name"),
                    rs.getString("last_name"),
                    rs.getString("email"),
                    rs.getString("phone_number"),
                    rs.getDate("hire_date"),
                    rs.getString("job_id"),
                    rs.getDouble("salary"),
                    rs.getDouble("commission_pct"),
                    rs.getInt("manager_id"),
                    rs.getInt("department_id")
                    );
           }
           rs.close();
           pstmt.close();
           con.close();
           
        }catch(SQLException e) {
           System.out.println("DB에러: " + e.getMessage());
        }catch(Exception e) {
           System.out.println("기타예외: " + e.getMessage());
        }finally {
           DB.close(rs, pstmt, con);
        }
        return emp;
     }
    public List<Manager> getManager(Map< String, String> sch) {
        List<Manager> elist = new ArrayList<>();
        String sql = "SELECT empno, ename, dname\r\n"
        		+ "FROM emp e, dept d\r\n"
        		+ "WHERE e.DEPTNO = d.DEPTNO\r\n"
        		+ "AND empno in (\r\n"
        		+ "	SELECT DISTINCT mgr FROM emp\r\n"
        		+ ") order by ename";
        System.out.println("#DB접속#");
        try {
            con = DB.con();
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                elist.add(new Manager(
                        rs.getInt("empno"),
                        rs.getString("ename"),
                        rs.getString("dname")
                ));
            }
        } catch (SQLException e) {
            System.out.println("DB 관련 오류: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("일반 오류: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return elist;
    }

    public List<JobHistory> getHistory(Map<String, String> sch) {
        List<JobHistory> jobList = new ArrayList<>();
        String sql = "SELECT * FROM JOB_HISTORY WHERE job_id LIKE ? AND DEPARTMENT_ID BETWEEN ? AND ?";
        try {
            con = DB.con();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, "%" + sch.get("job_id") + "%");
            pstmt.setInt(2, Integer.parseInt(sch.get("mi_dId")));
            pstmt.setInt(3, Integer.parseInt(sch.get("mx_dId")));
            rs = pstmt.executeQuery();

            while (rs.next()) {
                jobList.add(new JobHistory(
                        rs.getInt("employee_id"),
                        rs.getDate("start_date"),
                        rs.getDate("end_date"),
                        rs.getString("job_id"),
                        rs.getInt("department_id")
                ));
            }
        } catch (SQLException e) {
            System.out.println("DB 예외: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("일반 예외: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return jobList;
    }
    // void, int나 다른 유형을 하느냐?
    // 외부의 이 메서드를 호출해서 등록,수정,삭제된 갯수를 알고자 할 때
    // return int
    // 등록,수정,삭제로 끝날 경우에는 void
    public List<Job> getJob(Map<String, String> sch) {
        List<Job> jobList = new ArrayList<>();
        String sql = "SELECT * FROM jobs WHERE UPPER(job_title) LIKE UPPER(?) AND MIN_SALARY BETWEEN ? AND ?";
        try {
            con = DB.con();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, "%" + sch.get("title") + "%");
            pstmt.setInt(2, Integer.parseInt(sch.get("min_sal1")));
            pstmt.setInt(3, Integer.parseInt(sch.get("min_sal2")));
            rs = pstmt.executeQuery();

            while (rs.next()) {
                jobList.add(new Job(
                        rs.getString("job_id"),
                        rs.getString("job_title"),
                        rs.getInt("min_salary"),
                        rs.getInt("max_salary")
                ));
            }
        } catch (SQLException e) {
            System.out.println("DB 예외: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("일반 예외: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return jobList;
    }

    public void insertEmp(Emp ins) {
        String sql = "INSERT INTO emp02 values(?,?,?,?,to_date(?,'YYYY-MM-DD'),?,?,?)";
        try {
            con = DB.con();
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, ins.getEmpno());
            pstmt.setString(2, ins.getEname());
            pstmt.setString(3, ins.getJob());
            pstmt.setInt(4, ins.getMgr());
            pstmt.setString(5, ins.getHiredateS());
            pstmt.setDouble(6, ins.getSal());
            pstmt.setDouble(7, ins.getComm());
            pstmt.setInt(8, ins.getDeptno());
            int result = pstmt.executeUpdate();
            if (result == 1) {
                con.commit();
                System.out.println("등록 성공");
            }
        } catch (SQLException e) {
            System.out.println("DB 오류: " + e.getMessage());
            try {
				con.rollback();
			} catch (SQLException e1) {
				System.out.println("rollback 예외:"+e.getMessage());
			}
        } catch (Exception e) {
            System.out.println("일반 오류: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
    }

    public int insertDepartments(Department ins) {
        int isInsert = 0;
        String sql = "INSERT INTO DEPARTMENTS10 values(?,?,?,?)";
        try {
            con = DB.con();
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, ins.getDepartment_id());
            pstmt.setString(2, ins.getDepartment_name());
            pstmt.setInt(3, ins.getManager_id());
            pstmt.setInt(4, ins.getLocation_id());
            isInsert = pstmt.executeUpdate();
            if (isInsert == 1) {
                con.commit();
                System.out.println("등록 성공");
            }
        } catch (SQLException e) {
            System.out.println("DB 오류: " + e.getMessage());
            try {
				con.rollback();
			} catch (SQLException e1) {
				System.out.println("rollback 예외:"+e.getMessage());
			}
        } catch (Exception e) {
            System.out.println("일반 오류: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return isInsert;
    }

    public void updateEmp(Emp upt) {
        String sql = "UPDATE EMP02 SET ENAME = ?, job = ?, sal = ?, hiredate = to_date(?,'YYYY/MM/DD') WHERE empno = ?";
        try {
            con = DB.con();
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, upt.getEname());
            pstmt.setString(2, upt.getJob());
            pstmt.setDouble(3, upt.getSal());
            pstmt.setString(4, upt.getHiredateS());
            pstmt.setInt(5, upt.getEmpno());
            int result = pstmt.executeUpdate();
            if (result == 1) {
                con.commit();
                System.out.println("수정 성공");
            }
        } catch (SQLException e) {
            System.out.println("DB 오류: " + e.getMessage());
            try {
				con.rollback();
			} catch (SQLException e1) {
				System.out.println("rollback 예외:"+e.getMessage());
			}
        } catch (Exception e) {
            System.out.println("일반 오류: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
    }

    public int updateLocation(Location upt) {
        int isUpdate = 0;
        String sql = "UPDATE locations10 SET street_address = ?, postal_code = ?, city=?, state_province=?, country_id=? WHERE location_id=?";
        try {
            con = DB.con();
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, upt.getStreet_adress());
            pstmt.setString(2, upt.getPostal_code());
            pstmt.setString(3, upt.getCity());
            pstmt.setString(4, upt.getState_Province());
            pstmt.setString(5, upt.getCountry_id());
            pstmt.setInt(6, upt.getLocation_id());
            isUpdate = pstmt.executeUpdate();
            if (isUpdate == 1) {
                con.commit();
                System.out.println("수정 성공");
            }
        } catch (SQLException e) {
            System.out.println("DB 오류: " + e.getMessage());
            try {
				con.rollback();
			} catch (SQLException e1) {
				System.out.println("rollback 예외:"+e.getMessage());
			}
        } catch (Exception e) {
            System.out.println("일반 오류: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return isUpdate;
    }

    public int deleteLocation(int location_id) {
        int isDelete = 0;
        String sql = "DELETE FROM locations10 WHERE location_id=?";
        try {
            con = DB.con();
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, location_id);
            isDelete = pstmt.executeUpdate();
            if (isDelete == 1) {
                con.commit();
                System.out.println("삭제 성공");
            }
        } catch (SQLException e) {
            System.out.println("DB 오류: " + e.getMessage());
            try {
				con.rollback();
			} catch (SQLException e1) {
				System.out.println("rollback 예외:"+e.getMessage());
			}
        } catch (Exception e) {
            System.out.println("일반 오류: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return isDelete;
    }

    public static void main(String[] args) {
        A04_PreparedDao dao = new A04_PreparedDao();
        dao.deleteLocation(1000);
        dao.deleteLocation(1100);
        dao.deleteLocation(1200);

//        dao.updateLocation(new Location(1100, "삼성로", "401123", "서울", "서울", "SE"));
//        dao.updateEmp(new Emp(7499, "오길동(upt)", "대리", "2023/06/01", 5000.0));
//        dao.insertDepartments(new Department(350, "재무", 300, 1800));
//        Emp ins = new Emp(1005, "오길동", "과장", 7902, "2023-05-01", 4500.0, 1000.0, 20);
//        dao.insertEmp(ins);

//        Map<String, String> sch = new HashMap<>();
//        sch.put("title", "S");
//        sch.put("min_sal1", "1000");
//        sch.put("min_sal2", "10000");
//        for (Job job : dao.getJob(sch)) {
//            System.out.print(job.getJob_id() + "\t");
//            System.out.print(job.getJob_title() + "\t");
//            System.out.print(job.getMax_salary() + "\t");
//            System.out.print(job.getMin_salary() + "\n");
//        }

//        for (JobHistory jh : dao.getHistory(sch)) {
//            System.out.print(jh.getEmployee_id() + "\t");
//            System.out.print(jh.getDepartment_id() + "\t");
//            System.out.print(jh.getJob_id() + "\t");
//            System.out.print(jh.getStart_date() + "\t");
//            System.out.print(jh.getEnd_date() + "\n");
//        }

//        sch.put("name", "A");
//        sch.put("minSal", "0");
//        sch.put("maxSal", "12000");
//        for (Employee e : dao.getEmpList(sch)) {
//            System.out.print(e.getEmployee_id() + "\t");
//            System.out.print(e.getLast_name() + "\t");
//            System.out.print(e.getFirst_name() + "\t");
//            System.out.print(e.getEmail() + "\t");
//            System.out.print(e.getSalary() + "\t");
//            System.out.print(e.getDepartment_id() + "\n");
//        }
    }
}
