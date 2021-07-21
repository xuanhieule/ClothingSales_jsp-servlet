package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Users;
import model.dao.UsersDao;
import util.MD5Convert;

/**
 * Servlet implementation class LoginPublicController
 */

public class AuthenLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthenLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		String email = (String) request.getParameter("email");
		String password = (String) request.getParameter("password");
		String passwordMD5 = MD5Convert.md5(password);
		UsersDao userDao = new UsersDao();
		Users userLog = new Users(email, passwordMD5);
	
		if(userDao.login(userLog) !=null) {
			System.out.println("xxx");
			String username = "admin";
			if(email.equals(username)) {
				session.setAttribute("userLogin", userDao.login(userLog));
				System.out.println("ss đã set: "+session.getAttribute("userLogin"));
				response.sendRedirect(request.getContextPath() + "/quan-ly-tai-khoan");
			}
			else {
				session.setAttribute("userLogin", userDao.login(userLog));
				response.sendRedirect(request.getContextPath() + "/trang-chu");
			}
				
				
				
			
		}
	}

}
