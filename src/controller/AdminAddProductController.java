package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Category;
import model.bean.Products;
import model.dao.CategoryDao;
import model.dao.ProductsDao;
import util.FileUtil;

/**
 * Servlet implementation class AdminAddProductController
 */
@MultipartConfig
public class AdminAddProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		CategoryDao catDao = new CategoryDao();
		ArrayList<Category> cats = catDao.getAllCategory();
		request.setAttribute("allCat", cats);
		RequestDispatcher rd = request.getRequestDispatcher("/admin/product/add.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		ProductsDao productDAO = new ProductsDao();
		String name = request.getParameter("name");
		int cat = Integer.parseInt(request.getParameter("cat"));
		String fileName = FileUtil.upload("picture", request);
		Double price = Double.parseDouble(request.getParameter("price"));
		Double discount = Double.parseDouble(request.getParameter("discount"));
		String des = request.getParameter("des");
		
		System.out.println("cat: "+ cat);
		Products product = new Products(cat, name,des, price, discount, fileName);
		System.out.println("pro: "+ product);
		if (productDAO.addProduct(product) > 0) {
			response.sendRedirect(request.getContextPath() + "/quan-ly-san-pham");
			return;
		}
		request.setAttribute("error", "Có lỗi xảy ra, thêm thất bại");
		RequestDispatcher rd = request.getRequestDispatcher("/admin/product/add.jsp");
		rd.forward(request, response);

	}
}
