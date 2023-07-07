package backendWeb.a01_servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import backendWeb.buddiz.dao.MyPostList;
import backendWeb.buddiz.vo.Post;
import z01_vo.Code;

/**
 * Servlet implementation class PostUpdate
 */
@WebServlet(name = "postUpdate.do", urlPatterns = { "/postUpdate.do" })
public class PostUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
	protected void service(HttpServletRequest request,
			HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
        String post_idS = request.getParameter("post_id");
		int post_id = 0;
		if(post_idS!=null&&!post_idS.equals("")) 
			post_id = Integer.parseInt(post_idS);
		
        String editText = request.getParameter("editText");
        if(editText==null) editText="";
        
        Post post = new Post(0,"");
		if(post_id!=0) {
			// 2. 수정처리
			Post upt = new Post(post_id, editText);
			MyPostList dao = new MyPostList();
			dao.updateMyPost(upt);
		}
		// 4. json데이터 처리
		Gson g = new Gson();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain;utf-8");
		response.getWriter().print(g.toJson(post));
	}

}
