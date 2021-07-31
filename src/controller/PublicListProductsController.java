package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Products;
import model.dao.ProductsDao;
import util.DefineUtil;

/**
 * Servlet implementation class PublicListProductsController
 */

public class PublicListProductsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PublicListProductsController() {
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
		int id = Integer.parseInt(request.getParameter("id"));
		ProductsDao proDao = new ProductsDao();

		// Pageination
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

		if (proDao.getProductsByCategoryPagination(id, offset) != null) {
			ArrayList<Products> listProduct = proDao.getProductsByCategoryPagination(id, offset);

			request.setAttribute("numberOfPages", numberOfPages);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("listProduct", listProduct);
			RequestDispatcher rd = request.getRequestDispatcher("/public/shop.jsp");
			rd.forward(request, response);
		} else {
			String pronull = "Hiện tại không có sản phẩm nào!!!";
			request.setAttribute("listProduct", pronull);
			RequestDispatcher rd = request.getRequestDispatcher("/public/shop.jsp");
			rd.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
