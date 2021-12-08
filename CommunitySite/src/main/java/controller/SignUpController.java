package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;

public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		MemberDAO dao = MemberDAO.getInstance();
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("passwd");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String address = request.getParameter("address");
		
		String phone = phone1 + "-" + phone2 + "-" + phone3;
		String email = email1 + "@" + email2;
		MemberDTO dto = new MemberDTO(name, id, password, phone, email, address);
		dao.addMember(dto);
		
		response.sendRedirect("signUpSuccess.jsp");
	}
}
