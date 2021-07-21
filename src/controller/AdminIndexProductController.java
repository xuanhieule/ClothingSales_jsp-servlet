package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Category;
import model.bean.Products;
import model.dao.CategoryDao;
import model.dao.ProductsDao;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		// lấy hết category và products
		CategoryDao categoryDao  = new CategoryDao();
		ArrayList<Category> allCat = categoryDao.getAllCategory();
		ProductsDao productsDao = new ProductsDao();
		ArrayList<Products> allProducts = productsDao.getAllProducts();
		
		// xét thuộc tính user
		request.setAttribute("allCat", allCat);
		request.setAttribute("allProducts", allProducts);
		
		// chuyển thuộc tính sang jsp
		RequestDispatcher rd = request.getRequestDispatcher("admin/product/index.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
