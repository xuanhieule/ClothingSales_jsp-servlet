package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Category;
import model.bean.Users;
import model.dao.CategoryDao;

/**
 * Servlet implementation class AdminIndexCategoryController
 */
public class AdminIndexCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminIndexCategoryController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// phân quyền admin đc vào
		HttpSession session = request.getSession();
		Users userLogin = (Users) session.getAttribute("userLogin");
		if (!"admin".equals(userLogin.getEmail())) {
			response.sendRedirect(request.getContextPath() + "/trang-chu");
			return;
		}
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		// lấy hết category
		CategoryDao categoryDao = new CategoryDao();
		ArrayList<Category> allCat = categoryDao.getAllCategory();

		// xét thuộc tính user
		request.setAttribute("allCat", allCat);

		// chuyển thuộc tính sang jsp
		RequestDispatcher rd = request.getRequestDispatcher("admin/category/index.jsp");
		rd.forward(request, response);
	}

}
