package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Category;
import model.bean.Products;
import model.bean.Users;
import model.dao.CategoryDao;
import model.dao.ProductsDao;
import util.FileUtil;

/**
 * Servlet implementation class AdminEditProductController
 */
@MultipartConfig
public class AdminEditProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminEditProductController() {
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
		ProductsDao productDao = new ProductsDao();
		Products proById = productDao.getProductById(id);
		CategoryDao catDao = new CategoryDao();
		ArrayList<Category> cats = catDao.getAllCategory();
		request.setAttribute("proById", proById);
		request.setAttribute("allCat", cats);
		RequestDispatcher rd = request.getRequestDispatcher("/admin/product/edit.jsp");
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
		ProductsDao productDAO = new ProductsDao();
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		int cat = Integer.parseInt(request.getParameter("cat"));
		String fileName = FileUtil.upload("picture", request);
		Double price = Double.parseDouble(request.getParameter("price"));
		Double discount = Double.parseDouble(request.getParameter("discount"));
		String des = request.getParameter("des");

		Products product = new Products(id, cat, name, des, price, discount, fileName);
		System.out.println(product);
		if (productDAO.editProduct(product) > 0) {
			response.sendRedirect(request.getContextPath() + "/quan-ly-san-pham?msg=2");
			return;
		}
		RequestDispatcher rd = request.getRequestDispatcher("/admin/product/edit.jsp?error=2");
		rd.forward(request, response);

	}

}
