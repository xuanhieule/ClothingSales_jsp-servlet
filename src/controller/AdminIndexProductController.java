package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Category;
import model.bean.Products;
import model.bean.Users;
import model.dao.CategoryDao;
import model.dao.ProductsDao;
import util.DefineUtil;

/**
 * Servlet implementation class AdminIndexProductController
 */
@WebServlet("/AdminIndexProductController")
public class AdminIndexProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminIndexProductController() {
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

		ProductsDao proDao = new ProductsDao();
		int numberOfItem = proDao.numberOfItems();
		int numberOfPages = (int) Math.ceil((float) numberOfItem / DefineUtil.NUMBER_PER_PAGE);

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
		// lấy hết category và products
		CategoryDao categoryDao = new CategoryDao();
		ArrayList<Category> allCat = categoryDao.getAllCategory();

		if (proDao.getAllProducts(offset) != null) {
			ArrayList<Products> listProduct = proDao.getAllProducts(offset);
			request.setAttribute("numberOfPages", numberOfPages);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("listProduct", listProduct);
			request.setAttribute("allProducts", listProduct);
		}

		// xét thuộc tính user
		request.setAttribute("allCat", allCat);

		// chuyển thuộc tính sang jsp
		RequestDispatcher rd = request.getRequestDispatcher("admin/product/index.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
