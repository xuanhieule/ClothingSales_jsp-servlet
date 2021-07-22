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

import model.bean.Products;
import model.dao.ProductsDao;

/**
 * Servlet implementation class PublicDetailProductController
 */
@WebServlet("/PublicDetailProductController")
public class PublicDetailProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<Products> listProductRecent = new ArrayList<Products>(); 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublicDetailProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(request.getParameter("id"));
		ProductsDao proDao = new ProductsDao();
		Products infor = proDao.getProductById(id);
		if(listProductRecent.size()>0) {
			boolean check= true;
			for(Products procheck: listProductRecent) {
				if(procheck.getId() == id) {
					check=false;
					break;
				}
			}
			if(check==true) listProductRecent.add(infor);
		}
		else {
			listProductRecent.add(infor);
		}
		request.setAttribute("infor", infor);
		HttpSession session = request.getSession();
		session.setAttribute("listRecent", listProductRecent);
		RequestDispatcher rd = request.getRequestDispatcher("/public/shop-single.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
	}

}
