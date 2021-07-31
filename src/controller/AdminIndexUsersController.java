package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Users;
import model.dao.UsersDao;
import util.DefineUtil;

/**
 * Servlet implementation class AdminIndexUsersController
 */

public class AdminIndexUsersController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminIndexUsersController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Users userLogin = (Users) session.getAttribute("userLogin");
		if (!"admin".equals(userLogin.getEmail())) {
			response.sendRedirect(request.getContextPath() + "trang-chu");
			return;
		}
		// lấy hết user
		UsersDao userDao = new UsersDao();
//		ArrayList<Users> allUser = userDao.getAllUsers();

		// lấy user theo trang
		int numberOfUser = userDao.numberOfUsers();
		int numberOfPages = (int) Math.ceil((float) numberOfUser / DefineUtil.NUMBER_PER_PAGE);
		int currentPage = 1;
		try {
			currentPage = Integer.parseInt(request.getParameter("page"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (currentPage > numberOfPages || currentPage < 1) {
			currentPage = 1;
		}
		int offset = (currentPage - 1) * DefineUtil.NUMBER_PER_PAGE;
		ArrayList<Users> allUser = userDao.getAllUsersByPage(offset);
		System.out.println(allUser);
		System.out.println(numberOfPages + "" + currentPage);
		// xét thuộc tính user
		request.setAttribute("allUser", allUser);
		request.setAttribute("numberOfPages", numberOfPages);
		request.setAttribute("currentPage", currentPage);

		// chuyển thuộc tính sang jsp
		RequestDispatcher rd = request.getRequestDispatcher("admin/index.jsp");
		rd.forward(request, response);

	}

}
