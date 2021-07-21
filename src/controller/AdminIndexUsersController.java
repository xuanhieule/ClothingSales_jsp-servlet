package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Users;
import model.dao.UsersDao;

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
		// lấy hết user
		UsersDao userDao  = new UsersDao();
		ArrayList<Users> allUser = userDao.getAllUsers();
		
		// xét thuộc tính user
		request.setAttribute("allUser", allUser);
		
		// chuyển thuộc tính sang jsp
		RequestDispatcher rd = request.getRequestDispatcher("admin/index.jsp");
		rd.forward(request, response);
		
	}

}
