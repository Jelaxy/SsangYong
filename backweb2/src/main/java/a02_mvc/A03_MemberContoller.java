package a02_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import a01_dao.A05_MemberDao;

/**
 * Servlet implementation class a03_MemberContoller
 */
@WebServlet(name = "memberList.do", urlPatterns = { "/memberList.do" })
public class A03_MemberContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A03_MemberContoller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        // 1. 요청값 처리
        String id = request.getParameter("id");
        if(id ==null) id="";
        String pass = request.getParameter("pass");
        if(pass==null) pass="";
        String name = request.getParameter("name");
        if(name==null) name="";
        String point = request.getParameter("point");
        if(point==null) point="";
        String auth = request.getParameter("auth");
        if(auth==null) auth="";
        String regdate = request.getParameter("regdate");
        if(regdate==null) regdate="";

        // 2. 모델데이터
        A05_MemberDao dao = new A05_MemberDao();
        request.setAttribute("memList", dao.mlist());
        
        // 3. 화면view 호출.
        String page = "homework/a01_0704.jsp";
        RequestDispatcher rd = request.getRequestDispatcher(page);
        rd.forward(request, response);
     }

}
