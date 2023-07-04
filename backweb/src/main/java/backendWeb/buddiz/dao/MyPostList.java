package backendWeb.buddiz.dao;

// backendWeb.buddiz.dao.MyPostList
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import backendWeb.buddiz.vo.Post;
import project.saramin.DB;
import project.saramin.JobPosting;


public class MyPostList {
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;
    
    // 게시물 수정
    public int updateMyPost(Post post) {
       int isUpdate = 0;
       String sql = "UPDATE post\r\n"
       		+ "SET POST_ID = ?, P_TEXT = ?, TAG_ID = ?\r\n"
       		+ "WHERE POST_ID = ?";
        try {
            con = DB.con();
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, post.getPost_id());
            pstmt.setString(2, post.getP_text());
            pstmt.setInt(3, post.getTag_id());
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
    
    
    
    
    // post_ID를 이용해서 게시물 삭제
    public int deleteMyPost(int post_id) {
       int isDelete = 0;
       String sql = "DELETE FROM post\r\n"
       		+ "WHERE POST_ID = ?";

       try {
            con = DB.con();
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, post_id);
            isDelete = pstmt.executeUpdate();
            if (isDelete == 1) {
                con.commit();
                System.out.println("게시물을 삭제했습니다.");
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
    
    
    
    
    // 내 전체 게시물 불러오기
    public List<Post> getMyPosts() {
        List<Post> posts = new ArrayList<>();
        String sql = "SELECT * FROM post WHERE id = ?";

        try {
            con = DB.con();
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
            	Post post = postList(rs);
            	posts.add(post);
            }
        } catch (SQLException e) {
            System.out.println("DB 예외: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("일반 예외: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return posts;
    }
    
    
    
	//  게시물 리스트
	 private Post postList(ResultSet rs) throws SQLException{
	     int post_id = rs.getInt("post_id");
	     String id = rs.getString("id");
	     String p_text = rs.getString("p_text");
	     Date p_time = rs.getDate("p_time");
	     String n_name = rs.getString("n_name");
	     int tag_id = rs.getInt("tag_id");
	
	     return new Post(post_id, id, p_text, p_time, n_name, tag_id);
	 }
 
 
 

	public static void main(String[] args) {
		MyPostList dao = new MyPostList();
		   dao.deleteMyPost(2);
		   

		   for(Post p: dao.getMyPosts()) {
		      System.out.print(
		    	p.toString()
		      );
		   };
		   
		   dao.updateMyPost(new Post(2,"오늘 날씨 좋다", 2));
		   	   
		
    }
}
