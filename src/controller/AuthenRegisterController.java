package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Users;
import model.dao.UsersDao;
import util.MD5Convert;

/**
 * Servlet implementation class AuthenRegisterController
 */
@WebServlet("/AuthenRegisterController")
public class AuthenRegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AuthenRegisterController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String name = (String) request.getParameter("name");
		String email = (String) request.getParameter("email");
		String phone = (String) request.getParameter("phone");
		String address = (String) request.getParameter("address");
		String password = (String) request.getParameter("password");
		String passwordMD5 = MD5Convert.md5(password);

		Users userRegister = new Users(name, email, phone, address, passwordMD5, 1);
		UsersDao userDao = new UsersDao();
		if (userDao.register(userRegister) > 0)
			response.sendRedirect(request.getContextPath() + "/public/index.jsp");
		else
			out.print("<p class=\"error\"> Đăng ký thất bại!!! </p>");
	}

}
