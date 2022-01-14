package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import model.MemberDAO;

public class SignInController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		
		
		MemberDAO dao = MemberDAO.getInstance();
		
		String Id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		boolean result = dao.memberLogin(Id, passwd);
		HttpSession session = request.getSession();
		
		System.out.println(result);
		
		if(result) {
			session.setAttribute("login", result);
			session.setAttribute("userId", Id);
			session.setAttribute("userpass", passwd);
			response.sendRedirect("Main.jsp");
		}else {
			session.setAttribute("errMsg", "로그인에 실패하였습니다.");
			response.sendRedirect("login.jsp");
		}
	}
	
	
}
