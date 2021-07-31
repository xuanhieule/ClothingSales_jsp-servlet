package controller;

import java.io.IOException;

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
 * Servlet implementation class AdminEditCategoryController
 */

public class AdminEditCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminEditCategoryController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		// phân quyền admin đc vào
		HttpSession session = request.getSession();
		Users userLogin = (Users) session.getAttribute("userLogin");
		if (!"admin".equals(userLogin.getEmail())) {
			response.sendRedirect(request.getContextPath() + "/trang-chu");
			return;
		}
		// lấy id từ jsp truyền qua url
		int id = Integer.parseInt(request.getParameter("id"));
		CategoryDao categoryDao = new CategoryDao();
		Category catById = categoryDao.getCategoryById(id);
		request.setAttribute("catById", catById);
		RequestDispatcher rd = request.getRequestDispatcher("/admin/category/edit.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		// lấy id từ jsp truyền qua form
		int id = Integer.parseInt(request.getParameter("id"));
		String value = (String) request.getParameter("name");
		CategoryDao categoryDao = new CategoryDao();
		System.out.println(categoryDao.editCategory(id, value));
		if (categoryDao.editCategory(id, value) > 0) {
			response.sendRedirect(request.getContextPath() + "/quan-ly-danh-muc?msg=2");
			return;

		}
		RequestDispatcher rd = request.getRequestDispatcher("admin/category/edit.jsp?error=2");
		rd.forward(request, response);

	}

}
