package backendWeb.buddiz.dao;
// backendWeb.buddiz.dao.BuddyPost


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BuddyPost {

    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;
    
    
    // 내 게시물 전체 수 조회
    public int getPostCount(){
        int postCnt =0;
        String sql = "SELECT COUNT(*) FROM post where id = ?";
        
        try{
            con = DB.con();
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();
            if(rs.next()){
            	postCnt = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("DB 예외: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("일반 예외: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return postCnt;
    } 
    

    // 내 친구수 조회
    public int getFriendCount(){
        int buddyCnt =0;
        String sql = "SELECT COUNT(*) FROM friend where id = ?";
        
        try{
            con = DB.con();
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();
            if(rs.next()){
            	buddyCnt = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("DB 예외: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("일반 예외: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return buddyCnt;
    } 
    
    
   
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BuddyPost dao = new BuddyPost();
		
		dao.getFriendCount();
		dao.getPostCount();
	}

}