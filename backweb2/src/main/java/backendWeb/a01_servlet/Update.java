package backendWeb.a01_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Update
 */
@WebServlet(name = "update.do", urlPatterns = { "/update.do" })
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String nName = request.getParameter("nName");
        String name = request.getParameter("name");
        String bDay = request.getParameter("bDay");
        String mail = request.getParameter("mail");
        String pNum = request.getParameter("pNum");
        
        // 받은 데이터를 이용하여 데이터베이스 업데이트 로직 수행
        // 여기에 데이터베이스 업데이트 로직을 작성하세요

        // 업데이트 완료 후 응답 보내기
        response.setContentType("text/plain");
        response.getWriter().write("프로필 업데이트 완료");
	}

}
