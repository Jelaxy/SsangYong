package frontWeb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import frontWeb.VO.Department;
import frontWeb.VO.Emp;
import frontWeb.VO.Employee;
import frontWeb.VO.Job;
import frontWeb.VO.JobHistory;
import frontWeb.VO.Location;

/*
# Dao(Database Access Object)
1. 프로그램은 기능별 모듈 분리화 정책을 하여야
	추후, 확장성이 뛰어나고, 다른 코드에 영향력이
	적어 유지보수게 효과적으로
2. 기능적을 다른 내용을 분리시켜서 사용하세요
	1) console 처리 : 객체를 생성해 매개변수를 데이터를 받고
		리턴값으로 결과를 리턴처리
	2) 웹화면 처리 : 요청값을 데이터를 받아서 리턴할 VO 객체를
		받아서 화면에 출력한다.
		
 * 
 * */
public class M04_PreparedDao {
	// 필드
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	/*
SELECT * 
FROM EMPLOYEES
WHERE FIRST_NAME || last_name LIKE '%'||?||'%'
AND salary BETWEEN ? AND ?
	 * */
	public List<Employee> getEmpList(Map<String,String> sch){
		List<Employee> elist = new ArrayList<Employee>();
		String sql = "SELECT * \r\n"
				+ "FROM EMPLOYEES\r\n"
				+ "WHERE FIRST_NAME || last_name LIKE '%'||?||'%'\r\n"
				+ "AND salary BETWEEN ? AND ?";
		try {
			con = DB.con();
			// 초기에 sql을 넘기면서 pstmt 객체 생성..
			pstmt = con.prepareStatement(sql);
			// pstmt.set데이터유형(순서-1부터, 입력할 데이터)
			pstmt.setString(1, sch.get("name")); // 
			pstmt.setDouble(2, Double.parseDouble(sch.get("minSal")));
			pstmt.setDouble(3, Double.parseDouble(sch.get("maxSal")));
			rs = pstmt.executeQuery();
			/*
			Employee(int employee_id, String first_name, String last_name, String email, String phone_number,
			Date hire_date, String job_id, double salary, double commission_pct, int manager_id, int department_id)
			 * */
			while(rs.next()) {
				elist.add(new Employee(
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
						));
			}

			
			
		} catch (SQLException e) {
			System.out.println("DB관련:"+e.getMessage());
		} catch(Exception e) {
			System.out.println("기타예외:"+e.getMessage());
		}finally {
			DB.close(rs, pstmt, con);
		}
		return elist;
	}
	public List<JobHistory> getHistory(Map<String, String> sch){
		List<JobHistory> jobList = new ArrayList<JobHistory>();
		String sql = "SELECT *\r\n"
				+ "FROM JOB_HISTORY\r\n"
				+ "WHERE job_id LIKE '%'||?||'%'\r\n"
				+ "AND DEPARTMENT_ID BETWEEN ? AND ?";
		try {
			con = DB.con();
			// job_id, mi_dId, mx_dId  
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sch.get("job_id"));
			pstmt.setInt(2,Integer.parseInt(sch.get("mi_dId")));
			pstmt.setInt(3,Integer.parseInt(sch.get("mx_dId")));
			rs = pstmt.executeQuery();
			// JobHistory(int employee_id, Date start_date, 
			// Date end_date, String job_id, int department_id) 
			while(rs.next()) {
				jobList.add(new JobHistory(
							rs.getInt("employee_id"),
							rs.getDate("start_date"),
							rs.getDate("end_date"),
							rs.getString("job_id"),
							rs.getInt("department_id")
						    ));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println("DB 예외:"+e.getMessage());
		} catch(Exception e) {
			System.out.println("일반 예외:"+e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return jobList;
	}
	/*
SELECT *
FROM JOBS;
SELECT *
FROM jobs
WHERE job_title LIKE '%'||?||'%'
AND MIN_SALARY BETWEEN ? AND ?
	 * */
	public List<Job> getJob(Map<String, String> sch){
		List<Job> jobList = new ArrayList<Job>();
		String sql = "SELECT *\r\n"
				+ "FROM jobs\r\n"
				+ "WHERE job_title LIKE '%'||?||'%'\r\n"
				+ "AND MIN_SALARY BETWEEN ? AND ?";
		try {
			con = DB.con();
			// title, min_sal1, min_sal2
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sch.get("title"));
			pstmt.setInt(2,Integer.parseInt(sch.get("min_sal1")));
			pstmt.setInt(3,Integer.parseInt(sch.get("min_sal2")));
			rs = pstmt.executeQuery();
			// Job(String job_id, String job_title, int min_salary, int max_salary)
			while(rs.next()) {
				jobList.add(new Job(
							rs.getString("job_id"),
							rs.getString("job_title"),
							rs.getInt("min_salary"),
							rs.getInt("max_salary")
						    ));
			}
		} catch (SQLException e) {
			System.out.println("DB 예외:"+e.getMessage());
		} catch(Exception e) {
			System.out.println("일반 예외:"+e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return jobList;
	}	
	public void insertEmp(Emp ins) {
		String sql = "INSERT INTO emp02 values(?,?,?,?,"
				+ "to_date(?,'YYYY-MM-DD'),?,?,?)";
		try {
			con = DB.con();
			// 자동 commit 방지
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
			System.out.println(pstmt.executeUpdate());
			con.commit(); // 입력시 확정		
			pstmt.close();
			con.close();
			System.out.println("등록성공");
//			
			
		} catch (SQLException e) {
			System.out.println("DB:"+e.getMessage());
			try {
				con.rollback(); // 원복 처리..
			} catch (SQLException e1) {
				System.out.println(e1.getMessage());
			}
		} catch (Exception e) {
			System.out.println("일반:"+e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
	}
	//ex) SELECT * FROM DEPARTMENTS
	// DEPARTMENTS를 입력 처리하세요;
	public int insertDepartments(Department ins) {
		int isInsert=0;
		String sql = "INSERT INTO DEPARTMENTS10 values(?,?,?,?)";
		try {
			con = DB.con();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			// INSERT INTO DEPARTMENTS10 values(300,'인사',200,1700);
			pstmt.setInt(1, ins.getDepartment_id());
			pstmt.setString(2, ins.getDepartment_name());
			pstmt.setInt(3, ins.getManager_id());
			pstmt.setInt(4, ins.getLocation_id());
			isInsert=pstmt.executeUpdate();
			con.commit();
			if(isInsert==1) System.out.println("등록 성공");
		} catch (SQLException e) {
			System.out.println("DB:"+e.getMessage());
			try {
				con.rollback(); // 원복 처리..
			} catch (SQLException e1) {
				System.out.println(e1.getMessage());
			}
		} catch (Exception e) {
			System.out.println("일반:"+e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		
		
		return isInsert;
	}
	
	public void updateEmp(Emp upt) {
			int isInsert=0;
			String sql = "UPDATE EMP02\r\n"
					+ "	SET ENAME = ?,\r\n"
					+ "		job = ?,\r\n"
					+ "		sal = ?,\r\n"
					+ "		hiredate = to_date(?,'YYYY/MM/DD')\r\n"
					+ "	WHERE empno = ?";
			try {
				con = DB.con();
				// 자동 commit 방지
				con.setAutoCommit(false);
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, upt.getEname());
				pstmt.setString(2, upt.getJob());
				pstmt.setDouble(3, upt.getSal());
				pstmt.setString(4, upt.getHiredateS());
				pstmt.setInt(5, upt.getEmpno());
				int isUpt = pstmt.executeUpdate();
				con.commit(); // 입력시 확정		
				pstmt.close();
				con.close();
				if(isUpt == 1)System.out.println("수정성공");
	//			
				
			} catch (SQLException e) {
				System.out.println("DB:"+e.getMessage());
				try {
					con.rollback(); // 원복 처리..
				} catch (SQLException e1) {
					System.out.println(e1.getMessage());
				}
			} catch (Exception e) {
				System.out.println("일반:"+e.getMessage());
			} finally {
				DB.close(rs, pstmt, con);
			}
		}
	public void uptLoc(Location uptL) {
		int isInsert=0;
		String sql = "UPDATE location10\r\n"
				+ "	SET street_address = ?,\r\n"
				+ "		postal_code = ?,\r\n"
				+ "		city = ?,\r\n"
				+ "		state_province = ?,\r\n"
				+ "		country_id = ?\r\n"
				+ "	WHERE location_id=?";
		try {
			con = DB.con();
			// 자동 commit 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, uptL.getLocation_id());
			pstmt.setString(2, uptL.getStreet_adress());
			pstmt.setString(3, uptL.getPostal_code());
			pstmt.setString(4, uptL.getCity());
			pstmt.setString(5, uptL.getState_Province());
			pstmt.setString(6, uptL.getCountry_id());
			int isUpt = pstmt.executeUpdate();
			con.commit(); // 입력시 확정		
			pstmt.close();
			con.close();
			if(isUpt == 1)System.out.println("수정성공");
		} catch (SQLException e) {
			System.out.println("DB예외:"+e.getMessage());
			try {
				con.rollback(); // 원복 처리..
			} catch (SQLException e1) {
				System.out.println("기타 예외:"+e1.getMessage());
			}
		} catch (Exception e) {
			System.out.println("일반:"+e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
	}
	
	
	public void deleteLoc(int location_id) {
		int isDelete=0;
		String sql = "DELETE \r\n"
				+ "FROM location10\r\n"
				+ "WHERE location_id=?";
		try {
			con = DB.con();
			// 자동 commit 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, location_id);
			isDelete = pstmt.executeUpdate();
			con.commit(); // 입력시 확정		
			pstmt.close();
			con.close();
			if(isDelete == 1)System.out.println("수정성공");
		} catch (SQLException e) {
			System.out.println("DB예외:"+e.getMessage());
			try {
				con.rollback(); // 원복 처리..
			} catch (SQLException e1) {
				System.out.println("기타 예외:"+e1.getMessage());
			}
		} catch (Exception e) {
			System.out.println("일반:"+e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
	}
	// INSERT INTO DEPARTMENTS10 values(350,'재무',300,1800);
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A04_PreparedDao dao = new A04_PreparedDao();
//		dao.insertDepartments(new Department(350,"재무",300,1800));
		
		/*
INSERT INTO emp02 values(1003,'하기동','대리',7902,
		to_date('2023-05-01','YYYY-MM-DD'), 4500,1000,20);

Emp(int empno, String ename, String job, int mgr, 
			String hiredateS, Double sal, Double comm, int deptno)

		 * */
		
		/*
		Emp ins = new Emp(1005,"오길동","과장",7902,
			"2023-05-23",7000.0,1000.0,30);
		dao.insertEmp(ins);
		*/
		
		/*
		UPDATE EMP02
		SET ENAME = '오길동(upt)',
		job = '대리',
		sal = 4000,
		hiredate = to_date('2023/05/01','YYYY/MM/DD')
	WHERE empno = 7369;
		*/
//		dao.updateEmp(new Emp(7499,
//				"오길동(upt)","대리","2023/06/01",5000.0));
//		dao.uptLoc(new Location(6000,"은계","234234","시흥","SIHEUNG","SI"));
//		dao.deleteLoc(1000);
//		dao.deleteLoc(1100);
//		dao.deleteLoc(1200);
		
		
		Map<String, String> sch = new HashMap<String, String>();
		/*  map에 쓸키 title, min_sal1, min_sal2
		 *            S      1000      10000
		 */
//		sch.put("title", "S");
//		sch.put("min_sal1", "1000");
//		sch.put("min_sal2", "10000");
//		for(Job job:dao.getJob(sch)) {
//			System.out.print(job.getJob_id()+"\t");
//			System.out.print(job.getJob_title()+"\t");
//			System.out.print(job.getMax_salary()+"\t");
//			System.out.print(job.getMin_salary()+"\n");
//		}
		
		
//		for(JobHistory jh:dao.getHistory(sch)) {
//			System.out.print(jh.getEmployee_id()+"\t");
//			System.out.print(jh.getDepartment_id()+"\t");
//			System.out.print(jh.getJob_id()+"\t");
//			System.out.print(jh.getStart_date()+"\t");
//			System.out.print(jh.getEnd_date()+"\n");
//		}
		
		
//		// name minSal maxSal
//		sch.put("name", "A");
//		sch.put("minSal", "0");
//		sch.put("maxSal", "12000");	
//		for(Employee e:dao.getEmpList(sch)) {
//			System.out.print(e.getEmployee_id()+"\t");
//			System.out.print(e.getLast_name()+"\t");
//			System.out.print(e.getFirst_name()+"\t");
//			System.out.print(e.getEmail()+"\t");
//			System.out.print(e.getSalary()+"\t");
//			System.out.print(e.getDepartment_id()+"\n");
//		}
	}

}
