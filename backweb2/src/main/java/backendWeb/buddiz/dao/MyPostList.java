package backendWeb.buddiz.dao;

import java.sql.Connection;

// backendWeb.buddiz.dao.MyPostList

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import backendWeb.buddiz.vo.Post;


		public class MyPostList {
		    private Connection con;
		    private PreparedStatement pstmt;
		    private ResultSet rs;
		    
		    // 게시물 수정
		    public int updateMyPost(Post post) {
		        int isUpdate = 0;
		        String sql = "UPDATE post\r\n"
		            + "SET P_TEXT = ?, TAG_ID = ?\r\n"
		            + "WHERE POST_ID = ?";
		        try {
		            con = DB.con();
		            con.setAutoCommit(false);
		            pstmt = con.prepareStatement(sql);
		            pstmt.setString(1, post.getP_text());
		            pstmt.setInt(2, post.getTag_id());
		            pstmt.setInt(3, post.getPost_id());
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
	        String deleteComment = "DELETE FROM COM_MENT WHERE POST_ID = ?";
	        String deleteLike = "DELETE FROM LIKE_ WHERE POST_ID = ?";
	        String deletePost = "DELETE FROM POST WHERE POST_ID = ?";
	        try {
	            con = DB.con();
	            con.setAutoCommit(false);
	            // 댓글 테이블 레코드 삭제
	            pstmt = con.prepareStatement(deleteComment);
	            pstmt.setInt(1, post_id);
	            pstmt.executeUpdate();
	            // 좋아요 테이블 레코드 삭제
	            pstmt = con.prepareStatement(deleteLike);
	            pstmt.setInt(1, post_id);
	            pstmt.executeUpdate();
	            // 포스트 테이블 삭제
	            pstmt = con.prepareStatement(deletePost);
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
    
    
    
//    // 내 전체 게시물 불러오기
//    public List<Post> getMyPosts(String id) {
//        List<Post> posts = new ArrayList<>();
//        // 게시물 올린 시간 최신순으로 조회
//        String sql = "SELECT * FROM POST WHERE ID = ? ORDER BY P_TIME DESC";
//
//        try {
//            con = DB.con();
//            pstmt = con.prepareStatement(sql);
//            pstmt.setString(1, id);
//            rs = pstmt.executeQuery();
//            while (rs.next()) {
//                Post post = postList(rs);
//                posts.add(post);
//            }
//        } catch (SQLException e) {
//            System.out.println("DB 예외: " + e.getMessage());
//        } catch (Exception e) {
//            System.out.println("일반 예외: " + e.getMessage());
//        } finally {
//            DB.close(rs, pstmt, con);
//        }
//        return posts;
//    }



	    // 내 전체 게시물 불러오기
	    public List<Post> getMyPosts(String id) {
	        List<Post> posts = new ArrayList<>();
	        // 게시물 올린 시간 최신순으로 조회
	        String sql = "SELECT * FROM POST WHERE ID = ? ORDER BY P_TIME DESC";
	        
	        try {
	            con = DB.con();
	            pstmt = con.prepareStatement(sql);
	            pstmt.setString(1, id);
	            rs = pstmt.executeQuery();
	            while (rs.next()) {
	                posts.add(new Post(
	                      rs.getInt("POST_ID"),
	                      rs.getString("ID"),
	                      rs.getString("P_TEXT"),
	                      rs.getDate("P_TIME"),
	                      rs.getInt("TAG_ID")
	                ));
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
    

 
 

	public static void main(String[] args) {
		MyPostList dao = new MyPostList();
		// 포스트 삭제
//		   dao.deleteMyPost(2);
	      // 내 게시물 조회
	      List<Post> myPosts = dao.getMyPosts("syr01");
	      for(Post p:myPosts) {
	         System.out.println(p.getId());
	         System.out.println(p.getPost_id());
	         System.out.println(p.getP_text());
	      }
		//dao.updateMyPost(new Post(2,"오늘날씨 좋다", 2));
		   	   
		
    }
}