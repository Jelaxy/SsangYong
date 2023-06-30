package backendWeb.buddiz.dao;
// backendWeb.buddiz.dao.a01_mypageDao

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import backendWeb.buddiz.vo.BUser;
import backweb.a01_database.DB;

public class a01_mypageDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
		
	    public int updateBUser(BUser upt) {
	        int isUpdate = 0;
	        String sql = "UPDATE BUser SET N_NAME = ? PASS = ? B_DAY = ? MAIL = ? P_NUM = ? WHERE ID = ?;";
	        try {
	            con = DB.con();
	            con.setAutoCommit(false);
	            pstmt = con.prepareStatement(sql);
	            pstmt.setString(1, upt.getN_name());
	            pstmt.setString(2, upt.getPass());
	            pstmt.setString(3, upt.getB_day());
	            pstmt.setString(4, upt.getMail());
	            pstmt.setString(5, upt.getP_num());
	            isUpdate = pstmt.executeUpdate();
	            if (isUpdate == 1) {
	                con.commit();
	                System.out.println("수정 성공");
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
	        
	 
	    
	    
	    
	    
	        public static void main(String[] args) {
	        	// TODO Auto-generated method stub
	}

}
