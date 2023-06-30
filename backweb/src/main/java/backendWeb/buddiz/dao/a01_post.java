package backendWeb.buddiz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import backendWeb.buddiz.vo.Post;

public class a01_post {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
		public List<Post> getPostList() {
			List<Post> plist = new ArrayList<>();
		     try {
		            con = DB.con();
		             String sql = "SELECT p.*, b.N_NAME \r\n"
		                   + "FROM post p, buser b \r\n"
		                   + "WHERE p.id = b.id";
		            pstmt = con.prepareStatement(sql);
		            rs = pstmt.executeQuery();
		      
		              while (rs.next()) {
		                 plist.add(new Post(
		                          rs.getInt("post_id"),
		                          rs.getString("id"),
		                          rs.getString("p_text"),
		                          rs.getString("p_img"),
		                          rs.getDate("p_time"),
		                          rs.getString("N_name")
		                  ));
		              }
		          } catch (SQLException e) {
		              System.out.println("DB 관련 오류: " + e.getMessage());
		          } catch (Exception e) {
		              System.out.println("일반 오류: " + e.getMessage());
		          } finally {
		             DB.close(rs, pstmt, con);
		          }
		          return plist;
		      }
}
