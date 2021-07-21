package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Category;
import model.dao.CategoryDao;

/**
 * Servlet implementation class AdminAddCategoryController
 */
@WebServlet("/AdminAddCategoryController")
public class AdminAddCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddCategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");

		CategoryDao categoryDao  = new CategoryDao();
		Category temp = new Category(name);
		if(categoryDao.addCategory(temp) >0) {
			response.sendRedirect(request.getContextPath() + "/quan-ly-danh-muc");
			return;
		}else {
			String error = "Thêm thất bại";
			request.setAttribute("status", error);
			RequestDispatcher rd = request.getRequestDispatcher("admin/category/add.jsp");
			rd.forward(request, response);
		}

//		
//		// chuyển thuộc tính sang jsp
//		RequestDispatcher rd = request.getRequestDispatcher("admin/category/index.jsp");
//		rd.forward(request, response);
	}

}
